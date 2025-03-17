module Blackjack
  def self.parse_card(card)
    case card
    when 'ace' then 11
    when 'two' then 2
    when 'three' then 3
    when 'four' then 4
    when 'five' then 5
    when 'six' then 6
    when 'seven' then 7
    when 'eight' then 8
    when 'nine' then 9
    else %w[ten jack queen king].include?(card) ? 10 : 0
    end
  end

  def self.card_range(card1, card2)
    val = parse_card(card1) + parse_card(card2)
    case val
    when 4..11 then 'low'
    when 12..16 then 'mid'
    when 17..20 then 'high'
    when 21 then 'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    range_str = card_range(card1, card2)
    case range_str
    when nil then 'P'
    when 'blackjack' then !%w[ten ace].include?(dealer_card) ? 'W' : 'S'
    when 'high' then 'S'
    when 'mid' then parse_card(dealer_card) >= 7 ? 'H' : 'S'
    else 'H'
    end
  end
end
