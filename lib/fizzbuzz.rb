class FizzBuzz

  def initialize(upto)
    @upto = upto
  end

  def generate
    fizz_buzz = []
    1.upto(@upto) do |i|
      fizz_buzz << self.class.calculate(i)
    end
    fizz_buzz
  end

  def self.calculate(number)
    replace_return = ''
    replace_return << 'fizz' if number % 3 == 0
    replace_return << 'buzz' if number % 5 == 0

    return replace_return.empty? ? number : replace_return
  end

end
