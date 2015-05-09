module OneToNiner
  def one_to_niners
    numbers = (1..9).to_a
    valid = []
    _operator_list.each do |operators|
      combination = []
      numbers.each_with_index do |n, i|
        combination << n
        combination << operators[i] if i < numbers.length - 1
      end
      if eval(combination.join) == 100
        valid << combination
      end
    end
    valid
  end

  def _operator_list
    operators = ["+","-",nil]
    @operator_list ||= operators.product(*7.times.map { |n| operators})
  end
end
