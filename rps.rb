puts "Shall we play a game? "

player_score = 0

computer_score = 0

games = 0

# while  loop here
begin
  puts ""
  user_choice = 0

  while true #loop if user input is not what is required
    puts "Do you choose 1) rock, 2) paper or 3) scissors?"
    user_choice = gets.chomp.to_i
    # if user_choice != 1 || user_choice != 2 || user_choice != 3
    #   puts "That is not one of the choices, try again." 
    # end
    break if user_choice == 1 || user_choice == 2 || user_choice == 3

    puts "That is not one of the choices, try again."
  end

if user_choice == 1
  puts "You chose rock"
elsif user_choice == 2
  puts "You chose paper"
elsif user_choice == 3
  puts "You choose scissors"
else puts "That is not one of the choices, try again."
end

choices = ["rock", "paper", "scissors"]

comp_choice = [1, 2, 3].sample

print "."
sleep 0.2
print "."
sleep 0.2
puts "."
sleep 0.2

# Associating the string array to the integer array
puts "Computer chose #{choices[comp_choice -1]}"

if user_choice == 1 && comp_choice == 2
  puts "Computer wins!"
  computer_score += 1
  games += 1

elsif user_choice == 2 && comp_choice == 3
  puts "Computer wins!"
  computer_score += 1
  games += 1

elsif user_choice == 3 && comp_choice == 1
  puts "Computer wins!"
  computer_score += 1
  games += 1

elsif user_choice == comp_choice
  puts "It's a tie!"
  games += 1

else 
  puts "You win!"
  player_score += 1
  games += 1
end

puts "Score: Player: #{player_score} - Computer: #{computer_score} Out of #{games} game(s)"

puts "Shall we play again: Y or N"
answer = gets.chomp.upcase
end while answer == "Y"

