class Player
  START_CREDIT = 1000
  attr_accessor :credit
  attr_reader :name

  def initialize name
    @name = name.capitalize
    @credit = START_CREDIT
  end

  def show_credit
    puts "Ваш лимит: #{@credit} рублей."
  end

  def inc_credit amount
    @credit += amount
  end

  def dec_credit amount
    @credit -= amount
  end
end