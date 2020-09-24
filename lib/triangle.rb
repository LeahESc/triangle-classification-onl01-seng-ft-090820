class Triangle
  attr_accessor :x, :y, :z, :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end 
  
  def kind
    if x == y && y == z 
      :equilateral
    elsif x
  end 
  
  class TriangleError < StandardError

    end

end
