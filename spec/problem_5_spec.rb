require_relative "../one_to_niner"

RSpec.describe "Problem 5: 1 to 9 math" do
  class Problem5
    include OneToNiner
  end

  subject do
    Problem5.new
  end

  it "calculates the given solution" do
    expect(subject.one_to_niners).to include [1,"+",2,"+",3,nil,4,"-",5,"+",6,nil,7,"-",8,"+",9]
  end

  it "calculates the correct number of solutions" do
    expect(subject.one_to_niners.length).to eq 11
  end
end
