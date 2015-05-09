module LargeNumberFormation
  def arrange_to_form_largest_number(numbers)
    largest = nil
    numbers.permutation(numbers.length) do |permutation|
      number = permutation.map(&:to_s).join.to_i
      if largest.nil? || number > largest
        largest = number
      end
    end
    largest
  end
end
