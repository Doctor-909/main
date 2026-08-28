return {
  encode = function(letter)
    local list = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
                  "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}

    local chunks = {}
    local group = ""
    local character = letter

    for i = 1, #letter do
      local char = string.sub(character, 1, 1)
      character = string.sub(character, 2, #character)
      local lower_char = string.lower(char)

      if lower_char:match("%a") then
        for k, v in ipairs(list) do
          if lower_char == v then
            group = group .. list[27 - k]
            break
          end
        end
      elseif lower_char:match("%d") then
        group = group .. lower_char
      end

      -- If group reaches 5 characters, push it and reset
      if #group == 5 then
        table.insert(chunks, group)
        group = ""
      end
    end

    -- Add last group if not empty
    if #group > 0 then
      table.insert(chunks, group)
    end

    return table.concat(chunks, " ")
  end
}
