local baffling_birthdays={} 
baffling_birthdays.shared_birthday = function (birthdays) 
  -- match for the same birthdays if month then if day are eqauls then true
  local match = false
  for i =1,#birthdays do 
    local yearbirth , monthbirth , daybirth=birthdays[i]:match("(%d+)-(%d+)-(%d+)")
    for j =1,#birthdays do 
       local year , month, day  =birthdays[j]:match("(%d+)-(%d+)-(%d+)")
      if j == i then 
      elseif tonumber(monthbirth) ==tonumber(month) and tonumber(daybirth) ==tonumber(day) then 
        match = true
       end 
      
    end
end
return match
end

baffling_birthdays.random_birthdates = function(count)
  local randoms = {}
  for i = 1, count do
    local year, month, day = math.random(1970, 2026), math.random(1, 12), math.random(1, 31)

    if 10 > month and 10 > day then
      month = string.format("%02d", month)
      day = string.format("%02d", day)
    elseif 10 > month then
      month = string.format("%02d", month)
    elseif 10 > day then
      day = string.format("%02d", day)
    end

    if year % 4 == 0 and (year % 100 ~= 0 or year % 400 == 0) then
      year = year + 1
    end

    randoms[i] = year .. "-" .. month .. "-" .. day
  end
  return randoms
end

baffling_birthdays.estimated_probability_of_shared_birthday= function (group_size)
  local count = 1

for i =0,group_size-1 do 
    count = count *  (365 -i) / 365
end
local probabiliy_math = math.ceil(((1- count)*100) * 10^6) /  10 ^6


return probabiliy_math
  
end
return baffling_birthdays