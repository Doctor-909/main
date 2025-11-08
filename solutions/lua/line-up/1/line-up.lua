return {
  format = function(name, number)
    
    
    
    return string.format("%s, you are the %d%s customer we serve today. Thank you!",name, number, (function (g) local  number = g %  100; if number ==  11 or number == 12 or number== 13  then return "th"  end ;local x = g % 10 if x == 1 then return "st"  elseif x == 2 then return "nd"  elseif x == 3 then return  "rd"  else return "th" end end)(number)) 
 

  end}
