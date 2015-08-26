require 'fizzbuzz'

RSpec.describe FizzBuzz, '#generate' do
  it "generates numbers up to the end" do
    fizz_buzz = FizzBuzz.new(20)
    expect(fizz_buzz.generate.size).to eq(20)
  end

  it "replaces numbers divisable by 3 with 'fizz'" do
    fizz_buzz = FizzBuzz.new(20)
    (1..20).select {|i| i % 3 == 0}.each do |i|
      expect(fizz_buzz.generate[i - 1]).to eq('fizz')
    end
  end

  it "replaces numbers divisable by 5 with 'buzz'" do
    fizz_buzz = FizzBuzz.new(100)
    (1..100).select {|i| i % 5 == 0}.each do |i|
      expect(fizz_buzz.generate[i - 1]).to eq('buzz')
    end
  end
end
