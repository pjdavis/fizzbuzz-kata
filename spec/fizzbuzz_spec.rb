require 'fizzbuzz'

RSpec.describe FizzBuzz, '#generate' do
  it "generates numbers up to the end" do
    fizzbuzz = FizzBuzz.new(20)
    expect(fizzbuzz.generate.size).to eq(20)
  end
end
