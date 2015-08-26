require 'stringio' #for intercepting STDOUT
require 'fizzbuzz'

RSpec.describe FizzBuzz, '#generate' do

  it "generates numbers up to the end" do
    fizz_buzz = FizzBuzz.new(20)
    expect(fizz_buzz.generate.size).to eq(20)
  end

  it "replaces numbers divisable by 3 with 'fizz'" do
    fizz_buzz = FizzBuzz.new(20)
    (1..20).select {|i| i % 3 == 0 && i % 5 != 0}.each do |i|
      expect(fizz_buzz.generate[i - 1]).to eq('fizz')
    end
  end

  it "replaces numbers divisable by 5 with 'buzz'" do
    fizz_buzz = FizzBuzz.new(100)
    (1..100).select {|i| i % 5 == 0 && i % 3 != 0}.each do |i|
      expect(fizz_buzz.generate[i - 1]).to eq('buzz')
    end
  end

  it "replaces numbers divisible by 3 AND 5 with fizzbuzz" do
    fizz_buzz = FizzBuzz.new(100)
    (1..100).select {|i| i % 15 == 0}.each do |i|
      expect(fizz_buzz.generate[i - 1]).to eq('fizzbuzz')
    end
  end
end

RSpec.describe FizzBuzz, '#calculate' do

  it "does nothing to numbers not divisable by 3 or 5" do
    (1..100).select {|i| i % 3 != 0 && i  % 5 != 0}.each do |i|
      expect(FizzBuzz.calculate(i)).to eq(i)
    end
  end

  it "calculates 3s to be 'fizz'" do
    (1..100).select {|i| i % 3 == 0 && i % 5 != 0}.each do |i|
      expect(FizzBuzz.calculate(i)).to eq('fizz')
    end
  end

  it "calculates 5s to be 'buzz'" do
    (1..100).select {|i| i % 5 == 0 && i % 3 != 0}.each do |i|
      expect(FizzBuzz.calculate(i)).to eq('buzz')
    end
  end

  it "calculates 3s and 5s to be 'fizzbuzz'" do
    (1..100).select {|i| i % 15 == 0}.each do |i|
      expect(FizzBuzz.calculate(i)).to eq('fizzbuzz')
    end
  end
end

RSpec.describe FizzBuzz, '#print' do

  before do
    $stdout = StringIO.new
  end

  after do
    $stdout = STDOUT
  end

  it "prints fizzbuzz correctly" do
    fizz_buzz = FizzBuzz.new(15)
    fizz_buzz.print
    expect($stdout.string).to eq("1\n2\nfizz\n4\nbuzz\nfizz\n7\n8\nfizz\nbuzz\n11\nfizz\n13\n14\nfizzbuzz\n")
  end
end
