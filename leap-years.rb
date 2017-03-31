puts 'What is the starting year?'
start_year = gets.chomp
puts 'What is the ending year?'
end_year = gets.chomp
puts 'The leap years between ' + start_year.to_s + ' and ' + end_year.to_s + ' are: '

remainder = 4 - ((start_year.to_i)%4)
year = start_year.to_i + remainder.to_i
#puts year

#testing how to remove years divisible by 100 but not 400
while end_year.to_i >= year.to_i + 4
  if ((year.to_i)%4) != 0
    puts year
  elsif ((year.to_i)%400) == 0
    puts year
  elsif ((year.to_i)%100) == 0
    puts year.to_i + 4
  else
    puts year
  end
  year = year.to_i + 4
end
