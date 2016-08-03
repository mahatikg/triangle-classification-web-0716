class Triangle

  attr_reader :sideA, :sideB, :sideC

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    if sideA <= 0 || sideB <= 0 || sideC <= 0
      raise TriangleError
    elsif ((sideA + sideB) <= sideC) || ((sideA + sideC) <= sideB) || ((sideB + sideC) <= sideA)
      raise TriangleError
    elsif sideA == sideB && sideB == sideC
      return :equilateral
    elsif sideA == sideB || sideA == sideC || sideB == sideC
      return :isosceles
    elsif sideA != sideB || sideA != sideC || sideB != sideC
      return :scalene
    else
      raise TriangleErrror
    end
  end


end

class TriangleError < StandardError

end
