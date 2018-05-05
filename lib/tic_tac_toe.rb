class TicTacToe
  def initialize(board=nil)
    @board = board || Array.new(9, " ")
  end
    WIN_COMBINATIONS=
    [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
  def won?
    WIN_COMBINATIONS.each{|winning_combo| 
    
    index_0 = winning_combo[0]
    index_1 = winning_combo[1]
    index_2 = winning_combo[2]
    
    first_position = board[index_0]
    second_position= board[index_1]
    third_position=board[index_2]

    if first_position=="X"&& second_position=="X"&&third_position=="X"
        return winning_combo
    elsif first_position=="O"&& second_position=="O"&&third_position=="O"
        return winning_combo
    
      end
      }
      return false
end 

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
   end
 
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
 
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i-1
  end
  
  def move(index,token="X")
    @board[index]=token
  end
  def position_taken?(index)
     @board[index]!= " " && @board[index]!=nil
  end

  def valid_move?(index)
    !position_taken?(index) && index.between?(0,8)
end

  def turn 
    puts "Please choose a position from 1-9."
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      token = current_player
      move(index,token)
      display_board
    else
      puts "The move is invalid."
      turn
    end
  
  end
  
  def full
end
  def draw
end

  def over?
end
  def winner
end

  def play 
end
end  
  
  
  
