class Triangle
  attr_accessor :x, :y, :z, :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end 
  
  def kind
    if x
      x == y && y == z 
      :equilateral
    elsif x == y && x !=z 
      :isosceles
      
  end 
  
  class TriangleError < StandardError

    end

end
