return {
  transform = function(dataset)
    local expactation = {} 
    for key, value in pairs(dataset) do
        for _, letter in ipairs(value) do
            letter = string.lower(letter)
            expactation[letter] = key     
        end
    end
    return expactation
    
end}
