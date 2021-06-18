p "hi"
puts "hi"
print "hi"

user = "kk" #變數
User = "kk" #常數 const value 可以被更改

username = "kk" #var
$username = "kk" #public

@@aa = "KK" #protecd
@name = "kiki" #private

def sayHi
  puts "#{@name} hi!"
end

p @name
sayHi

a = 1
a + -1
#沒有 ++a --a

# a == nil true a == 2
a = a || 2
a ||= 2

comic = "七龍珠"
x, y, x = [1, 2, 3]

name = "kk"
age = 18
p "hi, i'm #{name} i'm #{age} years old"
p 'hi, i\'m 18 years old'

p %q(hi, i'm 18 years old) #代表單引號
p %Q(hi, i'm #{name} i'm #{age} years old) #代表雙引號

puts 3.55.round #四捨五入
puts 3.74.floor #轉成整 數無條件捨去
puts 3.14.ceil #轉成整數 無條件進位
puts 3.14.to_i #轉成整數 無條件捨去

puts 10 / 3 #整數除整數會等於整數
puts 10 / 3.0
