size = gets.to_i
cards = gets.split(' ').map(&:to_i)
alice_cards = []
bob_cards = []

def game(alice_cards, bob_cards, cards)
  return alice_cards, bob_cards if cards.empty?

  _max = cards.max
  _max_index = cards.index(_max)
  alice_cards << _max
  cards.delete_at(_max_index)

  return alice_cards, bob_cards if cards.empty?

  _max = cards.max
  _max_index = cards.index(_max)
  bob_cards << _max
  cards.delete_at(_max_index)

  game(alice_cards, bob_cards, cards)
end

alice_cards, bob_cards = game(alice_cards, bob_cards, cards)

alice_points = alice_cards.inject(:+)
bob_points = bob_cards.inject(:+)
bob_points ||= 0

puts alice_points - bob_points