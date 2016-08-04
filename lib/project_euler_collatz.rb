
def even_next(n)
  n/2
end

def odd_next(n)
  ((n * 3) + 1)
end

def next_value(n)
  if(n.odd? && n > 1)
    odd_next(n)
  elsif(n.even?)
    even_next(n)
  else
    1
  end
end

def collatz(n)

  collatz_arr = [n]
  until(next_value(n) == 1)
    collatz_arr << next_value(n)
    n = next_value(n)
  end
  if(next_value(n) == 1)
    collatz_arr << 1
  end
  collatz_arr

end

def longest_collatz

  num_array = []
  array_of_collatz = []
  counter = 3
  while(counter < 1000000)
    num_array << counter
    counter += 2
  end
  num_array.each { |x| array_of_collatz << collatz(x) }
  array_of_collatz.sort_by! { |arr| -arr.length }
  array_of_collatz[0][0]

end
