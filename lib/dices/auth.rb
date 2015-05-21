module Dices
  module Auth

    def login!(player)
      puts "Игрок #{player.name} начал игру"
    end

    def logout!(player)
      puts "Игрок #{player.name} вышел из игры"
    end
  end
end

