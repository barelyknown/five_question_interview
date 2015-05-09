require_relative "../fibonacci_computer"

RSpec.describe "Problem 3: First 100 Fibonacci" do
  class Problem3
    include FibonacciComputer
  end
  subject do
    Problem3.new
  end
  it "computes a list of the correct length" do
    expect(subject.compute_fibonacci.length).to eq 100
  end
  it "computes a list that has the first 10 correct" do
    expect(subject.compute_fibonacci[0,10]).to eq [0,1,1,2,3,5,8,13,21,34]
  end
end
