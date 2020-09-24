class Triangle
  attr_accessor :length_one, :length_two, :length_three 
  
  def initialize(length_one, length_two, length_three)
    @length_one = length_one 
    @length_two = length_two 
    @length_three = length_three 
  end 
  
  def kind
  end 
  
  class PartnerError < StandardError
    def message
    "you must give the get_married method an argument of an instance of the person class!"
    end

end
