SUITS = ["Clubs", "Diamonds", "Hearts", "Spades"]
VALUES = ["2", "3", "4", "5", "6","7","8","9", "10", "Jack", "Queen", "King", "Ace"]



player_score = 0
computer_score = 0

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "|        HIGH CARD WINS         |"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts ""
puts "          Let's Begin            "
puts ""

while true

player_card = [VALUES.sample, "of", SUITS.sample]

computer_card = [VALUES.sample, "of", SUITS.sample]

puts ""
puts "You drew the #{player_card}"
puts "The computer drew the #{computer_card}"

if VALUES.index(player_card.first) > VALUES.index(computer_card.first)
  puts ""
  puts "You Win!"
  puts ""
  player_score += 1
elsif VALUES.index(player_card.first) < VALUES.index(computer_card.first)
  puts ""
  puts "The computer wins!"
  puts ""
  computer_score += 1
elsif SUITS.index(player_card.last) > SUITS.index(computer_card.last)
  puts ""
  puts "You win!"
  puts ""
  player_score += 1
elsif SUITS.index(player_card.last) < SUITS.index(computer_card.last)
  puts ""
  puts "The computer wins!" 
  puts ""
  computer_score += 1
elsif player_score + computer_score == 26
  puts ""
  puts "You have played the entire deck."
  pus ""
else
  puts ""
  puts "Both you and the computer have drawn the same card... One of you is cheating. For shame!"
  puts ""
end

puts "Results: You: #{player_score}  --  Computer: #{computer_score} Out of #{player_score + computer_score} game(s)"
puts ""
puts "Wanna play again? Y or N"
answer = gets.chomp.upcase
if answer == "N" || player_score + computer_score == 26
  break
end
end




