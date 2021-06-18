def sayHello
  puts "hi"
  yield 3, 5
  puts "bye"
end

sayHello { |n, m|
  puts "#{n} #{m} cry cry"
}

puts "nil"

=begin
step 1 do sayhello method
step 2 print hi and return control
step 3 comeback sayhello and print crycry
step 4 goback yield to print bye
step 5 print nil
=end

def odd_to_list(list)
  list.select { |i| i.odd? }
end

p odd_to_list([1, 2, 3, 4, 5])

def my_select(list)
  result = []
  list.each do |n|
    result.push(n) if n.odd?
  end
  result
end

p my_select([3, 7, 9, 2, 4, 8])

def my_select2(list)
  result = []
  list.each do |n|
    result << n if yield(n)
  end
  result
end

p my_select2([3, 7, 9, 2, 4, 8]) {
    |n|
    n.odd?
  }

# 使用 yield 一定要在呼叫方法後加block
# 不然就要加 if block_given? 的判斷
def your_name
  yield if block_given?
end

your_name {
  puts "hi"
}

your_name

arr = [1, 2, 3, 4, 5]
p arr.map { |i|
  i * 2
}

p arr.map do |i|
  item * 2
end
