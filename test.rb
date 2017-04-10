# test branch
class ExceptionTest
  def test
    begin
      1/0
    rescue
      p "error"
      raise
    rescue
      p "ERROR"
    end
  end
end

obj = ExceptionTest.new

begin
  obj.test
rescue => ex
  p "other"
  p "class: #{ex.class}"
end