require './interface.rb'
require './factories.rb'


game_store = GameStore.new(1, :rpg)
game_store.show_games
game_store = GameStore.new(1, :arcade)
game_store.show_games