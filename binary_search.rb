def binary_search(list, item)
  low = 0
  high = list.size - 1
  n = 0
  while low <= high do
    n += 1
    mid_pos = low + (high - low) / 2
    k = list[mid_pos]
    break if k == item
    puts "mid_pos #{mid_pos}, low #{low}, high #{high}, k #{list[mid_pos]}, n #{n}"
    if k < item
      low = mid_pos + 1 # 在更高的区间搜索
    else
      high = mid_pos - 1 # 在更低的区间搜索
    end
  end
end

ary = (1..100).to_a
binary_search(ary, 45)
