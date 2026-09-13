local school = {} 
school.__index = school 
function school:new() 
    local obj={} 
    setmetatable(obj,school) 
     return obj 
end 

function school:add(name,grade) 
    --checking if the grade exits or creating new one 
    local pass = true

   self[grade] = self[grade] or {} 
   -- now checking the name if it exits in the grade or not 
   for _,v  in pairs(self) do 
    for _,j in pairs(v) do 
    if name == j then 
        pass = false 
    end 
end
end 
  if pass == true then 
    table.insert(self[grade], name)
  end 
  return pass
    
end

function school:roster()  
    --return all the student names with alphabet list 
    local students = {} 
    local grade_keys = {}
    for key, _ in pairs(self) do
        table.insert(grade_keys, key)
    end
    table.sort(grade_keys) 

    for _, grade in ipairs(grade_keys) do 
        local names = self[grade] 
        table.sort(names) 
        for _, name in ipairs(names) do
            table.insert(students, name)
        end

    end
    
    
    return students
end
function  school:grade(n) 
-- in this function look for the grade in self then return it with and sort the list 
 local grade_x = self[n] or {}
 if #grade_x > 1 then  
    table.sort(grade_x) 
 end 
 return grade_x
    
end
return school