class FizzBuzz

  class FizzBuzzError < StandardError; end

  class NumberTooSmallError < FizzBuzzError; end

  class NumberTooLargeError < FizzBuzzError; end

  def initialize(upto)
    @upto = upto
    @generated = []
  end

  def generate
    fizz_buzz = []
    1.upto(@upto) do |i|
      @generated << self.class.calculate(i)
    end
     @generated
  end

  def self.calculate(number)
    raise NumberTooSmallError, "Number is too small. Must be between 1 and 100" if number <= 0
    replace_return = ''
    replace_return << 'fizz' if number % 3 == 0
    replace_return << 'buzz' if number % 5 == 0

    return replace_return.empty? ? number : replace_return
  end

  def print
    self.generate if @generated.empty?
    puts @generated.join("\n")
  end

end
