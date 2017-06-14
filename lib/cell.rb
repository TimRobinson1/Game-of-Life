class Cell
  attr_writer :neighbours
  
  def initialize
    @live = false
    @neighbours = []
  end

  def alive?
    @live
  end
end
