
def roman num

  while num > 10000 || num <= 0 
    puts 'Es sollte eine ganze Zahl zwischen 1 und 10000 sein'
    num = gets.chomp.to_i
  end

  puts 'In modernen römischen Zahlen sieht diese Zahl so aus:' 


  
m = 'M' * (num/1000)
d = 'D' * ((num%1000)/500)
c = 'C' * ((num%500)/100)
l = 'L' * ((num%100)/50)
x = 'X' * ((num%50)/10)
v = 'V' * ((num%10)/5)
i = 'I' * (num%5) 

# ersetze 'IIII' durch 'IV'
 

if c == 'CCCC' && d != 'D'
   c = 'CD'
elsif c == 'CCCC'
   d ='CM'
   c = ''
end


if x == 'XXXX' && l != 'L'
   x = 'XL'
elsif x == 'XXXX'
   l = 'XC'
   x = ''
end

if i == 'IIII' && v != 'V'
   i = 'IV'
elsif i == 'IIII'
   v = 'IX'
   i= ''

end

puts m + d + c + l + x + v + i

end


puts 'Bitte gebe eine (ganze) Zahl zwischen eins und Zehntausend ein'

num = gets.chomp.to_i 
roman num
