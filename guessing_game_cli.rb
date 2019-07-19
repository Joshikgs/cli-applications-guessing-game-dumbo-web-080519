def help
    puts ""
    puts "Here is a list of available commands."
    puts ""
    puts "+ help      - to display this message"
    puts "+ start     - start game"
    puts "+ stop      - stop current game"
    puts "+ exit      - closes the game"
    puts ""
    puts ""
    puts "This program was created on 7/19/2019 just for fun."
    puts "I just finished the bootcamp prework from Flatiron School"
    puts "and now I'm bored because I have nothing do to until my cohort begins...."
    puts "So, I decided to make an upgraded (full) version of the"
    puts "CLI application from the guessing game lab as practice."
    puts ""
    puts "The rules are simple."
    puts "1. The computer generates a random number between 1 and the maximum number(difficulty level)"
    puts "2. You try to guess what that number is."
    puts ""
    puts "The application will keep track of how many wins and losses you have"
    puts "until you stop the game. There is no way to save your progress."
    puts "----------------------------------------------------------------------------------------------"
    puts "                                                                      created by: Josh Nho"
end 

def intro
    puts "WELCOME TO JOSHIK'S FIRST EVER CLI APPLICATION"
    puts "     made with Ruby programming language"
    puts "----------------------------------------------"
    puts ""
end 



def run_guessing_game
    intro
    puts "Welcome to The Guessing Game! (type 'start' to play, type 'help' for more.)"
    user_input = gets.chomp
    until user_input.downcase == "exit"
        round = 1
        wins = 0
        losses = 0
        if user_input.downcase != "exit" && user_input.downcase != "help" && user_input.downcase != "start"
            system('cls')
            intro
            puts "Invalid command, please try again"
            puts "Press 'enter' to continue"
            user_input = gets.chomp
        end 
        if user_input.downcase == "help"
            help
            puts ""
            puts "Press 'enter' to continue"
            user_input = gets.chomp
        elsif user_input.downcase == "start"
            x = nil
            puts "Choose Difficulty - Type 1, 2, or 3"
            puts "                     1 - Easy   (max number = 5)"
            puts "                     2 - Medium (max number = 15)"
            puts "                     3 - Hard   (max number = 100)"
            user_choice = gets.chomp
            until user_choice.to_i == 1 || user_choice.to_i == 2 || user_choice.to_i == 3
                puts "Invalid command, please try again"
                user_choice = gets.chomp
            end
            if user_choice.to_i == 1
                x = 5
            elsif user_choice.to_i == 2
                x = 15
            elsif user_choice.to_i == 3
                x = 100
            end
            system('cls')
            computer_guess = rand(1..x)
            system('cls')
            puts "     Have fun!"
            puts" --------------------"
            until user_input.downcase == "exit" || user_input.downcase == "stop"
                system('cls')
                computer_guess = rand(1..x)
                puts "Type 'stop' to end game and return to introduction screen"
                puts ""
                puts "-----------------"
                puts "Wins = #{wins}"
                puts "Lose = #{losses}"
                puts "-----------------"
                puts ""
                puts "Round #{round}!"
                puts ""
                puts "Guess a number between 1 and #{x}"
                user_input = gets.chomp
                if user_input.to_i == computer_guess
                    puts ""
                    puts "You guessed the correct number!"
                    wins += 1
                    round += 1
                    sleep 0.5
                elsif user_input.to_i != computer_guess && user_input.downcase != "exit" && user_input.downcase != "stop"
                    puts ""
                    puts "Sorry! The computer guessed #{computer_guess}"
                    losses += 1
                    round += 1
                    sleep 0.5
                end
            end
        end 
        system('cls')
        intro
        puts "Welcome to The Guessing Game! (type 'start' to play, type 'help' for more.)"
        user_input = gets.chomp
    end
end