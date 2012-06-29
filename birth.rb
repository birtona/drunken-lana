# Happy birthday! Ask what year a person was born in, then the
# month, and then the day. Figure out how old they are, and give
# them a big SPANK! for each birthday they have had.


puts 'Hiya, what year you were born?'

year = gets.chomp

puts 'Which month was it? Give me the number of the month please'

month = gets.chomp

puts 'And what was the day, finally?'

day = gets.chomp

birth = Time.mktime(year, month, day)   

time =Time.now

seconds = time-birth

birthdays = seconds/60/60/24/365.25

x = birthdays.to_i

x.times do
puts 'SPANK!'
end


