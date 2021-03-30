require 'pry'
class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    if @side1 >= (@side2 + @side3) || @side2 >= (@side1 + @side3) || @side3 >= (@side1 + @side2)
      raise TriangleError
    end

    if @side1 <= 0 || @side2 <= 0 ||@side3 <= 0
      raise TriangleError
    end

    if @side1 == nil || @side2 == nil ||@side3 == nil
      raise TriangleError
    end
  end
  def kind
    #  binding.pry

      if @side1 == @side2 && @side2 == @side3 && @side1 == @side3
        return :equilateral
      elsif (@side1 != @side2 && @side1 == @side3) || (@side2 != @side3 && @side1 == @side2) || (@side1 != @side3 && @side2 == @side3)
        return :isosceles
      elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
        return :scalene
    
      end


  end
  def isTriangle?
    if @side1 > 0 && @side2 > 0 && @side3 > 0
      return true
    else
      return false
    end
   
  end
  class TriangleError < StandardError
    def message
      "You need to have a correct size for the Triangles."
    end
  end
end
