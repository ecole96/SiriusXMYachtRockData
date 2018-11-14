--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: song; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.song (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    artist character varying(100) NOT NULL,
    yachtski real,
    plays smallint
);


ALTER TABLE public.song OWNER TO postgres;

--
-- Name: song_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.song_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.song_id_seq OWNER TO postgres;

--
-- Name: song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.song_id_seq OWNED BY public.song.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song ALTER COLUMN id SET DEFAULT nextval('public.song_id_seq'::regclass);


--
-- Data for Name: song; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.song (id, title, artist, yachtski, plays) FROM stdin;
1	Dreadlock Holiday	10cc	14.5	75
2	I'm Not In Love	10cc	26.25	32
3	Don't Turn Me Away	10cc	49.75	0
4	The Things We Do For Love                                                  	10cc                                                                       	\N	32
5	The Name of the Game	Abba	19.5	0
6	How Long                                                                   	Ace                                                                        	53	164
7	The Wonder of it All	Adrian Gurvitz	65.25	0
8	The Way I Feel	Adrian Gurvitz	61.75	0
9	Even The Nights Are Better	Air Supply	31.5	72
10	All Out Of Love	Air Supply	15	61
11	Nothin' You Can Do About It	Airplay	96.75	0
12	I Sing	Akiko Yano	42.5	0
13	Someday My Prince May Come	Akiko Yano	41	0
14	We're In This Love Together	Al Jarreau	80.75	68
15	Mornin'	Al Jarreau	92.75	0
16	Breakin' Away	Al Jarreau	81.25	0
17	Boogie Down	Al Jarreau	81	0
18	Moonlighting	Al Jarreau	59	0
19	Raging Waters	Al Jarreau	40.5	0
20	Wait A Little While                                                        	Al Jarreau                                                                 	\N	29
21	(Theme From) Moonlighting                                                  	Al Jarreau                                                                 	\N	26
22	Since I Fell For You	Al Jarreau, Bob James & David Sanborn	21.25	0
23	Time Passages	Al Stewart	35.75	31
24	Year of the Cat	Al Stewart	29.25	23
25	Show and Tell	Al Wilson	14.75	32
26	Diary of A Fool	Alan Gorrie	44.25	0
27	People Who Talk to Themselves	Alan O'Day	65	0
28	Undercover Angel	Alan O'Day	43	0
29	Beside You	Alan Sorrenti	82	0
30	Thicke of the Night	Alan Thicke	68.25	0
31	Jagged Edge	Alessi Brothers	87.75	0
32	Seabird	Alessi Brothers	28	0
33	From the Inside	Alice Cooper	36.875	0
34	Biggest Part of Me	Ambrosia	72.5	172
35	How Much I Feel	Ambrosia	60	163
36	You're the Only Woman	Ambrosia	69	58
37	How Can You Love Me	Ambrosia	66.5	0
38	Nice, Nice, Very Nice	Ambrosia	26.25	0
39	Arbuckle's Swan Song	Ambulance LTD	30	0
40	You Can Do Magic	America	38.25	159
41	A Horse With No Name	America	9.25	60
42	Ventura Highway	America	8.875	59
43	Daisy Jane	America	15.75	21
44	Right Before Your Eyes	America	43.25	0
45	The Border	America	38.25	0
46	Sister Golden Hair                                                         	America                                                                    	5.25	161
47	(I Hang) On Your Every Word	Amy Holland	66.5	0
48	Lonely Boy	Andrew Gold	29.5	31
49	Thank You For Being A Friend	Andrew Gold	34.75	0
50	I Go For You	Andy Gibb	32.25	0
51	When I Can't Have You	Anne Murray	57.25	0
52	Shadows In The Moonlight                                                   	Anne Murray                                                                	\N	31
53	Take It Easy	Archie James Cavanaugh	43.25	0
54	What A Fool Believes	Aretha Franklin	62.75	0
55	In A Little While (I'll Be On My Way)	Art Garfunkel	67.25	0
56	Sail On A Rainbow	Art Garfunkel	58.25	0
57	So Into You	Atlanta Rhythm Section	69.5	71
58	Alien	Atlanta Rhythm Section	45	0
59	Spooky                                                                     	Atlanta Rhythm Section                                                     	23.5	30
60	Change	Attitudes	74.25	0
61	Shine	Average White Band	85.25	0
62	(I Could Never Say) It's Over	B.B.&Q. Band	76	0
63	The Part You Play	Baby Teeth	9.75	0
64	Sailin' On	Bad Brains	2.4749999	0
65	Splish Splash	Barbra Streisand	34	0
66	I Found You Love	Barbra Streisand	24.75	0
67	Guilty	Barbra Streisand & Barry Gibb	60.25	0
68	Let's Get On With It	Barry Manilow	75.25	0
69	Jane	Ben Folds Five	18	0
70	Come Back	Benny Hester	71.5	0
71	Step By Step	Benny Hester	66	0
72	Into The Night	Benny Mardones	34.75	157
73	Key Largo	Bertie Higgins	39.75	74
74	Just Another Day in Paradise	Bertie Higgins	29.5	0
75	Just Another Day In Paradise                                               	Bertie Higgins                                                             	\N	69
76	Take It Uptown	Bill Champlin	62	28
77	Runaway	Bill Champlin	91.25	0
78	I Don't Want You Anymore	Bill Champlin	88.75	0
79	One Way Ticket	Bill Champlin	76.5	0
80	Dream On	Bill LaBounty	90	0
81	Livin' It Up	Bill LaBounty	87.75	0
82	Look Who's Lonely Now	Bill LaBounty	86	0
83	Just the Two Of Us	Bill Withers	71.75	72
84	Lovely Day	Bill Withers	59.25	0
85	Caribbean Queen	Billy Ocean	48.75	75
86	Rock-A-Bye Baby	Billy Ocean	58.5	0
87	In Thee	Blue Oyster Cult	14.5	0
88	Ride Captain Ride	Blues Image	15.5	0
89	Ride Captain Ride                                                          	Blues Image                                                                	\N	70
90	Angela	Bob James	52.25	0
91	Heaven Help The Fool	Bob Weir	44.5	0
92	Bombs Away	Bob Weir	33.5	0
93	Don't Let Me Fail	Bob Welch	56.75	0
94	Sentimental Lady                                                           	Bob Welch                                                                  	\N	32
95	What You Won't Do for Love	Bobby Caldwell	73.5	163
96	Coming Down From Love	Bobby Caldwell	81.25	0
97	Can't Say Goodbye	Bobby Caldwell	77.5	0
98	Fraulein	Bobby Caldwell	69	0
99	Show Me The Light	Bobby Martin	87.5	0
100	You've Really Got A Hold On Me	Bobby McFerrin	27.75	0
101	I'll Put Some Love	Booker T. Jones	77.75	0
102	Jojo	Boz Scaggs	71.25	167
103	Lowdown	Boz Scaggs	89	155
104	Lido Shuffle	Boz Scaggs	47.5	52
105	Simone	Boz Scaggs	75.25	0
106	Miss Sun	Boz Scaggs	53.75	0
107	Look What You've Done to Me	Boz Scaggs	53	0
108	Georgia                                                                    	Boz Scaggs                                                                 	\N	61
109	Baby I'm-A Want You	Bread	15.25	69
110	Make It With You                                                           	Bread                                                                      	\N	66
111	The Guitar Man                                                             	Bread                                                                      	\N	32
112	One Out Of Two	Breakbot	58.25	0
113	Hello People	Brenda Russell	84	0
114	Lucky	Brenda Russell	75.75	0
115	New York Bars	Brenda Russell	75.25	0
116	Two Eyes	Brenda Russell	63.75	0
117	Room To Grow	Brian Elliot	54.75	0
118	On the Clock	Bronze	50.75	0
119	I Won't Let Go	Brooklyn Dreams	75.5	0
120	Sad Eyes	Brooklyn Dreams	45.5	0
121	Summertime	Brother Love	5.75	0
122	Never Turnin' Back	Bruce Hibbard	62.5	0
123	Mandolin Rain	Bruce Hornsby	15.5	0
124	Cool Fool	Bruce Roberts	64.75	0
125	Straight Up & Down	Bruno Mars	4.5	0
126	Keep On Running	Byrne & Barnes	83.5	0
127	Love You Out of Your Mind	Byrne & Barnes	81.25	0
128	Right Through the Heart	Byrne & Barnes	72	0
129	Wing and A Prayer	Camel	32.5	0
130	Love Will Keep Us Together	Captain & Tenille	51.75	0
131	No Love In the Morning	Captain & Tenille	31.75	0
132	Of The Times	Carl Wilson	36.25	0
133	Nobody Does it Better	Carly Simon	17.5	0
134	You're So Vain                                                             	Carly Simon                                                                	\N	25
135	Stronger Than Before	Carol Bayer Sager	55	0
136	Lucky One (New York Boy)	Carrera	68.25	0
137	Through the Fire	Chaka Khan	81.5	0
138	How 'Bout Us                                                               	Champaign                                                                  	\N	70
139	Listen! (I Just Want You)	Charlie Dore	44.75	0
140	Messin' With The Boys	Cherie and Marie Currie	30.25	0
141	Sonny Think Twice	Chicago	60.5	0
142	Bad Advice	Chicago	41.25	0
143	Hard For Me to Say I'm Sorry	Chicago	32.75	0
144	Baby, What A Big Surprise                                                  	Chicago                                                                    	\N	66
145	Saturday In The Park                                                       	Chicago                                                                    	\N	34
146	If You Leave Me Now                                                        	Chicago                                                                    	\N	28
147	No Tell Lover                                                              	Chicago                                                                    	\N	27
148	I Believe	Chilliwack	45	74
149	My Girl (Gone, Gone, Gone)	Chilliwack	36.5	0
150	My Girl  (Gone, Gone, Gone)                                                	Chilliwack                                                                 	\N	69
151	Runnin' Around	China	74.25	0
152	You Did Cut Me	China Crisis	54	0
153	Don`t Give Up On Us	Chris Christian & Christopher Cross	75.25	0
154	Fool If You Think It's Over	Chris Rea	40	0
155	Sailing	Christopher Cross	94.5	154
156	Arthur's Theme (Best You Can Do)	Christopher Cross	56.25	70
157	All Right	Christopher Cross	93.5	58
158	Never Be The Same	Christopher Cross	91	47
159	I Really Don't Know Anymore	Christopher Cross	89.5	0
160	Ride Like the Wind                                                         	Christopher Cross                                                          	93.75	162
161	Feels So Good	Chuck Mangione	44.5	73
162	Cannonball Run Theme	Chuck Mangione	35.5	36
163	Didn't Wanna Hurt Cha For Another Guy	Chunky, Novi & Ernie	62.5	0
164	Devil Woman	Cliff Richard	21	71
165	We Don't Talk Anymore	Cliff Richard	47.5	24
166	Couldn't Get It Right	Climax Blues Band	37.25	73
167	I Love You	Climax Blues Band	19.25	27
168	Sail On	Commodores	40	68
169	Nightshift	Commodores	38.5	0
170	High On Sunshine                                                           	Commodores                                                                 	\N	30
171	California 1	Con Funk Shun	45.5	0
172	On The Wing	Crackin'	59.25	0
173	Since I Met You	Crosby, Stills & Nash	36.25	0
174	Southern Cross	Crosby, Stills & Nash	31.25	0
175	Just a Song Before I Go	Crosby, Stills & Nash	11.5	0
176	Street Life	Crusaders	47.25	0
177	Tripping Out	Curtis Mayfield	24	0
178	Fragments of Time	Daft Punk	67.75	0
179	Heart Hotels	Dan Fogelberg	34.25	32
180	Missing You	Dan Fogelberg	51.5	0
181	I Can Dream About You	Dan Hartman	29.75	0
182	Instant Replay	Dan Hartman	10.25	0
183	Can't Be Seen	Dane Donohue	85	0
184	Woman	Dane Donohue	81.5	0
185	Love Now	Danny Douma	46.5	0
186	Huggin	Dara Sedaka	75.25	0
187	Sara Smile	Daryl Hall & John Oates	32	67
188	She's Gone	Daryl Hall & John Oates	42.75	64
189	Times Up	Daryl Hall & John Oates	54.25	0
190	Private Eyes	Daryl Hall & John Oates	45	0
191	I Can't Go For That (No Can Do)	Daryl Hall & John Oates	42.75	0
192	Rich Girl	Daryl Hall & John Oates	37	0
193	Gino (The Manager)	Daryl Hall & John Oates	32.25	0
194	Camelia	Daryl Hall & John Oates	31.75	0
195	Maneater	Daryl Hall & John Oates	24.25	0
196	You're Much Too Soon	Daryl Hall & John Oates	21.75	0
197	Kiss On My List                                                            	Daryl Hall & John Oates                                                      	\N	74
198	Rich Girl                                                                  	Daryl Hall & John Oates                                                      	\N	67
199	Adult Education                                                            	Daryl Hall & John Oates                                                      	\N	35
200	Method Of Modern Love                                                      	Daryl Hall & John Oates                                                      	\N	28
201	I Can't Go For That (No Can Do)                                            	Daryl Hall & John Oates                                                           	\N	71
202	Haunting Me	Dave Grusin	70	0
203	One Way Ticket to Paradise	Dave Loggins	58.25	0
204	The Fool In Me	Dave Loggins	57.25	0
205	Please Come To Boston                                                      	Dave Loggins                                                               	\N	30
206	Save Me	Dave Mason	54.75	0
207	We Just Disagree                                                           	Dave Mason                                                                 	\N	31
208	She's Got To Be Somewhere	David Crosby	58.75	0
209	She Don't	David Pack	64.5	0
210	Ask Me to Say "I Do" (And I Will)	David Pomeranz	68	0
211	Boys of Autumn	David Roberts	87.875	0
212	Wrong Side of the Tracks	David Roberts	79.5	0
213	Too Good To Last	David Roberts	64.75	0
214	Anything You Want	David Sanborn	63.5	0
215	Eye Know	De La Soul	20	0
216	Queen Of My Heart	DeBarge	67.5	0
217	Saving Up All My Love	DeBarge	57	0
218	Who's Holding Donna Now	DeBarge	45.5	0
219	I Like It	DeBarge	45	0
220	Be Yourself	Debra Laws	50	0
221	Tahiti Hut	Deodato	45.5	0
222	Just This One Night	Deodato	44.25	0
223	That's How You Start Over	Diana Ross	90.5	0
224	Love Will Make It Right	Diana Ross	54.25	0
225	Mon Ami-e	Diane Tell	74.5	0
226	Deja Vu	Dionne Warwick	51.25	0
227	Easy Love	Dionne Warwick	46	0
228	Take The Short Way Home	Dionne Warwick	45.25	0
229	Got You Where I Want You	Dionne Warwick & Johnny Mathis	62.5	0
230	Drift Away	Dobie Gray	4.5	75
231	Same Old Fool	Dolly Parton	75	0
232	Don't Lose Your Love	Don Brown	33	0
233	I.G.Y.	Donald Fagen	65	69
234	Tomorrow's Girls	Donald Fagen	63.75	0
235	New Frontier	Donald Fagen	59	0
236	Ms. Marlene	Donald Fagen	52.5	0
237	Security Joan	Donald Fagen	52	0
238	Snowbound	Donald Fagen	46.5	0
239	Livin' In America	Donna Summer	45.25	0
240	State of Independence	Donna Summer	26.25	0
241	Baby	Donnie & Joe Emerson	24.75	0
242	The Captain of Her Heart	Double	22.5	0
243	When You're In Love With A Beautiful Woman	Dr. Hook	21.25	67
244	Sexy Eyes                                                                  	Dr. Hook                                                                   	\N	70
245	Better Love Next Time                                                      	Dr. Hook                                                                   	\N	67
246	Closet Man	Dusty Springfield	70.75	0
247	Lovin' and Losin' You	Dwayne Ford	89.75	0
248	Adventures In The Land Of Music	Dynasty	40.25	0
249	Tequila Sunrise	Eagles	4.5	67
250	One of These Nights	Eagles	23.75	62
251	I Can't Tell You Why	Eagles	41.5	58
252	Hotel California	Eagles	7.16499996	0
253	Best Of My Love                                                            	Eagles                                                                     	\N	24
254	The Long Run                                                               	Eagles                                                                     	\N	23
255	Star	Earth, Wind & Fire	45.25	0
256	Maybe I'm a Fool	Eddie Money	34.5	34
257	Suspicions	Eddie Rabbitt	54.25	0
258	Step by Step	Eddie Rabbitt	32.5	0
259	Give Me The Love	Elton John	59.5	0
260	Little Jeannie	Elton John	42.75	0
261	I'd Really Love to See You Tonight	England Dan Seals & John Ford Coley	44	67
262	Caught Up in the Middle	England Dan Seals & John Ford Coley	79.25	0
263	Nights Are Forever Without You                                             	England Dan Seals & John Ford Coley                                          	\N	66
264	Change of Heart	Eric Carmen	70.75	0
265	Make Me Lose Control                                                       	Eric Carmen                                                                	\N	27
266	No One There	Eric Tagg	85.25	0
267	You're Good For Me	Exile	84	0
268	Kiss You All Over	Exile	21.75	0
269	Falling For A Funny One	Eye To Eye	50	0
270	But Not For You	Field Music	5.25	0
271	Just Remember I Love You	Firefall	17.25	72
272	You Are the Woman	Firefall	28.5	67
273	Dreams	Fleetwood Mac	32	69
274	You Make Loving Fun	Fleetwood Mac	34.25	67
275	Everywhere	Fleetwood Mac	17.75	65
276	Hold Me	Fleetwood Mac	32.5	0
277	Little Lies	Fleetwood Mac	17	0
278	Gypsy                                                                      	Fleetwood Mac                                                              	\N	61
279	Rhiannon                                                                   	Fleetwood Mac                                                              	\N	60
280	Mr. Lucky	Fools Gold	36.25	0
281	Waiting For A Girl Like You	Foreigner	32.5	0
282	Follow the Leader	Foxygen	25.5	0
283	Moody Girl	Frank Stallone	62.5	0
284	Love is Like a Light	Frank Stallone	61.5	0
285	I'm Never Gonna Give You Up	Frank Stallone	42	0
286	Complicated Times	Frank Weber	52.25	0
287	Sweetheart	Franke & The Knockouts	65	0
288	Come Rain or Shine	Franke & The Knockouts	61	0
289	A Bigger Fool	Fred Knoblock	66.75	0
290	Hubbard's Cupboard	Freddie Hubbard	28.25	0
291	Ride Like the Wind	Freddie Hubbard	26	0
292	Phantom of the Footlights	Full Moon & Larsen/Feiten Band	79	0
293	You Should've Been There	Future Flight	69	0
294	Crazy Love Games	Gary	33.75	0
295	Everybody Knows Your Name	Gary Portnoy	24.5	0
296	Just Gets Better With Time	Gary Taylor	74.75	0
297	Dream Weaver	Gary Wright	32.25	32
298	Close To You	Gary Wright	66.5	0
299	Really Wanna Know You	Gary Wright	37.75	0
300	Love Is Why	Gary Wright	36.75	0
301	I Can Feel You Cryin	Gary Wright	29.75	0
302	Love Is Alive                                                              	Gary Wright                                                                	\N	28
303	Misunderstanding	Genesis	43.5	0
304	That's All	Genesis	24.25	0
305	Give Me the Night	George Benson	\N	73
306	Breezin'	George Benson	77.5	72
307	Turn Your Love Around	George Benson	94.25	0
308	Lady Love Me	George Benson	81.25	0
309	Breezin' 2006	George Benson & Al Jarreau	44	0
310	You	George Duke	87.75	0
311	Pure Smokey	George Harrison	49.5	0
312	Careless Whisper	George Michael	19.25	0
313	Baker Street	Gerry Rafferty	29.25	164
314	Right Down the Line	Gerry Rafferty	32.25	161
315	Island                                                                     	Gerry Rafferty                                                             	\N	31
316	Je Reviens	Gilles Rivard	58.5	0
317	I Just Wanna Stop	Gino Vannelli	44.25	166
318	Living Inside Myself	Gino Vannelli	56.75	0
319	Nightwalker	Gino Vannelli	55	0
320	Southern Nights	Glen Campbell	32.5	0
321	The One You Love                                                           	Glenn Frey                                                                 	\N	32
322	Don't Look Down	Go West	41	0
323	Goin Down	Greg Guidry	76.25	0
324	Lazy Nina	Greg Phillinganes	73.75	0
325	Cryin' Shame	Gregg Allman Band	55.5	0
326	Shake You Down	Gregory Abbott	23.5	0
327	Sinbad	Grimaldi/Zeiher	52.25	0
328	Follow You Home	Heat	65.5	0
329	I Get It From You	Herb Alpert	55	0
330	Rise	Herb Alpert	43.75	0
331	Route 101                                                                  	Herb Alpert                                                                	\N	72
332	Paradise	Herbie Hancock	78	0
333	Say Goodbye	Hiroshi Satoh	42.25	0
334	Some Children	Holy Ghost!	28.25	0
335	So You Win Again	Hot Chocolate	39.75	0
336	Rock The Boat	Hues Corporation	18	69
337	Do You Believe In Love	Huey Lewis & the News	23.5	0
338	Stuck With You	Huey Lewis & the News	9.57499981	0
339	Gimme an Inch Girl	Ian Matthews	48.75	0
340	Shake It	Ian Matthews	38.5	0
341	I Am the One	Ian Thomas	70	0
342	Hold On	Ian Thomas	31	0
343	Any Good Time At All	Imperials	53.25	0
344	All I Need	Jack Wagner	21.75	0
345	Running On Empty	Jackson Browne	26.5	0
346	Somebody's Baby                                                            	Jackson Browne                                                             	49.75	73
347	Old Jack Magnet	Jakob Magnusson	53.75	0
348	Yah-Mo Be There	James Ingram & Michael McDonald	78.25	84
349	Her Town Too	James Taylor	26.25	31
350	Your Smiling Face	James Taylor	45.5	0
351	Space Cowboy	Jamiroquai	35.25	0
352	She's So Divine	Jan Akkerman	38.75	0
353	Don't You Know                                                             	Jan Hammer Group                                                           	\N	26
354	Scene 29	JaR	50	0
355	Thunder Island	Jay Ferguson	45	69
356	Shakedown Cruise	Jay Ferguson	17.5	0
357	Love is Cold	Jay Ferguson	13.25	0
358	Can't Hide Love	Jaye P. Morgan	57.5	0
359	Come Dancing	Jeff Beck	29.75	0
360	Its a Fact	Jeff Lorber	59.25	0
361	Miracles	Jefferson Starship	40.25	0
362	Runaway	Jefferson Starship	8.25	0
363	New Love	Jeffery Osborne	75	0
364	When the Feeling Comes Around	Jennifer Warnes	27.5	0
365	You Like Me Don't You	Jermaine Jackson	65.25	0
366	Let's Get Serious	Jermaine Jackson	17	0
367	Fire On The Water	Jesse Colin Young	62.75	0
368	Slow and Easy	Jesse Colin Young	36.5	0
369	That's Love	Jim Capaldi	31.75	0
370	Fool In Love With You	Jim Photoglo	88.25	0
371	Steal Away	Jim Photoglo	65.5	0
372	We Were Meant to Be Lovers	Jim Photoglo	42.75	0
373	Margaritaville	Jimmy Buffett	2.75	0
374	I'm Happy That Love Has Found You	Jimmy Hall	81	0
375	Money Alone	Jimmy Messina	63	0
376	We Got to Get Back	Jimmy Messina	60.5	0
377	New and Different Way	Jimmy Messina	56.5	0
378	Ginny's Song	Jimmy Thudpucker	48.5	0
379	I'll Be That Friend	Jodie Abacus	27.5	0
380	So Good So Right	Joe Cocker	50	0
381	Steppin Out	Joe Jackson	35.5	32
382	In All My Wildest Dreams	Joe Sample	24.25	0
383	Theme from "Greatest American Hero" (Believe It Or Not)	Joey Scarbury	56.25	0
384	Gimme Your Love	John Denver	18.5	0
385	Love You Like I Never Loved You Before	John O'Banion	81.5	0
386	St. Elmo's Fire	John Parr	35.25	0
387	Simple	Johnny Mathis	65.75	0
388	Without Us	Johnny Mathis & Deniece Williams	60.5	0
389	I Can See Clearly	Johnny Nash	12	0
390	Hold On To Love	Jon Anderson	49	0
391	Ladies Man	Joni Mitchell	26.75	0
392	Walks Like A Lady	Journey	14	0
393	The Hurt	Kalapana	46	0
394	All I Wanted	Kansas	3.95000005	0
395	I've Been Played The Fool Again	Karizma	83	0
396	Personally	Karla Bonoff	47.75	0
397	Edgartown Groove	Kashif	29.5	0
398	Blame It On The One	Kelly Willard	81.25	0
399	This is It	Kenny Loggins	98.25	158
400	Heart to Heart	Kenny Loggins	99.625	18
401	I Gotta Try	Kenny Loggins	83.25	11
402	Who's Right, Who's Wrong	Kenny Loggins	96.125	0
403	Keep The Fire	Kenny Loggins	54	0
404	Sweet Reunion	Kenny Loggins	46.25	0
405	I Believe In Love                                                          	Kenny Loggins                                                              	\N	59
406	I'm Alright                                                                	Kenny Loggins                                                              	\N	21
407	Love Has Come Of Age                                                       	Kenny Loggins                                                              	\N	14
408	Whenever I Call You Friend	Kenny Loggins & Stevie Nicks	71.75	23
409	Heart To Heart	Kenny Rogers	70	0
410	Somebody Took My Love	Kenny Rogers	68	0
411	You're My Love	Kenny Rogers	56.75	0
412	Islands in the Stream	Kenny Rogers & Dolly Parton	39.75	0
413	Never Gonna Give You Up	Kere Buchanan	58.25	0
414	Ain't Nothin' For a Heartache	Kerry Chater	91	0
415	Shandi	Kiss	20.5	0
416	Caravan	Kitaro & Pages	16.75	0
417	We Know the Way by Heart	Koinonia	43.5	0
418	Too Hot	Kool & the Gang	54.75	0
419	On The Run	Lake	13.5	0
420	Room 335	Larry Carlton	69.5	0
421	Where Did You Come From	Larry Carlton	62	0
422	Sleep On It	Larry John McNally	62.5	0
423	Don't Talk	Larry Lee	88.75	0
424	Part Time Love	Larry Wilcox	55.75	0
425	Who'll Be the Fool Tonight	Larsen/Feiten Band	91	28
426	Please Don't Leave	Lauren Wood	88.25	0
427	Fool in the Rain	Led Zeppelin	2.25	0
428	Mr. Briefcase	Lee Ritenour	83.75	0
429	Is It You	Lee Ritenour	77.75	0
430	Promises, Promises	Lee Ritenour	76.75	0
431	Cross My Heart	Lee Ritenour	73.5	0
432	Sunset Drivers	Lee Ritenour	65	0
433	You Make Me Feel Like Dancing	Lee Ritenour	45.75	0
434	The Captain's Journey	Lee Ritenour	29.5	0
435	You Make Me Feel Like Dancing                                              	Leo Sayer                                                                  	\N	31
436	Slippin Away	Leon Ware	73.25	0
437	Can I Touch You There	Leon Ware	60.75	0
438	Nothin' You Can Do About It	Leslie Smith	74.75	0
439	Fool That I Am	Libby Titus	35	0
440	Minnesota	Lil Yachty	9.25	0
441	Hurts So Bad	Linda Ronstadt	42.75	0
442	Easy For You To Say	Linda Ronstadt	36	0
443	Trouble                                                                    	Lindsey Buckingham                                                         	\N	30
444	All Night Long	Lionel Richie	61	28
445	Love Will Conquer All	Lionel Richie	60	0
446	Running with the Night	Lionel Ritchie	80.75	0
447	Red Streamliner	Little Feat	58.25	0
448	Cool Change	Little River Band	30.5	164
449	Reminiscing	Little River Band	51.75	73
450	Take It Easy On Me	Little River Band	33.75	0
451	Lady	Little River Band	25.5	0
452	Man On Your Mind                                                           	Little River Band                                                          	\N	27
453	Vahevala	Loggins & Messina	37.5	160
454	Danny's Song                                                               	Loggins & Messina                                                            	\N	71
455	Sailin' The Wind                                                           	Loggins & Messina                                                            	\N	20
456	You Need A Man/Coming To You                                               	Loggins & Messina                                                            	\N	18
457	Brandy	Looking Glass	36.8250008	165
458	The White Whale	Los Colognes	12	0
459	Never Too Much	Luther Vandross	54.75	0
460	Moon Crystal	M83	43.75	0
461	Walk Away Blues	M83	15.125	0
462	First Light	Makoto Matsushita	50.75	0
463	Margarita	Marc Jordan	85.75	0
464	Beautiful People	Marc Jordan	81.5	0
465	Marina Del Rey	Marc Jordan	80	0
466	Survival	Marc Jordan	50.5	0
467	Estrelar	Marcos Valle	46.25	0
468	Nao Pode Ser Qualquer Mulher	Marcos Valle	41.5	0
469	Midnight At The Oasis                                                      	Maria Muldaur                                                              	\N	31
470	Midnight at the Oasis	Maria Mulder	20.75	0
471	Hearts	Marty Balin	49.5	36
472	Silly Crush	Masaki Matsubara	72.5	0
473	Break My Stride	Matthew Wilder	21.5	74
474	You	Max Gronenthal	64.5	0
475	Nobody's Business	Maxus	94.5	30
476	Your Imagination	Maxus	80.25	0
477	Golden Time of Day	Maze	41.75	0
478	We Are One	Maze	34	0
479	Alcohol	Scruff McGruff the Crime Dog	61	0
480	Looking for the Perfect Ahh	Melissa Manchester	66.75	0
481	You Should Hear How She Talks About You	Melissa Manchester	41.5	0
482	Now That Your Joystick's Broke	Michael Franks	61.5	0
483	Jealousy	Michael Franks	59.75	0
484	Your Secrets Safe With Me	Michael Franks	56.5	0
485	Face To Face	Michael Franks	39.25	0
486	Mr. Smooth	Michael Franks	32	0
487	Human Nature	Michael Jackson	95.5	0
488	Baby Be Mine	Michael Jackson	89	0
489	It's the Falling in Love	Michael Jackson	71.25	0
490	Rock with You	Michael Jackson	64	0
491	The Girl is Mine	Michael Jackson & Paul McCartney	75.75	0
492	Right Through the Heart	Michael Johnson	70.75	0
493	Wildfire                                                                   	Michael Martin Murphey                                                     	\N	70
494	I Gotta Try	Michael McDonald	88.25	91
495	I Keep Forgettin	Michael McDonald	98.5	86
496	Sweet Freedom	Michael McDonald	77	86
497	No Looking Back	Michael McDonald	62	0
498	Find It In Your Heart	Michael McDonald	31.5	0
499	Lay Back	Michael Sembello	62.75	0
500	Maniac	Michael Sembello	13	0
501	Hill Street Blues Theme	Mike Post & Larry Carlton	45.25	0
502	Island In the Sun	Minnie Riperton	50.5	0
503	The Awakening	Narada Michael Walden	56.25	0
504	Get It Up For Love	Ned Doheny	72.25	0
505	To Prove My Love	Ned Doheny	50	0
506	Heartlight	Neil Diamond	51.25	0
507	Mr. Telephone Man	New Edition	41.25	0
508	Ducktales	Nick Nadel	28.5	0
509	Lotta Love	Nicolette Larson	60	34
510	Let Me Go, Love	Nicolette Larson	82.5	26
511	Isn't It Always Love	Nicolette Larson	64.5	0
512	If You Should Sail	Nielsen/Pearson	91.25	0
513	Hasty Heart	Nielsen/Pearson	86.5	0
514	Ocean Bay	Nightshift	48.5	0
515	An American Dream                                                          	Nitty Gritty Dirt Band                                                     	\N	23
516	Trying to Love Two Women	Oakridge Boys	3.5	0
517	Talk to Me	Olivia Newton-John	49.75	0
518	Make A Move On Me	Olivia Newton-John	48	0
519	Deeper Than The Night	Olivia Newton-John	47.25	0
520	Physical	Olivia Newton-John	40.25	0
521	Sad Songs	Olivia Newton-John	15.75	0
522	Magic                                                                      	Olivia Newton-John                                                         	\N	33
523	Still the One	Orleans	31.25	69
524	Dance with Me	Orleans	15.25	69
525	Love Takes Time	Orleans	67.25	0
526	Reach	Orleans	39.5	0
527	Jackie Blue	Ozark Mountain Daredevils	18.75	69
528	Love Will Find A Way	Pablo Cruise	91	75
529	Whatcha Gonna Do	Pablo Cruise	69	68
530	Paradise (Let Me Take You Into)	Pablo Cruise	74	0
531	You're Out To Lose                                                         	Pablo Cruise                                                               	\N	23
532	You Need a Hero	Pages	90	0
533	O.C.O.E. (Official Cat of the Eighties)	Pages	83.25	0
534	If I Saw You Again	Pages	66.75	0
535	The Sailor's Song	Pages	58	0
536	Let It Go	Pages	54.5	0
537	Who's Right, Who's Wrong?                                                  	Pages                                                                      	\N	73
538	Remind Me	Patrice Rushen	44.5	0
539	Why You Givin Up	Patrick Simmons	52.75	0
540	So Wrong	Patrick Simmons	25.5	0
541	Do You Love Me	Patti Austin	81.75	0
542	Every Home Should Have One	Patti Austin	80.25	0
543	Baby Come to Me	Patti Austin & James Ingram	91	0
544	On My Own	Patti LaBelle & Michael McDonald	46.25	0
545	Second Chance	Paul Anka	84.25	0
546	Drawn To The Light	Paul Clark	80.25	0
547	Cool Night	Paul Davis	54	74
548	Do You Believe In Love	Paul Davis	54.5	0
549	I Go Crazy                                                                 	Paul Davis                                                                 	\N	66
550	Sweet Life                                                                 	Paul Davis                                                                 	\N	34
551	Arrow Through Me	Paul McCartney & Wings	30.25	0
552	Everytime You Go Away                                                      	Paul Young                                                                 	\N	23
553	Seeing Is Believing	Paulinho Da Costa	69.75	0
554	The Golden Rule Jingle	Per Erik Hallin	46.25	0
555	Bi-Coastal	Peter Allen	84.25	0
556	One Step Over the Borderline	Peter Allen	82.25	0
557	Going To LA	Peter Frampton	23	0
558	Show Me the Way	Peter Frampton	4.5	0
559	Show Me The Way                                                            	Peter Frampton                                                             	\N	65
560	Baby, I Love Your Way                                                      	Peter Frampton                                                             	\N	59
561	Fall Break	Peter Yellen	20.5	0
562	Jamaican Rum	Phil Lynott	17	0
563	Easy Lover	Phillip Bailey & Phil Collins	50.25	0
564	Summer Days	Phoenix	10.75	0
565	Baby Come Back	Player	58.5	168
566	Givin' It All	Player	66.25	0
567	Forever	Player	34	0
568	This Time I'm In It For Love                                               	Player                                                                     	\N	33
569	Piece of Paradise	PM	12	0
570	Barbados                                                                   	Poco                                                                       	\N	29
571	Heart Of The Night                                                         	Poco                                                                       	\N	29
572	Crazy Love                                                                 	Poco                                                                       	\N	27
573	When Love Breaks Down	Prefab Sprout	15.25	0
574	My Love Is Forever	Prince	66.75	0
575	I Feel For You	Prince	27.5	0
576	Let Me Love You Tonight	Pure Prairie League	44	0
577	Amie                                                                       	Pure Prairie League                                                        	\N	67
578	Cool Cat	Queen	54.75	0
579	One Hundred Ways	Quincy Jones	71.25	0
580	The Secret Garden	Quincy Jones	19.5	0
581	Fool's Paradise	Randy Goodrum	85.25	0
582	I Took A Chance	Randy Goodrum	20	0
583	I Love L.A.	Randy Newman	37.25	0
584	Miami	Randy Newman	27.5	0
585	Christmas Time Is Here	Ray Parker Jr.	88.5	0
586	You Can't Change That	Raydio	78.5	0
587	Story of My Life	Real Thing	47	0
588	Rainin' Through My Sunshine                                                	Real Thing                                                                 	\N	27
589	Skippin'	Rhythm Heritage	44.5	0
590	Float On By	Rhythm Heritage	38.5	0
591	Stay With Me Tonight	Richard Jon Smith	45	0
592	Live It	Richard Simmons	78.5	0
593	Anything's Possible	Richard Torrance	42.25	0
594	Your Loss	Rick Bowles	76.75	0
595	Mary Jane	Rick James	36	0
596	Don't Talk To Strangers	Rick Springfield	56.75	0
597	Chuck E's In Love	Rickie Lee Jones	53	24
598	Juke Box Fury	Rickie Lee Jones	50	0
599	It's No Secret	Ringo Starr	32.5	0
600	Hot Rod Hearts	Robbie Dupree	83.5	35
601	Brooklyn Girls	Robbie Dupree	88.25	0
602	Love is a Mystery	Robbie Dupree	71.25	0
603	Steal Away                                                                 	Robbie Dupree                                                              	85	158
604	Just Another Notch on the Bedpost	Robert Kraft	74.25	0
605	Every Kinda People	Robert Palmer	41.5	167
606	One Last Look	Robert Palmer	61	0
607	CAN WE STILL BE FRIENDS?                                                   	Robert Palmer                                                              	\N	68
608	Big Log	Robert Plant	24.25	0
609	In the Mood	Robert Plant	9.5	0
610	What Am I Gonna Do	Rod Stewart	7.75	0
611	Get Used To It	Roger Voudouris	85	0
612	Steal Away Your Love	Roland Bautista	46.25	0
613	Where Do The Nights Go	Ronnie Milsap	60.5	0
614	If You Don't Want Me To	Ronnie Milsap	56.75	0
615	Magic Smile	Rosie Vela	45.5	0
616	Interlude	Rosie Vela	38.75	0
617	More Than This	Roxy Music	18	0
618	Heaven Bound	Rufus & Chaka	51.5	0
619	Run For Your Life	Runner	39.25	0
620	Escape (The Pina Colada Song)	Rupert Holmes	35.25	161
621	Answering Machine	Rupert Holmes	45	68
622	Him	Rupert Holmes	50.5	67
623	Lunch Hour	Rupert Holmes	14.875	0
624	Maureen	Sade	49.75	0
625	Smooth Operator	Sade	37.625	0
626	Valerie	Samuel Purdey	58	0
627	Lucky Radio	Samuel Purdey	39.25	0
628	Oriental Gate	Sanford Townsend Band	87.5	33
629	Smoke From a Distant Fire	Sanford Townsend Band	76.75	30
630	Nail Me to the Wall	Sanford Townsend Band	55.5	0
631	Winning	Santana	26.75	0
632	Fool On A Hill	Sarah Vaughn	48.25	0
633	Living In A Dream	Sea Level	64.75	0
634	Hard to Fall	Sea Level	39.25	0
635	Summer Breeze	Seals and Crofts	21.75	158
636	If And Any Day	Seals and Crofts	79.25	0
637	Stars	Seals and Crofts	52.75	0
638	Diamond Girl                                                               	Seals and Crofts                                                               	\N	154
639	Lie To Me	Sean Cassidy	61.5	0
640	Alibis	Sergio Mendes & Joe Pizzulo	82.625	0
641	Oh Loretta	Sex On Toast	44.25	0
642	Hold My Love	Sex On Toast	19.75	0
643	You Made A Fool	Sherbet	55	0
644	Being With You	Smokey Robinson	54.5	0
645	Just To See Her	Smokey Robinson	43.5	0
646	No More Lonely Days	Sneaker	68.25	0
647	Don't Let Me In	Sneaker	55.75	0
648	Morning Dance	Spyro Gyra	23	0
649	Sweet Baby	Stanley Clarke & George Duke	61.25	0
650	Moonlight Feels Right	Starbuck	52	67
651	Afternoon Delight	Starland Vocal Band	9	27
652	Mr. White	State Cows	79.5	0
653	New York Town	State Cows	57	0
654	Deacon Blues	Steely Dan	91	116
655	Peg	Steely Dan	92	114
656	Black Cow	Steely Dan	90.75	112
657	Hey Nineteen	Steely Dan	85.5	108
658	Kid Charlemagne	Steely Dan	90.75	1
659	Any World (That I'm Welcome To)	Steely Dan	59.25	1
660	FM	Steely Dan	93.75	0
661	Time Out Of Mind	Steely Dan	89.25	0
662	Josie	Steely Dan	86.75	0
663	Second Arrangement	Steely Dan	75.25	0
664	Rikki Don't Lose That Number	Steely Dan	55.25	0
665	Only A Fool Would Say That	Steely Dan	41.375	0
666	Dirty Work                                                                 	Steely Dan                                                                 	\N	117
667	Babylon Sisters                                                            	Steely Dan                                                                 	\N	113
668	Any Major Dude Will Tell You                                               	Steely Dan                                                                 	\N	106
669	King Of The World                                                          	Steely Dan                                                                 	\N	1
670	On and On	Stephen Bishop	45	30
671	Send A Little Love My Way	Stephen Bishop	57.25	0
672	Sinking in an Ocean of Tears	Stephen Bishop	50.25	0
673	Your Burning Love	Steps	54.75	0
674	WKRP In Cincinnati Theme	Steve Carlisle	32	34
675	Fly	Steve Cropper	78	0
676	Sometimes Love Forget	Steve Goodman	40.5	0
677	Santa Ana Winds	Steve Goodman	9.75	0
678	The Ending	Steve Kipner	83	0
679	Wild Mountain Honey                                                        	Steve Miller Band                                                          	\N	24
680	Foolish Heart	Steve Perry	55	0
681	The Weekend	Steve Wariner	48	0
682	Arc of a Diver	Steve Winwood	32.5	0
683	Save it for a Rainy Day	Steven Bishop	59	0
684	Just Can't Win 'Em All	Stevie Woods	89.25	0
685	Steal The Night	Stevie Woods	65.75	0
686	Come Sail Away	Styx	7.25	0
687	Take the Long Way Home	Supertramp	13	0
688	Stumblin' In	Suzi Quatro & Chris Norman	42.5	0
689	Love Trip	Takako Mamiya	64.75	0
690	I Don't Want You Anymore	Tavares	84.75	0
691	Back in Business	Ted Gardestad	67	0
692	Shame	Terence Boylan	72.5	0
693	Hey Papa	Terence Boylan	61.5	0
694	Eye In The Sky	The Alan Parsons Project	43.75	73
695	Games People Play	The Alan Parsons Project	41.25	0
696	Sail on Sailor	The Beach Boys	43.5	30
697	Catalina Breeze	The Blue Jean Committee	58.75	0
698	Not Tonight	The Brecker Brothers	85.5	0
699	You Ga (Ta Give It)	The Brecker Brothers	25.25	0
700	(Want You) Back In My Life Again	The Carpenters	61	0
701	Boat To Sail	The Carpenters	28.25	0
702	What a Fool Believes	The Doobie Brothers	100	93
703	Takin' It to the Streets	The Doobie Brothers	81	93
704	Minute By Minute	The Doobie Brothers	91.5	81
705	Real Love	The Doobie Brothers	83.75	0
706	Open Your Eyes	The Doobie Brothers	76	0
707	One Step Closer	The Doobie Brothers	75	0
708	How Do The Fools Survive	The Doobie Brothers	67.25	0
709	You Never Change	The Doobie Brothers	61.25	0
710	Echoes of Love	The Doobie Brothers	60.5	0
711	Carry Me Away	The Doobie Brothers	52.75	0
712	Sweet Feelin'	The Doobie Brothers	43.75	0
713	Wynken, Blynken and Nod	The Doobie Brothers	27.5	0
714	It Keeps You Runnin'                                                       	The Doobie Brothers                                                        	\N	87
715	You Belong To Me                                                           	The Doobie Brothers                                                            	\N	85
716	Dependin' On You                                                           	The Doobie Brothers                                                            	\N	1
717	So Much In Love	The Dukes (Bugatti & Musker)	83.75	0
718	Long Ago	The Four Seasons	43.5	0
719	When She Was My Girl	The Four Tops	37	0
720	Yearning For Your Love	The Gap Band	43.5	0
721	Give It Up	The Jacksons	83.25	0
722	This Place Hotel	The Jacksons	45.25	0
723	On the Boulevard	The Manhattan Transfer	66.5	0
724	Spice of Life	The Manhattan Transfer	57.25	0
725	Shining Star	The Manhattans	40.75	0
726	I'll Be Dining Here Again	The Norwegian Fords	52.5	0
727	He's So Shy	The Pointer Sisters	87.75	0
728	Heart to Heart	The Pointer Sisters	59.25	0
729	What A Surprise	The Pointer Sisters	59	0
730	I Feel For You	The Pointer Sisters	50.25	0
731	Slow Hand	The Pointer Sisters	49	0
732	Tourist In Paradise	The Rippingtons	18.25	0
733	Games People Play	The Spinners	38.25	0
734	The Lottery	The Stepkids	32	0
735	My Ever Changing Moods	The Style Council	33.5	0
736	Shout to the Top	The Style Council	33	0
737	Don't Want to Wait Anymore	The Tubes	49.5	0
738	A Matter of Pride	The Tubes	39.25	0
739	She's A Beauty	The Tubes	34.5	0
740	I'm The One For You	The Whispers	43.5	0
741	Yachting Type	The Yachts	5.5	0
742	Shambala	Three Dog Night	2.75	0
743	Show You the Way	Thundercat	66	0
744	Don't Keep Me Waiting Girl	Tim Weisberg	75	0
745	Tell Me What You Dream	Timothy B. Schmit	71.75	0
746	Hurting For You	Todd Rundgren	38.75	0
747	Hello It's Me                                                              	Todd Rundgren                                                              	\N	75
748	I Saw The Light                                                            	Todd Rundgren                                                              	\N	20
749	Tin Foil Hat	Todd Rundgren & Donald Fagen	45.75	0
750	Maybe It's Love Affair	Toshiki Kadomatsu	53	0
751	Africa	Toto	93	161
752	Georgy Porgy	Toto	71.5	159
753	Rosanna	Toto	95.75	158
754	I'll Be Over You	Toto	56.75	50
755	Hold the Line	Toto	56.5	44
756	99	Toto	73.5	42
757	Make Believe	Toto	92	0
758	Waiting For Your Love	Toto	78.75	0
759	Rockmaker	Toto	67.25	0
760	Good For You	Toto	56.75	0
761	St. George and the Dragon	Toto	53.25	0
762	I Won't Hold You Back	Toto	47.25	0
763	Chinatown	Toto	46.5	0
764	We Made It	Toto	44	0
765	Lovers In The Night	Toto	42	0
766	It's A Feeling	Toto	41.25	0
767	Afraid Of Love	Toto	31.5	0
768	Overdue	Tyrone Davis	48.5	0
769	Love Is The Answer                                                         	Utopia                                                                     	\N	27
770	Crazy	Valerie Carter	70	0
771	I'll Wait	Van Halen	39.5	0
772	Brown Eyed Girl	Van Morrison	9.75	0
773	Down in Cancun	Victor Feldman	49.75	0
774	Back Pocket	Vulfpeck	22.5	0
775	Love Ain't Somethin'	Wah Wah Watson	42	0
776	Paging Audrey	Walter Becker	35.75	0
777	Magnet and Steel	Walter Egan	37.25	68
778	Regulate	Warren G	51.6217499	0
779	Night Time in the Switching Yard	Warren Zevon	25	0
780	Let Nothing Come Between You	Warren Zevon	17.25	0
781	Hula Hula Girls	Warren Zevon	10.5	0
782	Pandy Fackler	Ween	39.5	0
783	Your Party	Ween	32.5	0
784	Take Me To Your Heaven	Wilson Brothers	69.75	0
785	With A Little Luck	Wings	23.5	0
786	You Can Feel It	Young Gun Silver Fox	50	0
\.


--
-- Name: song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.song_id_seq', 786, true);


--
-- Name: song_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

