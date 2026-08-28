return function(config)
    local results = {}
    results.x = config.x
    results.y = config.y
    results.heading = config.heading

    local stock = { "north", "east", "south", "west" }
    
    -- Helper function to get index of current heading
    local function headingIndex(h)
        for i, v in ipairs(stock) do
            if v == h then return i end
        end
    end

    function results:move(way)
        for i = 1, #way do
            local direction = string.sub(way, i, i)
            
            if direction == "A" then
                if self.heading == "north" then
                    self.y = self.y + 1
                elseif self.heading == "south" then
                    self.y = self.y - 1
                elseif self.heading == "east" then
                    self.x = self.x + 1
                elseif self.heading == "west" then
                    self.x = self.x - 1
                end

            elseif direction == "R" then
                local idx = headingIndex(self.heading)
                idx = idx % 4 + 1  -- wrap around after 4
                self.heading = stock[idx]

            elseif direction == "L" then
                local idx = headingIndex(self.heading)
                idx = (idx - 2) % 4 + 1  -- wrap around before 1
                self.heading = stock[idx]
      else 
        return error("ff")
            end
        end

        return results
    end

    return results
end

