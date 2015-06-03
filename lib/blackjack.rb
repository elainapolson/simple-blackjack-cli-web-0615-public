def deal_card
  return rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def welcome
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def get_user_input
  gets.chomp
end

def hit?(sum)
  prompt_user 
  case get_user_input
  when "h"
    sum += deal_card
  when "s"
    sum
  end 
end

def invalid_command
  # code invalid_command here
  puts "Your command was invalid, try again!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
until sum > 21
  sum = hit?(sum)
  display_card_total(sum)
end 
  end_game(sum)
end 

    