class FizzBuzz

  def initialize(upto)
    @upto = upto
  end

  def generate
    fizz_buzz = []
    1.upto(@upto) do |i|
      fizz_buzz << i
    end
    fizz_buzz
  end


end
