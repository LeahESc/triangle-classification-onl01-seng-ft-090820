class Triangle
  attr_accessor :x, :y, :z, :equilateral, :isosceles, :scalene, :sides 
  
  def initialize(x, y, z)
    @sides = [x,y,z]
  end 
  
  def kind
    # @sides.sort 
    if 
      # @sides[0] + @sides[1] <= @sides[2] || @sides.any? {|side| side <= 0}
      x + y < z || z + y < x || x + z < y || x <= 0 || x == nil || y <=  0 || y == nil || z <=  0 || z == nil 
        raise TriangleError
     elsif x == y && y == z && x == z
      :equilateral
    elsif 
      # (@sides[0] == @sides[1] && @sides[1] != @sides[2]) || (@sides[1] == @sides[2] && @sides[1] != @sides[0])
    (x == y && x !=z) || (y == z && x != z) || (z == x && x != y)
      :isosceles
    elsif x != y && y != z && x != z
      :scalene
    end 
  end
  
  class TriangleError < StandardError
  end

end
