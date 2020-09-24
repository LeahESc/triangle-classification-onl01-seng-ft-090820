class Triangle
  attr_accessor :x, :y, :z, :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end 
  
  def kind
    if x + y < z || y + z < x || x + z < y || x <= 0 || x == nil || y <=  0 || y == nil || z <=  0 || z == nil 
        raise TriangleError
     elsif x == y && y == z && x == z
      :equilateral
    elsif (x == y && x !=z) || (y == z && x != z) || (z == x && x != y)
      :isosceles
    elsif x != y && y != z && x != z
      :scalene
    end 
  end
  
  class TriangleError < StandardError
    def message 
      puts "That's no triangle!"
    end
  end

end
