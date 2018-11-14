# Evan Cole, August 2018
# Yacht Rock data collection script
# fun little data project where I collect information on the songs being played on SiriusXM's yacht rock radio, and compare that to the list of "certified" Yacht Rock songs
# inspired by @HookSlide23's project - he's done the same thing, but for about a 2-week span + no data analysis; I want my project to be more long-term and include data analysis

import requests
import json
import datetime
import time
import psycopg2
import psycopg2.extras
import os

# returns the full SiriusXM url for parsing by getting the current timestamp (in the form Sirius uses for their Metadata URL) and appending it to the base url
def get_url(base_url):
    now = datetime.datetime.utcnow().strftime('%m-%d-%H:%M:%S')
    return base_url + now

# scrapes SiriusXM metadata page for a JSON object, which we then use to get the song and artist currently being played
# returns artist and song currently being played - unless the JSON is not complete, in which case None is returned for both
def getInfo(url):
    r = requests.get(url)
    data = json.loads(r.text)
    responseCode = data['channelMetadataResponse']['messages']['code']
    if responseCode == 100: # song data is available
        artist = str(data['channelMetadataResponse']['metaData']['currentEvent']['artists']['name'])
        song = str(data['channelMetadataResponse']['metaData']['currentEvent']['song']['name'])
    else:
        artist = None
        song = None
    return artist, song

# does the necessary database operations for a new song being played
def processDB(cur,song,artist):
		# check if song already in db
        cur.execute("""SELECT id,plays FROM song WHERE LOWER(title)=(%s) AND LOWER(artist)=(%s)""",(song.lower(),artist.lower(),))
        result = cur.fetchone()
        if result: # entry already exists
            cur.execute("""UPDATE song SET plays=(%s) WHERE id=(%s)""",(result['plays']+1,result['id'])) # increment play count
        else:
            cur.execute("""INSERT INTO song (title,artist,plays) VALUES (%s,%s,%s)""",(song,artist,1)) # add new row

# these variables are global in case the database loses connection and manages to reconnect before a song finishes
# if these were inside driver(), it'd go out of scope in the case of a disconnect and we'd lose whatever song was currently playing, possibly causing superfluous play counts
currentArtist = None 
currentSong = None

# driver for primary functionality
def driver(cur):
    base_url = "https://www.siriusxm.com/metadata/pdt/en-us/json/channels/9420/timestamp/"
    global currentArtist
    global currentSong
    failedRequests = 0
    while True:
        url = get_url(base_url) # get timestamped url
        try:
            artist, song = getInfo(url) # scrape for currently playing artist and song info
            if failedRequests > 0: # 
                print('Re-request was successful.')
                failedRequests = 0
        except requests.exceptions.RequestException as e: # something went wrong trying to get to the Sirius page
            if failedRequests < 1: # first failure
                print('SCRAPING ERROR:',e)
                print('Will attempt to re-request every 30 seconds for the next 3 minutes, after which the script will time out.')
            else: # subsequent failures
                if failedRequests > 7: # timeout - end script
                    print('Request has timed out, exiting script.')
                    exit()
            failedRequests += 1 
            time.sleep(30)
            continue
        
        if artist is not None and song is not None:
        	# @YachtRockSXM - Yacht Rock are channel bumpers so ignore them
            newSong = artist != '@YachtRockSXM' and song != 'Yacht Rock' and artist != currentArtist and song != currentSong
            if newSong: # song has changed
                currentArtist = artist
                currentSong = song
                try:
                    processDB(cur,currentSong,currentArtist) # add/update database
                except AttributeError: # weird JSON parsing error happened one time (extracted the artist and/or song as a int 0 - so checking if this happens again)
                    print('JSON parsing funny business:',artist,'-',song)
                    continue
                currentTime = datetime.datetime.now().strftime("%m/%d/%Y, %I:%M:%S %p")
                print(currentTime + ':',currentArtist,'-',currentSong)
                time.sleep(60) # check Sirius's site every minute

# overall driver - separating the low-level database connection stuff from the functionality
def main():
    connected = True
    start_timeout = 0

    host = os.environ.get('db_host')
    user = os.environ.get('db_user')
    password = os.environ.get('db_password')
    while True:
        try:
        	# to do: get rid credential arguments
            conn = psycopg2.connect(host=host,user=user,password=password,dbname='yacht_rock',port=5432)
            conn.autocommit=True
            cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
            if not connected: # db reconnected 
                print('Reconnected.')
                connected = True
            driver(cur) # where all the good stuff happens
        except psycopg2.OperationalError as e: # db connection error
            if connected: # initial disconnect
                print('DATABASE ERROR:',e)
                print('Will attempt to reconnect for 3 minutes, after which the script will time out.')
                connected = False
                start_timeout = time.time() # start timer
            else:
                elapsed_timeout = time.time() - start_timeout() # time since disconnect
                if elapsed_timeout > 300: # 5 minutes without reconnect has passed - exit
                    print('Database reconnect has timed out, exiting script.')
                    exit()   
#main()

def test():
    base_url = "https://www.siriusxm.com/metadata/pdt/en-us/json/channels/9420/timestamp/"
    last_update = None
    while True:
        if last_update is None or time.time() - last_update >= 60:
            url = get_url(base_url)
            artist,song = getInfo(url)
            last_update = time.time()
            print(datetime.datetime.utcnow().strftime("%m/%d/%Y, %I:%M:%S %p") + ':',artist,'-',song)
test()
