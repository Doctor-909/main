local song = {}

local animals = {
  "fly",
  "spider",
  "bird",
  "cat",
  "dog",
  "goat",
  "cow",
  "horse"
}

local comments = {
  [2] = "It wriggled and jiggled and tickled inside her.\n",
  [3] = "How absurd to swallow a bird!\n",
  [4] = "Imagine that, to swallow a cat!\n",
  [5] = "What a hog, to swallow a dog!\n",
  [6] = "Just opened her throat and swallowed a goat!\n",
  [7] = "I don't know how she swallowed a cow!\n",
  [8] = "She's dead, of course!\n"
}

-- verse(n): return the n-th verse of the song
function song.verse(n)
  -- this function has three parts 
  -- first part  is making the first line
  local lines  = {} 
  local animal = animals[n] 
  table.insert(lines , "I know an old lady who swallowed a " .. animal ..".\n")

  -- the second part is adding the commets
  if comments[n]  and n ~= 8 then 
    table.insert(lines, comments[n])
  elseif n == 8 then 
    table.insert(lines, comments[n])
    return table.concat(lines)
end
  -- if the comments doesn't == 8 then we have the third part which is making  the rest of the lines by counting down in the comments
  for i = n ,2 , -1 do 
   if animals[i] == "bird" and animals[i-1] == "spider" then 
     table.insert(lines , "She swallowed the " ..animals[i] .. " to catch the " ..animals[i-1] .. " that wriggled and jiggled and tickled inside her.\n")
  else 
    table.insert(lines , "She swallowed the " ..animals[i] .. " to catch the " .. animals[i-1].. ".\n")
  end
  end
  table.insert(lines , "I don't know why she swallowed the fly. Perhaps she'll die.\n")
  return table.concat(lines)
end
  

-- verses(a, b): return verses from a to b
function song.verses(a, b)
  local res  = {} 
  for i =a , b  do 
    table.insert(res , song.verse(i))
  end
  return table.concat(res, "\n").."\n"
end

-- sing(): return the whole song
function song.sing()
  return song.verses(1, 8)
end

return song
