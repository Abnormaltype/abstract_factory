module AbstractGameFactory
  def create(title)
    raise NotImplementedError, "You should implement this method"
  end
end

class RpgFactory
  include AbstractGameFactory
  def create(title)
    Rpg.new title
  end
end

class ArcadeFactory
  include AbstractGameFactory
  def create(title)
    Arcade.new title
  end
end

class GameStore
  def initialize(number_of_games, game_type)
    title = nil
    game_factory = nil

    if game_type == :rpg
      title = 'The Witcher 3: Wild Hunt'
      game_factory = RpgFactory.new
    elsif game_type== :arcade
      title = 'Pac-Man'
      game_factory = ArcadeFactory.new
    end

    @games = []
    number_of_games.times do |i|
      @games << game_factory.create("#{title} #{i + 1}")
    end
  end

  def show_games
    @games.each {|game| game.description}
  end
end