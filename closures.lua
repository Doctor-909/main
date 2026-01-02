
function addtion ()
    local x = 0
    return function ()
        x = x +1
        return x

    end

end
-- x lives inside the function addtion every times i call it will
-- in this example i call the function its self every time so the output with be reset every tim

local result = addtion()  -- now the results holds the  return value so when we call it again it use this variable to upload the date
result() -- 1
result() -- 2
result() -- 3


-- 2) independent closures

function  independent_Closures() -- functions returns functions modifies each's own variables(closures)
    local x,y = 0,0
    return {add_X = function (n)x =x+n; return x end,
            add_Y = function (n)y = y+n ;return y end}
end

local Modified =independent_Closures()
Modified.add_X(3)  --   3
Modified.add_X(5)  --  8
Modified.add_X(6)  -- 14

Modified.add_Y(8) -- 8
Modified.add_Y(83)  --91
Modified.add_Y(2) -- 93
-- two variables exites ,because the inter functions use lexical scoping to remmbers variables

--3) Parmeter Capture
function parameter_Capture(parameter)
    return function ()

        return parameter

    end


end
local testing = parameter_Capture("hello")
testing() -- hello
testing()  -- hello
local testing2 = parameter_Capture("hi")
testing2() -- hi
testing2() -- hi
--  yes the prameter is a local variable
--it will not remember unliess if you passed the data in the interfunction

-- 4) Shadowing
function  shadowing()
    local x = 10 -- this one will be store
    return function ()
        local x = x +1 -- this will forgeten because each time we recreat new one
        return x
    end
end
 -- x every time we call it it creat a  new local x and add the value in the outerfunctions  +1
local res = shadowing()
print(res()) -- 11
print(res()) -- 11
print(res()) -- 11
-- the x that reads is and remembers is one in the outerfunc and when you call it creat a new variable each time will not be remember all all
-- x the outerfunction

--5) Loop Trap
local closure_Fun = {}

for i = 1, 10  do
     closure_Fun [i] = function () return i
     end
end
-- (closure_Fun[1]())
-- (closure_Fun[2]())
-- (closure_Fun[3]())
-- (closure_Fun[4]())


 local loop_Func = {}
 for i = 1,10 do
    local j =i
    loop_Func[j] = function () return j

    end
end
(loop_Func[1]()) -- 1
(loop_Func[2]()) -- 2
(loop_Func[3]()) -- 3
(loop_Func[4]()) -- 4

 -- final test (no code )
  --1  what is a closure : a closure is  lexical scooping function can remember variables after finished
   --2  lexical scoping is the ability to look outsite the function for variables where they writting and remember them
   --3 they break because of the timming,   some times loop closures break if there is no base
   -- 4 well you can  return one functions that have a modifies functions much better then classes
