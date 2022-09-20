
# Main entry to app
require './Question'
require './Player'
require './Game'

player1 = Player.new('Bob')
player2 = Player.new('Ross')
players = [player1, player2]
# puts players[0].is_dead

new_game = Game.new(players)

new_game.start