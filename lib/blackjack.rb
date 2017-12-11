def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
   1+rand(11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
x = deal_card+deal_card

 display_card_total(x)
x
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == "h"
    deal_card+num
  elsif input =="s"
    num
  else
    invalid_command
  end



end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
#   Welcome the user
# Deal them their first two cards, i.e. their initial_round
# Ask them if they want to hit or stay
# If they want to hit, deal another card
# If they want to stay, ask them again!
# If their card total exceeds 21, the game ends.

  
    welcome
  # initial_round
  i = 0 
  until i >= 21
     i = hit?(initial_round)
    puts "Your cards add up to #{i}"
  end
"Sorry, you hit #{i}. Thanks for playing!"

end



