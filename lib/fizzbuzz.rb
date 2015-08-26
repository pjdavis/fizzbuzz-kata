class FizzBuzz

  def initialize(upto)
    @upto = upto
  end

  def generate
    fizz_buzz = []
    1.upto(@upto) do |i|
      if i % 3 == 0 && i % 5 == 0
        fizz_buzz << 'fizzbuzz'
      elsif i % 3 == 0
        fizz_buzz << 'fizz'
      elsif i % 5 == 0
        fizz_buzz << 'buzz'
      else
        fizz_buzz << i
      end
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
