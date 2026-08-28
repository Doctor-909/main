
local function BowlingScore()
    local scorer = {}
    local pins_score= {} 
    local dual = {} 
    local frames = {} 
    
    function scorer.roll(pins)
        
         if pins < 0 or pins > 10 then 
            return error("no way ") 
         end 
          if frames[10] then 
            local count = 0
            for _,v in ipairs(frames[10]) do 
                count = count +v 
            end 
            if count ~= 10 then 
                return error("no way can't do more then 10 ") 
            end
        end


      if pins ~= 10 then 
         if #dual ==1 then 
            if dual[1] +pins <= 10 then 
                table.insert(frames,{dual[1],pins} )
                dual= {} 

            elseif  dual[1]+ pins > 10 then 
                return error() 
            end 
            
         else 
            table.insert(dual,pins) 
         end
        else 
            table.insert(frames,{pins})
        end
        
                 
     
    
     table.insert(pins_score,pins) 
                
                    
               
            
    end

   function scorer.score()
    local score = 0
    
    local i = 1 
    local frame = 0
    -- creat 10 frames with pins_score 
    -- check the error before calculating finall score 
    -- calculate the final score 
   

    while frame < 10 do 
        frame = frame +1
    
        if pins_score[i] ==10 then 
            
            score = score +(pins_score[i] +pins_score[i+1] +pins_score[i+2])
            i= i+1
        elseif (pins_score[i] + pins_score[i+1]) ==10 then 
            
            score = score +pins_score[i] +pins_score[i+1] +pins_score[i+2]
            i=i+2
        elseif (pins_score[i] +pins_score[i+1]) < 10  then 
            
            score = score+pins_score[i] +pins_score[i+1]
            
            i=i +2
    

        end 
   
   end
   return score
 
end
   return scorer
   
end

return BowlingScore

