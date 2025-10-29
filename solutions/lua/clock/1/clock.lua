local clock = {}
clock.__index = clock
function clock.at(hours, minutes)
  minutes = minutes or 0 
  local after_hours = math.floor(minutes / 60)
  local hour = (hours + after_hours) % 24 
  local minute = minutes %  60
  local obj = {hours = hour , minutes = minute}
  return  setmetatable(obj , clock)
  

end
function clock:plus(n) 
  return clock.at(self.hours , self.minutes + n)
end

function clock:minus(n)
  return clock.at(self.hours , self.minutes -n)
end
function clock:equals(other) 
  return self.hours == other.hours and self.minutes == other.minutes
end
function clock:__tostring() 
  return string.format("%02d:%02d" , self.hours , self.minutes)
end
return clock
