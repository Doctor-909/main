return function(s)
  local acronym = ""
-- string bettween spaces
  for word in string.gmatch(s,"%S+") do
     local uppers = string.gsub(word,"[^%u]", "") -- uppers on the text 
     if #uppers == 0 or #uppers > 2 then uppers = string.sub(word, 1,1) end  -- words wihtout uppers   , fuck my code is shit 
    acronym=acronym..uppers
  end
  return string.upper(acronym)
end