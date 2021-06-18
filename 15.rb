require 'date' # 包含DateTime

# practice 3
def generate_odd_numbers(n)
  list = []
  (0..n).each do |n|
    if (n.odd?)
      list << n
    end
  end
  return list
end

p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
p generate_odd_numbers(6)  # 印出 [1, 3, 5]
p generate_odd_numbers(3)  # 印出 [1, 3]

# practice 4
def calc_area(radius)
  if (radius < 0)
    return "Radius must greater than zero!"
  end
  area = radius * radius * 3.14159
  area.round(2)
end

puts calc_area(8)   # 印出 201.06
puts calc_area(10)  # 印出 314.16
puts calc_area(15)  # 印出 706.86
puts calc_area(-1)  # 印出 Radius must greater than zero!

#practice 5
def generate_order_code(str)
  "TN-#{str.to_s.rjust(7, "0")}"
end

puts generate_order_code(29)    # 印出 TN-0000029
puts generate_order_code(328)   # 印出 TN-0000328
puts generate_order_code(1224)  # 印出 TN-0001224

#practice 6

#practice 7
language = ["PHP", "Python", "Ruby", "Perl", "ASP", "ActionScript", "Objective-C", "Swift", "Kotlin", "Go","A"]

def short_word(list)
  str = list[0]
  list.each do |n|    
    if(str.length > n.length)
      str = n
    end
  end
  return str
end

p short_word(language)

#practice 8
def calc_age(birthday)
  now = Date.today
  before = Date.parse(birthday)
  difference_in_days = (now - before).to_i
  (difference_in_days/365).to_i - 1
end

puts calc_age('1985/1/2')  # 印出 35
puts calc_age('1997/8/28') # 印出 22

#practice 9
def is_valid_company_no?(serial)
  list=[1,2,1,2,1,2,4,1]
  if(serial.length != 8)
    return "格式不符"
  else
    strlist = number_split(serial)
    strlist.each.with_index do |str, index|
      rulenum = list[index]
      pushnum = str * rulenum
      #list[index] = pushnum
      list[index] = pushnum >= 10 ? number_split(pushnum.to_s).reduce(0, :+) : pushnum 
    end
    #p list
    adjustnum = 0
    if(list[6] == 7)
      adjustnum = list.sum + 1
    else
      adjustnum = list.sum
    end
    return list.sum % 10 == 0
  end 
end

def number_split(n)
  return n.split("").map(&:to_i)
end


#p is_valid_company_no?('2453680')  # 印出「格式不符」字樣
p is_valid_company_no?('24536806') # 印出 true
p is_valid_company_no?('12222539') # 印出 false




