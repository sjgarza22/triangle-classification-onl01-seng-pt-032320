class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if valid_triangle? != true
      raise TriangleError
    else
      if @a == @b && @b == @c && @a == @c
        :equilateral
      elsif @a == @b || @b == @c || @a == @c
        :isosceles
      else
        :scalene
      end
    end
  end

  def valid_triangle?
    if @a > 0 && @b > 0 && @c > 0
      if (@a + @b) > @c && (@b + @c) > @a && (@a + @c) > @b
        true
      end
    else
      false
    end
  end

  class TriangleError < StandardError
  end
end
