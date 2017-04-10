=begin
class Robot
  attr_reader :x, :y
  def initialize
    @x = 0
    @y = 0
  end

  def job
    x0, y0 = x, y
    yield(self)
    p "(#{x0}, #{y0}) => (#{x}, #{y})"
  end

  def move(d1, d2)
    @x += d1
    @y += d2
  end
end

robot = Robot.new

robot.job { |r|
  r.move(1, 0)
  r.move(0, 1)
}

robot.job { |r|
  r.move(1, 0)
  r.move(1, 1)
  r.move(0, -3)
}
=end

=begin
class Cat
  attr_reader :value
  def initialize
    @value = 100
  end
  def where_self
    self.value
  end
end

cat = Cat.new.where_self
=end

=begin
def test_method(&block)
  proc = Proc.new {|a| a * a}
  p proc.call(2)
end

test_method
=end