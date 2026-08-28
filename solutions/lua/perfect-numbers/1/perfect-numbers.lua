local function aliquot_sum(n)
  local sum  = 0
  for i= 1,n-1 do
     if n % i == 0 then
        sum = sum +i
     end
    end
return  sum
end

local function classify(n)
  local results = aliquot_sum(n)
  if n == results then
    return "perfect"
  elseif n < results then
    return "abundant"
  elseif n > results then
    return "deficient"
  end
end

return { aliquot_sum = aliquot_sum, classify = classify }
