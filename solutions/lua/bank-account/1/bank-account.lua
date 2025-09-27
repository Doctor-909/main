local bankaccount  = {} 
function bankaccount:new () 
  local obj = {num = 0 , is_alpha = false} 
  setmetatable(obj, {__index = self})
  return obj 
end 
function bankaccount:open()
  if self.is_alpha  then 
    error("This account is already opened") 
  end 
  self.num = 0
  self.is_alpha = true 
end 

function bankaccount:close ()  
  if  not self.is_alpha  then 
    erorr("this account is not opened yet") 
  end 
  self.is_alpha = false 
end 
function bankaccount:balance() 
  if not self.is_alpha then 
    erorr("this account is not opened") 
  end 
  return self.num 
end 

function bankaccount:deposit(amount) 
  if not self.is_alpha then 
    erorr("this account is not opened") 
  end 
  if  0> amount then 
    erorr("You can't insert a negative amount") 
  end 
  self.num  = self.num +amount

end 
function  bankaccount:withdraw(amount)  
  if not self.is_alpha then 
    erorr("this account is not opened") 
  end 
   if  0> amount then 
    erorr("You can't withdraw  a negative amount") 
  end 
  if amount > self.num then 
    erorr("The amount you insert is greater then your balance") 
  end 
  self.num = self.num - amount  
end 
return bankaccount 
    
  
  

  