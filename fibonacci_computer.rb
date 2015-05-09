module FibonacciComputer
  def compute_fibonacci(n = 100)
    sequence = [0,1]
    while sequence.length < n
      sequence << sequence[-1] + sequence[-2]
    end
    sequence
  end
end
