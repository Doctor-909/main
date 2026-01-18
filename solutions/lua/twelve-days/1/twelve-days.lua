local function recite(start_verse, end_verse)
    local ordinals = {
        [1] = "first",
        [2] = "second",
        [3] = "third",
        [4] = "fourth",
        [5] = "fifth",
        [6] = "sixth",
        [7] = "seventh",
        [8] = "eighth",
        [9] = "ninth",
        [10] = "tenth",
        [11] = "eleventh",
        [12] = "twelfth"
    }

    local gifts = {
        [1] = "a Partridge in a Pear Tree",
        [2] = "two Turtle Doves",
        [3] = "three French Hens",
        [4] = "four Calling Birds",
        [5] = "five Gold Rings",
        [6] = "six Geese-a-Laying",
        [7] = "seven Swans-a-Swimming",
        [8] = "eight Maids-a-Milking",
        [9] = "nine Ladies Dancing",
        [10] = "ten Lords-a-Leaping",
        [11] = "eleven Pipers Piping",
        [12] = "twelve Drummers Drumming"
    }

    local results = {}

    for day = start_verse, end_verse do
        local line = {}
        line[1] = "On the " .. ordinals[day] .. " day of Christmas my true love gave to me:"

        for i = day, 1, -1 do
            local gift = gifts[i]
            if i == 1 and day > 1 then
                gift = "and " .. gift
            end
            table.insert(line, gift)
        end

        local phrase = line[1] .. " " .. table.concat(line, ", ", 2)
        table.insert(results, phrase .. ".")
    end

    return results
end

return { recite = recite }


