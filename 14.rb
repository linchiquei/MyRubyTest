#practice 1
def calc_parking_fee(vehicle_type, parking_hour)
  if (vehicle_type == :motocycle)
    return 20
  elsif (vehicle_type == :car)
    parking_hour = parking_hour.ceil
    total = 0
    if (parking_hour <= 2)
      total = parking_hour * 40
    else
      total = (parking_hour - 2) * 30 + 80
    end
    return total >= 500 ? 500 : total
  end
end

#symbol like enum
puts calc_parking_fee(:motocycle, 2)  # 印出 20
puts calc_parking_fee(:motocycle, 8)  # 印出 20

puts calc_parking_fee(:car, 0.3)      # 印出 40
puts calc_parking_fee(:car, 1.5)      # 印出 80
puts calc_parking_fee(:car, 4)        # 印出 140
puts calc_parking_fee(:car, 5.5)      # 印出 200
puts calc_parking_fee(:car, 18)       # 印出 500

#practice 2
class ATM
  attr_reader :balance # like c# get

  def initialize(value)
    @balance = value
  end

  def withdraw(n)
    @balance -= n
  end

  def deposit(n)
    @balance += n
  end
end

atm = ATM.new(10)

atm.withdraw(5)
puts atm.balance  # 印出 5

atm.deposit(10)
puts atm.balance  # 印出 15
