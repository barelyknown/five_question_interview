module SumStrategies
  def sum_using_for_loop(numbers)
    sum = 0
    for number in numbers
      sum += number
    end
    sum
  end

  def sum_using_while_loop(numbers)
    sum = 0
    while numbers.any?
      sum += numbers.shift
    end
    sum
  end

  def sum_using_recursion(numbers, sum = 0)
    return sum if numbers.empty?

    sum_using_recursion(numbers, sum += numbers.shift)
  end
end
