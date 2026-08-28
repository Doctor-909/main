local leap_year = {}
leap_year["leap"] = function (number)
  return (number % 4 == 0 and number % 100 ~= 0) or (number %400 == 0)
end
return leap_year["leap"]
