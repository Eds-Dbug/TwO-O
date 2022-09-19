require './Question'
require './Player'
require './Game'

player1 = Player.new('Bob')
player2 = Player.new('Ross')
player2.lives = 0
players = [player1, player2]

new_game = Game.new(players)
new_game.start

