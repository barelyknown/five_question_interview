require_relative "../list_combinator"

RSpec.describe "Problem 2: Combining lists" do
  class Problem2
    include ListCombinator
  end

  subject do
    Problem2.new
  end

  let :list_one do
    ["a","b","c"]
  end

  let :list_two do
    [1,2,3]
  end

  it "combines the lists using alternating elements from each" do
    expect(subject.combine_with_alternates(list_one, list_two)).to eq ["a",1,"b",2,"c",3]
  end
end
