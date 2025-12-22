    local scrabble_points = {
    [1]  = {"A", "E", "I", "O", "U", "L", "N", "R", "S", "T"},
    [2]  = {"D", "G"},
    [3]  = {"B", "C", "M", "P"},
    [4]  = {"F", "H", "V", "W", "Y"},
    [5]  = {"K"},
    [8]  = {"J", "X"},
    [10] = {"Q", "Z"}
}
--  loop throw ever letter in the word (get the letter)
-- loop throw  knowun tables for match the letter
-- when  the argument calls true  add the value the counter variable
local function  score(word)
    if not word then return 0 end
    local count =0
    for i  = 1, #word do
        local letter = string.sub(word ,i,i):upper()
    for  key , v in pairs(scrabble_points) do
         for _, val in ipairs(v) do
            if val  == letter then
                count = count + key
            end

         end

    end
end
return  count
end


return {score =score}