local function count_words(s)
    local list ={}
    s = string.lower(s)
    s=s:gsub("[^%w'%-]+"," ")

for word in string.gmatch(s,"['%w']+") do
    word = word:gsub("^'+","")
    word =word:gsub("'+$", "")
    if word~= "" then
    list[word]=(list[word] or 0) +1
    end
end
return list
end
return {count_words =count_words}
