# frozen_string_literal: true

# do stuff that is testable
class FakeProject
  attr_accessor :x

  def initialize(x=0)
    @x = x.to_i.abs
  end

  def foo
    if @x.even?
      @x / 2
    else
      3 * @x + 1
    end
  end

  def bar
    x = @x
    until x >= 1000
      x *= 10
    end
    a = x.digits.sort.join.to_i
    b = x.digits.sort.reverse.join.to_i
    b - a
  end

  def baz!
    old_x = @x
    digits = @x.digits
    n = digits.length
    @x = digits.map { |digit| digit.to_i ** n }.sum
    puts "narcissistic" if @x == old_x
    @x
  end

  def qux(y)
    return (@x * @x + @x + 2 * @x * y + 3 * y + y * y) / 2 if y.integer? && y.positive?
  end

end


