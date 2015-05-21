class Player
  START_CREDIT = 1000
  attr_accessor :credit
  attr_reader :name

  def initialize name
    @name = name
    @credit = START_CREDIT
  end
end