module Flyable
  def fly
    puts "i can fly"
  end
end

# class Cat
#     include Flyable
# end

# kitty = Cat.new
# kitty.fly

# class Cat
#     extend Flyable
# end

# Cat.fly

module A
  class Cat
  end
end

module B
  class Cat
  end
end

#冒號在左邊=符號
has_many = :name #symbol
#冒號在右邊=key
{ name: "KK", age: 18 } #key
#2的冒號=namespace
kitty = A::Cat.new
nancy = B::Cat.new
