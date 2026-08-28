local SuqareRoot = {} 
function  SuqareRoot.square_root (radicand ) 
  local root_sqrt 
 for i=1,radicand do 
    local sqrt = i *i 
    if sqrt == radicand then
      root_sqrt= i
    end   
  end
   return root_sqrt
end
return SuqareRoot