 
  # Player chooses a square
  puts ">>>>>>>>>>>>><<<<<<<<<<<<<<<<"
  puts "         Tic Tac Toe         "
  puts ">>>>>>>>>>>>><<<<<<<<<<<<<<<<"
  puts ""
  puts "       Shall we play?"
  puts ""
  puts "Choose a square: "

  @game_board = [
      ['[1]', '[2]', '[3]'],
      ['[4]', '[5]', '[6]'],
      ['[7]', '[8]', '[9]']
    ]
  @game_board.each do |row| 
      puts row.map { |col| col}.join(' ')
    end


  @vis_board = [
      ['[ ]', '[ ]', '[ ]'],
      ['[ ]', '[ ]', '[ ]'],
      ['[ ]', '[ ]', '[ ]']
    ]

@options = [1 ,2, 3, 4, 5 ,6, 7 ,8 ,9]

while true
player_choice = gets.to_i
until @options.include?(player_choice) do 
  puts "That space is already taken. Try again."
  player_choice = gets.to_i 
end
  if player_choice == 1
    @game_board[0][0] = "[X]"
    @options.delete(player_choice) 
  elsif player_choice == 2
    @game_board[0][1] = "[X]"
    @options.delete(player_choice)
  elsif player_choice == 3
    @game_board[0][2] = "[X]"
    @options.delete(player_choice) 
  elsif player_choice == 4
    @game_board[1][0] = "[X]"
    @options.delete(player_choice)
  elsif player_choice == 5
    @game_board[1][1] = "[X]"
    @options.delete(player_choice)
  elsif player_choice == 6
    @game_board[1][2] = "[X]"
    @options.delete(player_choice)
  elsif player_choice == 7
    @game_board[2][0] = "[X]"
    @options.delete(player_choice)
  elsif player_choice == 8
    @game_board[2][1] = "[X]"
    @options.delete(player_choice)
  elsif player_choice == 9
    @game_board[2][2] = "[X]"
    @options.delete(player_choice) 
  else
    puts "That's not a option, dude! Choose again."
  end

# if @options.length > 0 
  computer_choice = @options.sample 
# else 
#   computer_choice = "what"
# end

  if computer_choice == 1
    @game_board[0][0] = "[O]"
    @options.delete(computer_choice) 
  elsif computer_choice == 2
    @game_board[0][1] = "[O]"
    @options.delete(computer_choice)
  elsif computer_choice == 3
    @game_board[0][2] = "[O]"
    @options.delete(computer_choice) 
  elsif computer_choice == 4
    @game_board[1][0] = "[O]"
    @options.delete(computer_choice)
  elsif computer_choice == 5
    @game_board[1][1] = "[O]"
    @options.delete(computer_choice)
  elsif computer_choice == 6
    @game_board[1][2] = "[O]"
    @options.delete(computer_choice)
  elsif computer_choice == 7
    @game_board[2][0] = "[O]"
    @options.delete(computer_choice)
  elsif computer_choice == 8
    @game_board[2][1] = "[O]"
    @options.delete(computer_choice)
  elsif computer_choice == 9
    @game_board[2][2] = "[O]"
    @options.delete(computer_choice) 
  end

  puts "Choose another square:"


  @game_board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end

  def winner
   if @game_board[0][0] == @game_board[0][1] && @game_board[0][1] == @game_board[0][2]
     puts "We have a winner!"
     return true
   elsif @game_board[1][0] == @game_board[1][1] && @game_board[1][1] == @game_board[1][2]
     puts "We have a winner!"
     return true
   elsif @game_board[2][0] == @game_board[2][1] && @game_board[2][1] == @game_board[2][2]
     puts "We have a winner!"
     return true
   elsif @game_board[0][0] == @game_board[1][0] && @game_board[1][0] == @game_board[2][0]
     puts "We have a winner!"
     return true
   elsif @game_board[0][1] == @game_board[1][1] && @game_board[1][1] == @game_board[2][1]
     puts "We have a winner!"
     return true
   elsif @game_board[0][2] == @game_board[1][2] && @game_board[1][2] == @game_board[2][2]
     puts "We have a winner!"
     return true
   elsif @game_board[0][0] == @game_board[1][1] && @game_board[1][1] == @game_board[2][2]
     puts "We have a winner!"
     return true
   elsif @game_board[2][0] == @game_board[1][1] && @game_board[1][1] == @game_board[0][2]
     puts "We have a winner!"
     return true
   elsif @options.empty?
      puts "Cat game! It's a tie." 
   end
  end
  puts "-----------------------------------------"
  puts "Remaining Choices: #{@options}"
  puts "-----------------------------------------"
  if winner || @options.empty? 
    break
  end
end




# Computer chooses a square

# Display board
# Evaluate if there is a winner (three in a row)
# Break if the board fills

# Bonus
# Keep score / multiple games
# Choose:  2 player or against computer
# Player chooses X or O
# puts "Choose X or O"
# player_response = gets.chomp
