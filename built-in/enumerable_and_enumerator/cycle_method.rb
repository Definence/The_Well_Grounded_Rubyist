puts



class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }

  class Deck
    def initialize(n = 1)
      @cards = []
      SUITS.cycle(n) do |suit|
        RANKS.cycle(1) do |rank|
          @cards << "#{rank} of #{suit}"
        end
      end
    end

    def cards
      @cards.to_enum
    end
  end
end

deck = PlayingCard::Deck.new
p deck.cards.each { }



puts