return function(pos)

  local self = {}
if  7 >= pos.row  and pos.row >= 0 and  7>= pos.column  and pos.column>=0 then

   self =  { row = pos.row , column  = pos.column}
else
    return error("missing info")

end
  function self.can_attack(Q)
    if Q.row == self.row or  Q.column == self.column  or (math.abs(Q.row - self.row) == math.abs(  Q.column -self.column  ))  then
      return true
    else
      return false
    end

  end

return self
end


