class Triangle
  attr_accessor :x, :y, :z, :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end 
  
  def kind
    if x + y < z || y + z < x || x + z < y || x < 0 || x = nil
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end 
     elsif x == y && y == z 
      :equilateral
    elsif x == y || y == z || x == z 
      :isosceles
    else 
      :scalene
    end 
  end
  
  class TriangleError < StandardError
    def message 
      puts "That's no triangle!"
    end
  end

end
