# Clockbuster!
I'm expecting this to be a very short term solution its `currently fixed on the shadowlands beta as of 10/22/2020` once this is pushed to live you can delete this.
### Info 
So I’m pretty confident this is caused by blizzard attempting to compensate for lag, I’d imagine with all of the posts about how you “want to have an ssd for shadowlands” this was an attempt to adjust the countdown timers so that they would be offset based on when your computer detects the timer and starts displaying it. First seen on beta, then obviously on live when 9.0 hit. There was a change to the TimerTracker to support the addition of the /countdown being built into the game now. This is fixed as of this evening on beta I submitted a bug yesterday for it because it actually drove me insane

For the time being I threw together this quick addon that just grabs the offending timer and kills it. the downside you don’t have a timer at all… the upside you don’t have an outrageously inaccurate timer and its very simple if anyone wanted to review it. I expect it to be a bandaid til the fix on beta gets pushed to live but man… if it didn’t drive me crazy anytime we popped a key. this will turn it off all together for key folks its always 10 seconds. Doesn’t affect DBM or Bigwigs /pull timer for raid/m+/whatever only the new /countdown.

I first saw it on streams and giggled, but then it hit me on beta AND THEN IT HIT ME ON LIVE.  I found what I believe is an issue in dumped ui-source from live which I believe was intended to localize the countdown timer being displayed on screen to the player in the event they load in late or receive the countdown later than when its sent by the party lead.  It appears from my understanding that instead of subtracting its adding time or perhaps not accounting for significant difference between client and realm which leads to the outrageous timer. I expect this will be corrected in the next update (maybe not hotfix) hopefully before SL drop.  I tried many a thing to resolve this, I have two accounts it hit both.... I reinstalled my game, I turned off all my addons, I tried a new machine... I tried /pull 0 to cancel it and nothing seemed to work.  I dove through lua code on all my addons, diffed my config files looking for a cvar that had been modified.  I reinstalled Elvui and plater so many tiems I wanted to cry.  When all else failed I went with the nuclear option and killed all countdown timers.
### Installation
Download the zip and unzip it into your addons folder check it in Addons in game and you should be good to go. If you're worried the code is stupid simple feel free to take a look, I'm using `FreeTimerTrackerTimer()` that I identified in the ui-source to remove the offending timer and passing in the object that's busted.

PS I was very tired when I wrote this readme, I'm sure there's typos, I'm sure I'll look at this tomorrow and I repeated myself.
