#array
list = [10, 99, 1, 2, 3, 4, 5, 6]
p list[0]
p list[1]
p list[-1]
p list[-2]     #從後面數回來
p list.first
p list.last
p list.length
p list.push(7) #加在後面
p list << 7    #加在後面

p list.sort #只用於當行運算不會改變本體
p list
p list.sort! #加！符號,會改變陣列本體
p list

list2 = %w(ruby php python) #只會產生字串的陣列
p list2

p list.map { |x| x + 2 } #對此陣列每個元素作事
p list.select { |x| x > 3 }
p list.reduce { |sum, x| sum + x }
#對陣列每個元素進行運算,並將結果歸納成一個結果

array = [3, 3, 4, nil, 9, 70, 7].compact.sort.uniq #拿掉陣列中nil值,從小到大排列,去除掉重覆的數
p array

(1..10).to_a  #1~10
(1...10).to_a #1~9
("a".."z").to_a #a~z

#same get odd
(1..100).select { |x| x % 2 == 1 }
#same get odd
(1..100).select { |x| x.odd? }  #取單數
(1..100).select { |x| x.even? } #取偶數

#same sum
p (1..100).reduce { |sum, x| sum + x }
#same sum
p (1..100).sum

#same random
p (1..52).to_a.shuffle.first(5) #洗牌然後拿前面5個
#same random
p (1..52).to_a.sample(5)
