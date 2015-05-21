require_relative 'dices/game'
require_relative 'player'
module Dices

  RELEASE = '1'
  MIDDLE = '0'
  MINOR = '0'

  def self.version
    [RELEASE, MIDDLE, MINOR].join('.')
  end
end

#puts Dices.version
game = Dices::Game.new
player = Player.new('Andrey')

game.login! player
game.run 12, 150

game.logout! player