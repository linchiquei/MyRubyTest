a = 10
b = 10

p a==b  #a == b ans:true
p a===b #a == b ans:true

#only nil and false are false, 0 is not false
#nil 等於不存在,但是他有一個class,他有記憶體位置

=begin
等於c# /*...*/
=end

weather = "raining"

#same ans
if weather == "raining"
  puts "stay home"
end

#same ans
puts "stay home" if weather == "raining"

#unless = if not
unless weather == "raining"
  puts "go outside"
end

puts "go outside" unless weather == "raining"

#same
if weather == "raining"
  puts "stay home"
else
  puts "go outside"
end

#same
puts weather == "raining" ? "stay home" : "go outside"

if weather == "raining"
  puts "stay home"
elsif weather == "summer"
  puts "go outside"
else
  puts "study"
end

case weather
when "raining"
  puts "stay home"
when "summer"
  puts "go outside"
else
  puts "study"
end

age = 18
case age
when 0..3
  puts "baby"
when 4..10
  puts "child"
when 11..17
  puts "teenager"
else
  puts "adult"
end  

 
