require 'csv'

CSV.open('./lib/aaa.csv', 'w') do |csv|
    csv << ['name', 'email', 'age']
    csv << ['yuge', 'sscyuge@gmail.com', '27']
end

CSV.foreach('./lib/aaa.csv') do |row|
    puts "#{row[0]}, #{row[1]}, #{row[2]}"
end