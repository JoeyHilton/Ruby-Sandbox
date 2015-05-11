def get_int_values
  [gets, gets].map{ |s| s.chomp.to_f }
end

#while true
puts "Would you like to [add], [multiply], [divide], [subtract], [exponent], or [square root]?"
response = gets.chomp

case response.downcase
when 'add'
  puts "Which numbers would you like to add?"
  operator = :+

when 'subtract'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*

when 'divide'
  puts "Which numbers would you like to divide?"
  operator = :/

when 'exponent'
  puts "Which numbers would you like to exponentiate?"
  operator = :**

when 'square root'
  puts "Which number would you like to get the square root of?"
  operator = "sqrt"

else
  puts "Really???!!! You had one job!"

end

unless operator == "sqrt"
  answer = get_int_values.inject(operator)
else
  answer = Math.sqrt(get_int_values[0])
end
puts "The answer is... #{ answer }"
#end