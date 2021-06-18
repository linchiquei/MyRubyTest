# load './07.rb' #一定要寫檔案名稱才找得到
require "./07" #只會load一次

# kitty = Cat.new
# kitty.eat

#exercise
1.upto(5) do |row|
  puts "*" * row
end

#exercise 1
def is_leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

puts is_leap_year?(1998)
puts is_leap_year?(2000)
puts is_leap_year?(2100)

#exercise 2
def bmi_calculator(height, weight)
  puts high = height / 100.0
  bmi = weight / (high * high)
  return bmi.round(1)
end

puts bmi_calculator(170, 50)
puts bmi_calculator(180, 65)

#exercise 3
array = [1, 3, 4, 1, 7, nil, 7]
array.compact!.sort!.uniq!
p array

#exercise 4
p (1..100).sum
