#method of ruby
def CalTwoSum(x, y)
  return x + y
rescue => exception
  puts "cant enter string"
end

def ToUpper(string)
  return string.upcase
end

p CalTwoSum(3, 6)
p CalTwoSum(3, "6")
p ToUpper("eye full in love 333")

#可以省略return,會已最後一行為return結果
def sayHi(someone = "ruby")
  return "hello #{someone}"
end

#
# def sayHi(someone)
#   "hello #{someone}"
# end

#呼叫時可以省略小誇號
p sayHi "kate"
p sayHi("ricky")

#方法內最後一個是hash大誇號可以省略
def my_method(a, b, c, options = {})
  puts "testing"
end

my_method(1, 2, 3, { a: 12, b: 13 })
my_method(1, 2, 3, a: 12, b: 13)

def is_adult(age)
  age >= 18
end

# def is_adult(age, name)
#   ans = age > 18 ? true : false
#   return ans, "#{name} can drive car"
# end

puts is_adult(19)
