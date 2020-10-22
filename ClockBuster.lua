TimerTracker:HookScript("OnEvent", function(self, event, ...)
  if event ~= "START_TIMER" then return; end
  local timerType, timeSeconds, totalTime  = ...;
  
  for a,b in pairs(self.timerList) do
    if b.type == TIMER_TYPE_PLAYER_COUNTDOWN or b.type == TIMER_TYPE_CHALLENGE_MODE then
      if timeSeconds > totalTime then
        print("Busted Timer detected, removing")
        FreeTimerTrackerTimer(b);
      end
    end
  end
end)