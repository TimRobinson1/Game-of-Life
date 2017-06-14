class Cell
  attr_writer :neighbours

  def initialize
    @active = false
    @neighbours = []
  end

  def activate
    @active = true
  end

  def deactivate
    @active = false
  end

  def active_neighbours
    @neighbours.count { |cell| cell.active? }
  end

  def active?
    @active
  end
end
