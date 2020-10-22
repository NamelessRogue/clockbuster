# Clockbuster!
A very simple addon for 9.0 retail to hook the TimerTracker routine when a `START_TIMER` event is detected to check if the total time remaining on the timer is greater than the expected duration and kills it.  This does not start a new timer but it will handle outrageous timers at the start of mythic keystone dungeons and if a player initiates the /countdown from chat.

I'm expecting this to be a very short term solution its `currently fixed on the shadowlands beta as of 10/22/2020` once this is pushed to live you can delete this.

### Background
I found what I believe is an issue in the ui-source on live currently which was intended to localize the countdown timer being displayed on screen to the player in the event they load in late or receive the countdown later than when its sent by the party lead.  instead of subtracting its adding time and will probably be corrected in the next update (maybe not hotfix)

### Installation
Download the zip and unzip it into your addons folder check it in Addons in game and you should be good to go. If you're worried the code is stupid simple feel free to take a look, I'm using `FreeTimerTrackerTimer()` that I identified in the ui-source to remove the offending timer and passing in the object that's busted.