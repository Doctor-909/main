function proteins(strand)
  local codon_table = {
    AUG = "Methionine",
    UUU = "Phenylalanine", UUC = "Phenylalanine",
    UUA = "Leucine", UUG = "Leucine",
    UCU = "Serine", UCC = "Serine", UCA = "Serine", UCG = "Serine",
    UAU = "Tyrosine", UAC = "Tyrosine",
    UGU = "Cysteine", UGC = "Cysteine",
    UGG = "Tryptophan",
    UAA = "STOP", UAG = "STOP", UGA = "STOP"
}
  local list = {}
local count = 1
for i = 1,#strand , 3  do
   local letters = string.sub(strand ,i,i+2 )
    
   local word = codon_table[letters]

  if  word  then
    if word == "STOP" then return list end
    list[count] = word
      count = count +1
  
  else 
    return error("the word you entered is valied")
    end
end
return list
end
return { proteins = proteins }


