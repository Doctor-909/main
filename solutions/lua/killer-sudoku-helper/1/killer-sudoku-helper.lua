local function contains(t, value)
    --checking exclude number is allowed or not in reall time instead of looping it in the same fucking 
    -- what we did here is we create  a locak function that checks if the number in loop in matches excude if its does they resturn yes and no we skip it 
    
    for _, v in ipairs(t) do
        if v == value then
            return true
        end
    end
    return false
end

local function combinations_helper(rem_Y, rem_X, prev_num, current_combo, all_results, exclude)
    --checking current_combo 
    if rem_X == 0 then
        if rem_Y == 0 then
            local combo_copy = {}
            for i = 1, #current_combo do
                combo_copy[i] = current_combo[i]
            end
            table.insert(all_results, combo_copy)
        end
        return
    end
    --logic 

    local safty_buffer = math.floor((rem_X * (rem_X - 1)) / 2)
    local max_Allowed = math.floor((rem_Y - safty_buffer) / rem_X)
    local Lower_Bound = prev_num + 1
    -- loop and recursive

    for n = Lower_Bound, max_Allowed do
        if not contains(exclude, n) then
            table.insert(current_combo, n)
            combinations_helper(rem_Y - n, rem_X - 1, n, current_combo, all_results, exclude)
            table.remove(current_combo)
        end
    end
end

local function combinations(Y, X, exclude)
    exclude = exclude or {}
    local all_results = {}
    combinations_helper(Y, X, 0, {}, all_results, exclude)
    return all_results
end

return { combinations = combinations }