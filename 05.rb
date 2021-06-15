profile = {name:"kk",age:18}
p profile.keys
p profile.values

p profile[:name]

p 2.object_id
p 2.object_id
p :one.object_id
p :two.object_id

www = [:one, :two, :three]
puts www

index = 0
p index.object_id
p index.object_id

name = "kk"
p name.object_id
p name.object_id

p "kk".object_id
p "kk".object_id

p true.object_id
p true.object_id

p nil.object_id
p nil.object_id

#字串轉符號
"name".to_sym
"name".intern
#符號囀字串
:name.to_s
:name.id2name


