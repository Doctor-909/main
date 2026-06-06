return function (value, amount) 
     if 0> value then return error("target can't be negative") end 
    local dp = {} 
    local coins = {} 
    -- base case : 0 coins needed to make amount 0 
    dp[0]=0 
    -- outer loop : solve every amount from 1 to target 
    for i=1,value do 
        dp[i] = math.huge -- start as unsolved
       for _, coin in ipairs(amount) do 
            if  i>= coin then  -- coin fits
                if dp[i-coin] +1 <dp[i] then  -- this coin is better 
                    dp[i]= dp[i-coin] +1 -- update min count
                     coins[i] = coin -- remember winning coin 
                end 
            end
        end
    end
    -- traceback: follow winning  coins from target back to 0 

    local results= {} 
    local current = value 
     while current > 0 do 
        if not coins[current] then 
            return error("can't make target with given coins") 
        else
        table.insert(results,coins[current]) -- save the coin
        current = current -coins[current] -- go backward
        end
    end

  
    return results
end

