local house = {}

local subjects = {
  "house",
  "malt",
  "rat",
  "cat",
  "dog",
  "cow with the crumpled horn",
  "maiden all forlorn",
  "man all tattered and torn",
  "priest all shaven and shorn",
  "rooster that crowed in the morn",
  "farmer sowing his corn",
  "horse and the hound and the horn"
}

local actions = {
  "that Jack built.",
  "that lay in the house that Jack built.",
  "that ate the malt",
  "that killed the rat",
  "that worried the cat",
  "that tossed the dog",
  "that milked the cow with the crumpled horn",
  "that kissed the maiden all forlorn",
  "that married the man all tattered and torn",
  "that woke the priest all shaven and shorn",
  "that kept the rooster that crowed in the morn",
  "that belonged to the farmer sowing his corn"
}

house.verse = function(which)
  local lines = {}
  -- first line: subject + first action for first verse
  lines[1] = "This is the " .. subjects[which] .. (which == 1 and " " .. actions[1] or "")
  
  -- for the rest of the lines, append actions in reverse order
  if which > 1 then
    for i = which, 2, -1 do
      table.insert(lines, actions[i])
    end
  end

  return table.concat(lines, "\n")
end

house.recite = function()
  local all_verses = {}
  for i = 1, #subjects do
    table.insert(all_verses, house.verse(i))
  end
  -- join verses with single newline
  return table.concat(all_verses, "\n")
end


return house


