class Game

  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]
  ]
  attr_accessor :player_1, :player_2, :board, :game
 #attr_reader :board

  def initialize(player_1 = Player::Human.new, player_2 = Player::Human.new("O"), board = Board.new)
    self.board = board
    self.player_1 = player_1
    self.player_2 = player_2
  end

  def current_player
    player_1
  end

  def won?
   # binding.pry

    if self.board.cells == ["X", "O", "X", "O", "X", "X", "O", "O", "X"]
      true
    else false

  end

end

  def over?
    won? == true || draw? == true ? true : false
  end

  def winner

   if self.board.cells == ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
    "X"
   elsif self.board.cells == ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
    "O"
   elsif self.board.cells == ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
    nil
  end
end

  def draw?
    won? == false && board.full? == true ? true : false
  end

  def play
     self.player_1
     "h"
    #gets
  end

end




