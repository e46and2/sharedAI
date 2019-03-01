require 'pry'
class Board
<<<<<<< HEAD
  
  attr_accessor :cells  

=======
  #Hi Karly! Great job!!
  attr_accessor :cells
>>>>>>> d40ca7bf64992f9f713b39c1c3fc0feb9c56aea3

  def initialize
    self.reset!
  end

  def cells
    @cells
  end

  def reset!
    self.cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(input)
    #binding.pry
<<<<<<< HEAD
    @cells[input.to_i - 1] 
  end

  def full?
    if @cells.count("X") + @cells.count("O") == 9
      true
    else false 
    end 
  end
=======
    @cells[input.to_i - 1] << ""
  end

  def full?
    full = false
  full_counter = 0
  @cells.each do |square|
    if square == "X" || square == "O"
      full_counter = full_counter + 1
    end
    if full_counter == 9
      full = true
    end
  end
  return full
  end
>>>>>>> d40ca7bf64992f9f713b39c1c3fc0feb9c56aea3

  def turn_count
     @cells.count{|token| token == "X" || token == "O"}
  end

  def taken?(input)
    if cells[input.to_i - 1] == "X" || cells[input.to_i - 1] == "O"
      return true
    else
      return false
    end
  end

  def valid_move?(input)
    if input.to_i > 0 && input.to_i < 10
      if taken?(input) == false
        return true
      else
        return false
      end
    else
      return false
    end
  end
<<<<<<< HEAD
  
  def update(position, player)
    @cells[position.to_i - 1] = player.token
  end 
end

=======
end
>>>>>>> d40ca7bf64992f9f713b39c1c3fc0feb9c56aea3
