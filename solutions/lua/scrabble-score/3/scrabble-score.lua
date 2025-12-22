    local scrabble_points = {
    [1]  = {"A", "E", "I", "O", "U", "L", "N", "R", "S", "T"},
    [2]  = {"D", "G"},
    [3]  = {"B", "C", "M", "P"},
    [4]  = {"F", "H", "V", "W", "Y"},
    [5]  = {"K"},
    [8]  = {"J", "X"},
    [10] = {"Q", "Z"}
}
-- this is my first FP(functional programming) code, first time feeling like i have done something.
 local function  letter_filtiring(letter)
    for  key , v in pairs(scrabble_points) do
         for _, val in ipairs(v) do
            if val  == letter then
                return key
            end
         end
    end
end

local score =function (word)
  if not word then return 0 end
    local count  = 0
        for i  = 1 ,#word do
            local  char  = string.sub(word, i,i):upper()
            count  = count +letter_filtiring(char)
    end
    return count
end



return {score =score}