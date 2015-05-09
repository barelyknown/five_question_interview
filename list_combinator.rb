module ListCombinator
  def combine_with_alternates(list_one, list_two)
    max_length = [list_one.length, list_two.length].max
    combined = []
    max_length.times do |n|
      combined << list_one[n] if list_one[n]
      combined << list_two[n] if list_two[n]
    end
    combined
  end
end
