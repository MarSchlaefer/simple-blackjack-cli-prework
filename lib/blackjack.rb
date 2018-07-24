def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand
  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum_of_cards = deal_card + deal_card
  display_card_total(sum_of_cards)
  return sum_of_cards
end

def hit?(sum_of_cards)
  prompt_user
  if get_user_input === "h"
    return sum_of_cards + deal_card
  end
  sum_of_cards
end

def invalid_command
  puts "invalid"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)

end
    
