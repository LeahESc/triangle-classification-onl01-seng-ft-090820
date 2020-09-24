class Triangle
  attr_accessor :x, :y, :z, :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end 
  
  def kind
    if x + y < z || y + z < x || x + z < y 
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end 
     elsif x == y && y == z 
      :equilateral
    elsif x == y && x !=z 
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
