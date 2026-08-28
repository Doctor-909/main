local Proverb = { }
function Proverb.recite(strings)
    local lines =""
      for i = 1,#strings do
        if i + 1 > #strings then
            lines = lines.."And all for the want of a "..strings[1] ..".\n"
        else
             local x,y = strings[i] , strings[i+1]

       lines = lines.. string.format("For want of a %s the %s was lost.\n",x,y)


        end


      end
      return lines
end
return Proverb
