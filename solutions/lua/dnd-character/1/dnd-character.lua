local Character = {}
Character.__index = Character

local function ability()
  local numbers = {}
  for i = 1, 4 do
    table.insert(numbers, math.random(1, 6))
  end

  -- Find and remove lowest
  local lowest_index = 1
  for i = 2, #numbers do
    if numbers[i] < numbers[lowest_index] then
      lowest_index = i
    end
  end
  table.remove(numbers, lowest_index)

  -- Sum remaining
  local sum = 0
  for _, v in ipairs(numbers) do
    sum = sum + v
  end

  return sum
end

local function modifier(score)
  return math.floor((score - 10) / 2)
end

function Character:new(name)
  local obj = {
    name = name,
    strength = ability(),
    dexterity = ability(),
    constitution = ability(),
    intelligence = ability(),
    wisdom = ability(),
    charisma = ability()
  }

  obj.hitpoints = 10 + modifier(obj.constitution)

   return setmetatable(obj, Character)
  
end

return { Character = Character, ability = ability, modifier = modifier }

