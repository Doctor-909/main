-- grid is a 2D table: grid[row][col]
return  function (grid)
    local rows = #grid
    local cols = #grid[1]
    local result = {}

    -- precompute max of each row
    local rowMax = {}
    for r = 1, rows do
        local maxVal = grid[r][1]
        for c = 2, cols do
            if grid[r][c] > maxVal then
                maxVal = grid[r][c]
            end
        end
        rowMax[r] = maxVal
    end

    -- precompute min of each column
    local colMin = {}
    for c = 1, cols do
        local minVal = grid[1][c]
        for r = 2, rows do
            if grid[r][c] < minVal then
                minVal = grid[r][c]
            end
        end
        colMin[c] = minVal
    end

    -- find valid positions
    for r = 1, rows do
        for c = 1, cols do
            local value = grid[r][c]
            if value == rowMax[r] and value == colMin[c] then
                table.insert(result, { row = r, column = c})
            end
        end
    end

    return result
end
