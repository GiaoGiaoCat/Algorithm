def binary_search(list, low, high, n, item)
  return if low > high
  n += 1
  mid_pos = low + (high - low) / 2
  k = list[mid_pos]
  return if k == item
  puts "mid_pos #{mid_pos}, low #{low}, high #{high}, k #{list[mid_pos]}, n #{n}"
  if k < item
    binary_search(list, mid_pos + 1, high, n, item)
  else
    binary_search(list, low, mid_pos - 1, n, item)
  end
end

ary = (1..100).to_a
high = ary.size - 1
binary_search(ary, 0, high, 0, 45)
