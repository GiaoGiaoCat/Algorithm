def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0
  arr.each_with_index do |n, i|
    if n < smallest
      smallest = n
      smallest_index = i
    end
  end
  smallest_index
end

def selection_sort(arr)
  new_arr = []
  until arr.size.zero? do
    smallest_index = find_smallest(arr)
    new_arr << arr[smallest_index]
    arr.delete_at smallest_index
  end
  new_arr
end


# arr = []
# 20.times { arr << Random.new.rand(1000) }
arr = [617, 902, 159, 7, 579, 693, 525, 805, 871, 748, 473, 161, 271, 129, 632, 546, 894, 162, 637, 313]
puts "*" * 10
puts selection_sort(arr)
