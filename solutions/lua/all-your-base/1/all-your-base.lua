local all_your_base = {}

all_your_base.convert = function(from_digits, from_base)
  if from_base < 2 then error('invalid input base') end

  local obj = {}
  function obj.to(n)
    if n < 2 then error('invalid output base') end
    if #from_digits == 0 then return {0} end

    local function to_base10(digits)
      local counter = 0
      for key, value in ipairs(digits) do
        if value < 0 then error('negative digits are not allowed') end
        if value >= from_base then error('digit out of range') end
        counter = counter + (value * (from_base ^ (#digits - key)))
      end
      return math.tointeger(counter)
    end

    local function base10_tanybase(number)
      if number == 0 then return {0} end
      local remaining = {}
      local reversed = {}
      while number > 0 do
        local x = number % n
        number = number // n
        table.insert(remaining, x)
      end
      for i = #remaining, 1, -1 do
        table.insert(reversed, remaining[i])
      end
      return reversed
    end

    local x = to_base10(from_digits)
    return base10_tanybase(x)
  end

  return obj
end

return all_your_base


