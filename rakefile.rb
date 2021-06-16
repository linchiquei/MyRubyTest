desc "email sender"
task :sendemail do
    puts "123"
    sleep 2
    puts "456"
    sleep 3
    puts "down"
end

# 預設任務
# task :default => :sendemail



namespace :db do
    task :open_the_door do
        puts "open door"
    end
    
    task :goto_toilet => :open_the_door do
        puts "go"
    end
end