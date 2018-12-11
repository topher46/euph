# Geir - Euphonium Piece

## Nov 23 2018
**Email Rough Sketch**
[begin rant]
Reading the ART-VAPO doc I was trying to wrap my head around the
central tenants of the work and how I relate to it (I kept thinking,
yes but I'm in CA). Then it occurred to me that one of the things that
I did when we went from Palo Alto to Alaska was to make a recording
and take a few images at each latitude! I have been waiting to do
something with this material since 2014 and now I am starting to have
a plan! Add to that my 3D printing of the speaker to mouthpiece and
getting that up and going, I think there is something there. Here are
the ideas that I have so far.

1. The mouthpiece and speaker--> I have a trumpet on hand that I can
use for testing and development of a parallel work in order to work
out the technical side of this and some musical ideas by making a
piece for myself that is purely electronic. By purely electronic I
mean that the horn is driven by the speaker. This will act as a
testing bed for some of the technical stuff behind the euphonium work.
I have some prints going at the moment and should have an improved
prototype in the near future.

2. North... This is the core idea in many ways and it is "the story."
When we moved, what I recorded is a my own personal story of going
north. The notion of the journey north is a common narrative in AK
culture and I suspect there are common threads throughout the
circumpolar region. That aside, the tale of the journey is a classic
human narrative, so it works on multiple levels. One of the things
that stuck out to me in the document is
"The Nordicity index has ten natural and human components: Latitude,
Summer heat, annual cold, types of ice, precipitation, vegetation,
accessibility, air service, population, and economic activity."  and
the parallel that you draw with
"Suggestion of possible artistic Nordicity index variables to be tested:
- Timbre/sound
- Bodily movement
- Ethnicity
- Places/locations
- Audience
- Types of humour
- Gender
"
This notion of areas in which northicity can be quantized and that it
is relative to the North Pole with an index of 1000 is brilliant, as
it accounts for global shifts, but relative to a particular place.
There is so much depth to this idea that I I am still working out my
thoughts on it.

In terms of utilizing the recordings, my thought is to tell the tale
abstractly of going north by using the data (images and sounds) that I
personally collected. I made a recording at latitude 38 through 63.
For the audio I am thinking about using the audiofiles as the basis
for a translation. I have done many translations of soundfiles to
scores and/or electronics. I have software that I have developed to
this end, so this is a good starting place to start generating some
material. Once I have generated raw material I would like to get you
involved in shaping it. I have a clear sense of the lines and sounds
that I am interested in and I do not come at it with the same
sensitivity as you (the instrumentalist). That said, I find this is a
place where we can get together and really craft a piece together,
learning and sharing ideas. The electronics can also be generated from
the audio. I'm actually thinking it would be great to have parts that
are played in a purely electronic eurphonium (ie. with just the
speaker as driver) and this could be more than one instrument. We'll
see where the material takes us, I'm just putting everything down in
this email as a starting point.  I really like this idea of
spatialized music, where the instruments are placed in the space. This
could also mean that those instruments are "playable" in a different
way, maybe a percussionist ?! Or those instruments are a sculptural
component, or that they are moved by people...

One other aspect that I have been thinking about is that I have done
some development of timbre recognition with a neural net(NN). The
outcome of that is, if the NN hears sound X it produces sound Y. So I
starting thinking about a situation where you play an A# and the NN
plays B, you play B and the NN plays D#. Now you bend a C# and we see
where the NN goes. The analysis is done by looking at a spectral
representation of the sound, so it is timbral and when I did the
initial work I was using it to change the amplitude of multiple
streams of material. This would be more sophisticated, but I like the
idea of triggering audio in a electronic euphonium (ie. driven by the
speaker) where it plays back audio (likely recordings of you) based on
the timbre you create. This is also an opportunity to create music
where you and the machine must listen to each other, as musicians so
often do.

[End Brain Dump!]

## December 6

### Translating Recordings
1. 00_paloAlto_apt2_L or R not sure which one, but I used it and got a nice short translation
2. 01_38_1_R.wav - this is a bit long, it has  great part where the engine of a Mustang? is heard, use this probably.
3. 02_38_2_L.wav - I use the L channel, bringing down the loud spikes in amp and upping everything else, just first :40 sec of so, cutting out opening low freq handeling noise
  * with this t1 I set up a reaper project (exmplSync-02_38_2_t1 to make sure it worked. It **MUST BE**
  1. Correct Sample Rate
  2. **CHANGE TEMPO TO 60!**
  3. Insert xml/mid first
  4. Bring in audio
  * THought - could put a band pass filter on the audio and have it read the midi/xml file OR maybe a reson bank...

4. 03_39_L.wav -- has birds, lots of car, a fan motor, clicking of car our car resting
* Arbuckle CA, visited post office here.
* Tried the mixture of spectral gate&hold in one end of trumpet & euphonium in the other. Interesting, but not sure it matters.
5. 04_40_R.wav
* Side of the road, open space. There are some intersting birds, it begins with the road noise dying down.

### Heros Journey in 12 Steps - worth considering this archtype
*https://quizlet.com/14697468/12-stages-of-a-heros-archetypal-journey-flash-cards/*
* Probably no hero here, it is more about the journey,
* Also *https://en.wikipedia.org/wiki/Hero%27s_journey*

| Stage Name | Stage Number  Description | My Notes |
| ------ | ------ | ------ | ------ |
| Ordinary World | Stage 1 | Creates contrast wiht strange new world; the problem is waiting to be achieved; hero lacks something; a search for completeness | Search seems like import word, particularily for completeness |
| Call To Adventure | Stage 2 | A problem is presented as a chalenge or adventure, objects are revealed as clues | objects revealed as clues - anticipating material that will come later |
| Refusing the Call | Stage 3 | Refuses call because of fear, the greatest dear is because of the unknown, not fully committed, may 'return back' and needs convincing | lack of commitment seems most relavent |
| Mentor | Stage 4 | Where hero is encourage by mentor, function of mentor is to prepaer her to face unknown, give advice, and give equipment | Something about receiving equipment means this is where technology is foregrounded in the piece - probably choir gives material to soloist |
| Crossing the First Threshold | Stage 5 | Hero commits to the adventure; fully enters the special world, begins to face consequences of the problem | Fully enters world, here the soloist faces the consequences of the context of the choir |
| Test Allies and Enemies | Stage 6 | Where hero faces challenges and learns rules of the special world, learns who allies are and who enemies are | learns RULES of special world (ie the journey) the ensemble & electronics processing function as both allies and enemies |
| Fall and Descend | Stage 7 | Last edge of dangerous place, where object of quest is hidden, hero crosses the scond major threshold, hero pauses to plan next move, usually at enemies headquarters | live euphonium passes into diffuse ensemble |
| The Ordeal | Stage 8 | Hero hits bottom, faces greatest fear, brought to the brink in battle with hostile force, may have a dark moment | ensemble and soloist and elec fracture |
| Reward | Stage 9 | Hero takes magic weapon, has survived and won, usually is experienced and has knowledge, earns title of hero by taking risk | soloist, electronics and ensemble in unison |
| Roadback-Return | Stage 10 | Hero deals with consequences of facing dark forces in the ordeal | Interplay across various configurations, can't function as soloist |
| Resurection | Stage 11 | Hero is reborn and cleansed, meets final test, moments of death and rebirth are complete | not sure |
| Return home with elixer of life | Stage 12 | Turns back to ordinary world with treasure, heals land | not sure... |

* Joseph Campbell - influenced by Carl Jung - in his text *The Hero with a Thousand Faces* - Campbell described the basic narrative pattern as follows:
*A hero ventures forth from the world of common day into a region of supernatural wonder: fabulous forces are there encountered and a decisive victory is won: the hero comes back from this mysterious adventure with the power to bestow boons on his fellow man.*
* Great Image representation
![wikipedia image](https://en.wikipedia.org/wiki/Hero%27s_journey#/media/File:Heroesjourney.svg)

* There is also "The Journey North" which refers to Migration. *https://journeynorth.org/*
* I have 27 recordings - this could be groups of 2 or maybe 3 and use duplicates as well as Wrangell to make 36 - Yes, groups of 3
