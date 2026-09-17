local HighScores = {}

function HighScores:scores()
    return self.values

end

function HighScores:latest()
    -- local n = self.values[1] or 1
    -- for _, v in ipairs(self.values) do 
    --     if n > v and v > 0 then 
    --         n = v end
    -- end
  local n = self.values[#self.values]
    return n

end

function HighScores:personal_best()
    local n = self.values[1] or 1
    for _, v in ipairs(self.values) do 
        if n < v then 
            n = v end
    end
    return n
    

end

function HighScores:personal_top_three() 
    
    --{ 10, 30, 90, 30, 100, 20}
    local top_three = {} 
    top_three[1] = -math.huge
    top_three[2]=-math.huge
    top_three[3]=-math.huge

    
    for _, x in ipairs(self.values) do 
        
        if x > top_three[1] then 
            
            top_three[3] = top_three[2]
            top_three[2] = top_three[1]
            top_three[1] = x 
        elseif  x > top_three[2]  then 
            top_three[3] = top_three[2]
            top_three[2]= x 
        elseif x > top_three[3] then 
            top_three[3] = x 
        end
    end
      for  i = 1,#top_three do 
        if top_three[i] == -math.huge then 
            top_three[i]=nil
        end
    end
  
    return top_three

 end

return function(scores)
  local high_scores = {}
  setmetatable(high_scores, { __index = HighScores })
  high_scores.values = scores

  -- TODO: store the scores in the high_scores object

  return high_scores
end