
def collatz(n)
  sequence = []
  until n == 1
    if n % 2 != 0 
        n = 3 * n + 1
        sequence.push(n)
      else
        n = n/2
        sequence.push(n)
    end
  end
  return sequence
end

def iterator
  counter = 1
  current_longest_sequence = []
  until counter == 1000000
    seq = collatz(counter)
    if seq.length > current_longest_sequence.length
      current_longest_sequence = seq
      counter+=1
    else
      counter+=1
    end
  end
    puts "Starting number is #{current_longest_sequence[0]}.  
    Sequence length is #{current_longest_sequence.length}"
end

iterator