local  BottleSong = {} 

function BottleSong.recite(start_bottles, take_down)
local numbers = {
    [10] = "Ten",
    [9]  = "Nine",
    [8]  = "Eight",
    [7]  = "Seven",
    [6]  = "Six",
    [5]  = "Five",
    [4]  = "Four",
    [3]  = "Three",
    [2]  = "Two",
    [1]  = "One",
    [0]  = "no"
}
local list =""
while  take_down >0 do 
local current_word = start_bottles == 1 and "bottle" or "bottles" -- for the bottle(s) in the first two lines , we used logic if its true then bottle , or false bottles 
local next_number = start_bottles - 1 --  this for the line 4 after one battle fall 
local bottle_word = next_number == 1 and "bottle" or "bottles"  -- in the line four we need check if its one we used logic to set to bottle or false to bottles 
local text_format = string.format(
    "%s green %s hanging on the wall,\n%s green %s hanging on the wall,\nAnd if one green bottle should accidentally fall,\nThere'll be %s green %s hanging on the wall.",
    numbers[start_bottles], 
    current_word,
    numbers[start_bottles],
    current_word,
    numbers[next_number] == 0 and "no" or string.lower(numbers[next_number]), -- now we made sure to lower the number in middle to the phrase if its not  on which is 0 
    bottle_word
)


     if take_down >1 then  -- make sure the line are pirfectly match to  in the test
    list = list.. text_format .."\n\n" -- here we coppied the version after the edits
  else 
    list = list ..text_format .."\n" --  this one we make sure  in one there is only one line at the end and we copied what we edits
  end
    
    -- set up new loop
   
    take_down = take_down -1 
    start_bottles = start_bottles - 1

    
    -- now loops checks if the number is bigger then 0 then loop too all the chances we save and we loop again 
  end
 
  return list
  
end
return BottleSong