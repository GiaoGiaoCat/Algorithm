# 递归实现二分查找，不是特别好的例子因为基线条件和递归条件不清晰
def binary_search_a(list, low, high, n, item)
  return if low > high
  n += 1
  mid_pos = low + (high - low) / 2
  k = list[mid_pos]
  puts "mid_pos #{mid_pos}, low #{low}, high #{high}, k #{list[mid_pos]}, n #{n}"
  if k < item
    binary_search_a(list, mid_pos + 1, high, n, item)
  else
    binary_search_a(list, low, mid_pos - 1, n, item)
  end
end

ary = (1..100).to_a
high = ary.size - 1
binary_search_a(ary, 0, high, 0, 45)

def binary_search_b(list, n, item)
  return if list.size <= 1
  n += 1
  mid_pos = (list.size) / 2
  k = list[mid_pos]
  puts "k is #{k}"
  if k < item
    puts "< #{list[mid_pos, list.size]}"
    binary_search_b(list[mid_pos, list.size], n, item)
  else
    puts "> #{list[0, mid_pos]}"
    binary_search_b(list[0, mid_pos], n, item)
  end
end
binary_search_b(ary, 0, 45)
