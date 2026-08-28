local CircularBuffer = {}
CircularBuffer.__index = CircularBuffer
function CircularBuffer:new(capasity)
    local  obj={
        capasity=capasity, 
        circuletable= {} ,  
    seen = 0  }

    setmetatable(obj,CircularBuffer)
    return obj 
end
function CircularBuffer:write(data)
    if data == nil then return end  
    if self.capasity > #self.circuletable then 
        
        table.insert(self.circuletable, data) 
        
    else 
        return error("buffer is full") 
    end
     

end
function CircularBuffer:read() 
    if #self.circuletable >0 then 
        local index = self.seen +1
         local item = self.circuletable[index]
         if  item then 
            self.seen= index
            table.remove(self.circuletable,index)
            self.seen = index -1
            return item 
         else 
            return error("buffer has nill") 

         end
         

    else 
        return error("buffer is empty")
    end
    

    
end
function CircularBuffer:clear()  
    self.circuletable={}
end
function  CircularBuffer:forceWrite(data) 
    -- check if there capasity is not full yet
    -- remove the index which the last seen  
    -- then add the new one will go next the old one
  if data == nil then return end  
    if self.capasity > #self.circuletable then 
        table.insert(self.circuletable,data)
    else
    local oldindex = self.seen +1
    table.remove(self.circuletable,oldindex) 
    table.insert(self.circuletable,data) 
    end

end

return CircularBuffer
