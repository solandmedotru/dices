require_relative 'core_ext/object'
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
puts "Введите ваше имя и нажмите Enter"
player = Player.new(gets.chomp)

game.login! player
puts "Хотите испытать удачу и сыграть в кости? Yy / Nn"
answer = gets.chomp.downcase
while answer == "y" do
  player.show_credit
  puts "Введите число от 1 до 12:"
  bet = gets.to_i
  puts "Введите вашу ставку"
  money = gets.to_i
  game.run bet, money
  player.show_credit
  puts "Хотите еще испытать удачу и сыграть в кости? Yy / Nn"
  answer = gets.chomp.downcase

end
game.logout! player
player.show_credit