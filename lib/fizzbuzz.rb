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
    if number % 3 == 0
      return 'fizz'
    end
    number
  end

end
