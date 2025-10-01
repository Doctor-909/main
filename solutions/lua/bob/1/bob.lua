local bob = {}

function bob.hey(say)
    -- Trim whitespace
    say = say:match("^%s*(.-)%s*$") or ""

    local isQuestion = string.sub(say, -1) == "?"
    local isYelling = (say == string.upper(say)) and say:match("%a")

    if say == "" then
        return "Fine. Be that way!"
    
    elseif isYelling and isQuestion then
        return "Calm down, I know what I'm doing!"
    
    elseif isQuestion then
        return "Sure."
    
    elseif isYelling then
        return "Whoa, chill out!"
    
    else
        return "Whatever."
    end
end

return bob
