# like c# extention
class Cat
  def hello
  end
end

class Cat
  def walk
  end
end

class String
  def say_hello
    puts "hahaha"
  end
end

"123".say_hello

#封裝 在ruby世界裡都是public如果你沒特別限制的話
class Five
  def say_hello
    gossip
  end

  # only using on method,
  # on ruby private method cant have receiver

  #private
  def gossip
  end

  protected #很少用過

  def ho
  end

  private :gossip #same
end

five = Five.new
#five.gossip #compiler error
five.send(:gossip) #這樣就能呼叫private方法,幹!這樣private個屁!
