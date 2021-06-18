# class Cat
#     def initialize(name, age)
#         @name = name
#         @age = age
#         puts %Q(#{@name} #{@age})
#     end
# end

# Cat.new("kit", 18)

#實體方法需要被new
class Cat
  def eat
    puts "eat"
  end
end

#類別方法 like static method ?
class Dog
  def self.all
    puts "all"
  end
end

k = Cat.new("n", 21)
k.eat

Dog.all

=begin
在ruby世界裡沒有get set這東西!只有方法
=end

#實體變數
class Apple
  @name = 0

  def initialize(n = 0)
    @name = n
    @name += 1
  end

  def say_my_name
    return @name
  end

  # attr_reader :name # like c# get
  # attr_writer :name # like c# set
  attr_accessor :name # like c# get set

  #     def name #getter
  #         return @name
  #     end

  #     def name=(new_name) #setter
  #         @name = new_name
  #     end
end

# apple = Apple.new("3")
# puts apple.name
# apple.name = "kk"

5.times {
  apple = Apple.new
  puts apple.name
}

# puts 1+2
# puts 1.+(2) 1互叫了＋方法帶入參數為2

#類別變數
class Brid
  @@counter = 0

  def initialize
    @@counter += 1
  end

  def self.counter
    return @@counter
  end
end

5.times { Brid.new }
p Brid.counter
