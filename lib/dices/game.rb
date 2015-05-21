require_relative 'data_manager'
require_relative 'auth'
require_relative 'dice'

module Dices
  class Game

    include DataManager
    include Auth
    def initialize
      @dice1 = Dice.new(6)
      @dice2 = Dice.new(6)
    end

    def run bet, stake = 100
      puts "Вы поставили #{stake} рублей на #{bet}"
    end
  end
end