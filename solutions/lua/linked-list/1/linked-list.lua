local linked_list = {} 
linked_list.__index = linked_list 

function  linked_list:push(n)
    table.insert(self.list, n)
end
function linked_list:pop() 
    local x = table.remove(self.list)
    return x 
end
function linked_list:shift() 
    local element = table.remove(self.list,1)
    return element
end
function  linked_list:unshift(n)
    table.insert(self.list,1,n)
    
end
function linked_list:count() 
    return #self.list 
end
function  linked_list:delete(n)
    for k,v  in ipairs(self.list) do 
        if v ==n then 
            table.remove(self.list,k) 
        end 
    end 
    
end
return function() 
    local obj = {} 
    obj.list ={}
    return setmetatable(obj,linked_list)
    
    
end
