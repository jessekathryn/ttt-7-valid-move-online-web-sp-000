board = ["O","O","O","O","O","O","O","O","O"]
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} " 
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} " 
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
  end
    
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else board[index] == " " || board[index] == "" 
    false
  end
end