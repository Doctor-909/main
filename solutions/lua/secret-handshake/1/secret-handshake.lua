return function(n)
  local finnales = {}
  local tabl = {}
  local handshake_Sin = {
    [1] = "wink",
    [10] = "double blink",
    [100] = "close your eyes",
    [1000] = "jump",
    [10000] = false
  }

  local function to_binary()
    local binary = ""
    while n > 0 do
      local bit = n % 2
      binary = bit .. binary
      n = math.floor(n / 2)
    end
    return binary
  end

  local function secrets()
    local count = 1
    local binary = to_binary()

    for i = #binary, 1, -1 do
      local char = tonumber(string.sub(binary, i, i))
      char = (char == 1) and (char * count) or 0

      local value = handshake_Sin[char]

      if value ~= nil and value ~= false then
        table.insert(finnales, value)
      end

      if value == false then
        local counter = 0
        for c = #finnales, 1, -1 do
          counter = counter + 1
          tabl[c] = finnales[counter]
        end
        finnales = nil
      end

      count = count * 10
    end
  end

  secrets()
  return finnales or tabl
end

