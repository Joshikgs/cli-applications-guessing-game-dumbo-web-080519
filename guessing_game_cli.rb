def run_guessing_game
  computer_guess = rand(5) + 1
  puts "Guess a number between 1 and 6"
  user_input = gets.chomp
  if user_input.to_i != computer_guess && user_input != "exit"
      puts "Sorry! The computer guessed #{computer_guess}."
  elsif user_input.to_i == computer_guess
      puts "You guessed the correct number!"
  elsif user_input == "exit"
    puts "Goodbye!"
  end
end