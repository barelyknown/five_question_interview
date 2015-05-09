require_relative "..//sum_strategies"

RSpec.describe "Problem 1: Sum strategies" do
  class Problem1
    include SumStrategies
  end

  subject do
    Problem1.new
  end

  let :numbers do
    [1,2,3]
  end

  describe "#sum_using_for_loop" do
    it "calculates the correct answer" do
      expect(subject.sum_using_for_loop(numbers)).to eq 6
    end
  end

  describe "#sum_using_while_loop" do
    it "calculates the correct answer" do
      expect(subject.sum_using_while_loop(numbers)).to eq 6
    end
  end

  describe "#sum_using_recursion" do
    it "calculates the correct answer" do
      expect(subject.sum_using_recursion(numbers)).to eq 6
    end
  end
end
