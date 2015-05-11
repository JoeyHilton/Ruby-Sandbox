print "Give me a number: "
number = gets.chomp.to_i
if number % 3 == 0
  puts "This number is divisible by 3!"
end
if number.odd?
  puts "The number is odd!"
else
  puts "The number is even!"
end