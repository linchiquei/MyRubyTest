
#物件化的block
dd_method = ->(n){n+2}
add_lambda = lambda {|n| n+2}
add_proc = Proc.new {|n| n+2 }

# p add_lambda.(1,2,3)  #會顯示引數錯誤
p add_proc.===(1,2,3) #不會顯示引數錯誤
#  p add_method.call(3)
p add_lambda.(3)
p add_proc[3]

#物件導向設計 class name must be const
class Service
    def initialize(value)
        @value = value
    end
    
    def plus_one
        @value + 1
    end
end

p Service.new(2).plus_one

module SomeModule
    module InnerModule
        class MyClass
            CONSTANT = 4
        end
    end
end

p SomeModule::InnerModule::MyClass::CONSTANT

class Animal    
    def eat(food)
    end
    def walk(place)
    end
end

class Monkey < Animal
    def FiveFinger
        p "I have five finger"
    end
end

class People < Monkey
end

class Cat < Animal
    def eat(food)
    end
    def walk(place)
    end
end

class Dog <Animal
    def eat(food)
        p "dog eat #{food}"
    end
    def walk(place)
        p "dog walk on #{place}"
    end
end

me = People.new
you = People.new

me.FiveFinger()
you.FiveFinger()

kit = Cat.new
kit.eat("fish")
kit.walk("park")

dog = Dog.new
dog.eat("sussger")
dog.walk("school")

