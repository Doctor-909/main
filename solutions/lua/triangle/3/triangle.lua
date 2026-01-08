local triangle = {}
function triangle.kind(a,b,c)
    local triangle_Type={'equilateral','isosceles','scalene'}
    local error_Scanner = {(a+b>=c) , (b+c>=a) , a+c>=b,a+c+b >0}
    local func_triangle = {( a==b and a==c and b ==c) ,((a==b)  or (c==b)  or (c==a)),(a~=b and a~=c and b~=c)}

    for _,val in ipairs(error_Scanner) do
        if  not val then
             error("Input Error")
             end
    end

    for k , v in ipairs(func_triangle) do
        if  v  then
            return triangle_Type[k]
        end
    end
end
return triangle
