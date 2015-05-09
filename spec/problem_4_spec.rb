require_relative "../large_number_formation"

RSpec.describe "Problem 4: Arrange numbers to create largest number" do
  class Problem4
    include LargeNumberFormation
  end

  subject do
    Problem4.new
  end

  let :numbers do
    [50,2,1,9]
  end

  it "arranges them to form the largest number" do
    expect(subject.arrange_to_form_largest_number(numbers)).to eq 95021
  end
end
