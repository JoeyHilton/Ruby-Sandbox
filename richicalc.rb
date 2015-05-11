puts "Welcome to Ruby Calculator!"
#start of the loop 
calculator_on = true
while calculator_on
# The user inputs his first number
print "What is the first number you would like to use? "
number1 = gets.chomp.to_f

# The user choose an operation
print "Which operation would you like to choose? Add, Subtract, Multiply, or Divide? "
operation = gets.chomp.downcase

# The user inputs his second number
print "What is the second number you would like to use? "
number2 = gets.chomp.to_f

# Depending on what operation is chosen, do that operation
if operation == "add"
  # Add
  puts "#{number1} + #{number2} = #{number1 + number2}"
end
if operation == "subtract"
# Subtract
  puts "#{number1} - #{number2} = #{number1 - number2}"
end
if operation == "multiply"
# Multipy
  puts "#{number1} * #{number2} = #{number1 * number2}"
end
if operation == "divide"
# Divide
  puts "#{number1} / #{number2} = #{number1 / number2}"
end 

print "Do you want to use Ruby Calculator again? Y/N ? "
 calculator_on = gets.chomp.downcase == 'y'
end
# help   end while y == y

  



