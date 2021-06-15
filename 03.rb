#錯誤處理 throw exception
def bmi(w,h)
    w / (h*h)
  rescue => exception
    "enter error number"
  end
  
p bmi(1,0)

#迴圈的處理loop
10.times do
  puts "hello world"
end

#do..end or {} == Block
#same
p 1.upto(5) {|i| puts i}
#same
1.upto(5) do |i|
  puts i
end

p 5.downto(1) {|i| puts i}

5.downto(1) do |i|
  puts i
end

#迭代的處理lteration
array = [1,2,3,4,5]
for i in array
  if(i == 3)
    puts "get it #{i}"
    break
  end
end

x = 0
while x < 10 
    puts x 
    x+=1
end

y = 0
#until = while not
until y >=10
  puts y
  y+=1
end

i = 0
loop do 
  puts i
  i+=1
  break if i >10
end

names = ["a","b","c"]
#each
names.each {|name| puts name}
#each
names.each do |name|
  puts name  
end
#each with index
names.each.with_index do |name, x|
  puts "#{x}, #{name}"
end

  