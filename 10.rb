@name = "kiki"

def sayHi
    puts "#{@name} hi!"
end

p @name
sayHi

# myname = "ricky"
# myname << " lin"
# myname.prepend("taiwn ")
# p myname

a, b = 1,2,3,4
p a, b
a,*b = 1,2,3,4
p a,b
x,y,z = [1,2,3,4,5]
p x,y,z
x,y,*z = [1,2,3,4,5]
p x,y,z
a,b,c = 1,2
p a,b,c
x,y,z = [1,2]
p x,y,z

x="A"
y="B"

x,y = y,x
p x,y

p 1.+(2)
puts "我說\"雙引號需要使用反斜線來處理!\""

title = "紅寶石鑑定商"
title[0..1] = "鑽"
puts title 