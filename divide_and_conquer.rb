def sum(ary)
  a = ary.shift
  return a if ary.size.zero?
  a + sum(ary)
end

puts sum([1,2,3])


def find_biggest(arr)
  return arr[0] if arr.size <= 1
  if arr[0] < arr[1]
    arr.delete_at(0)
  else
    arr.delete_at(1)
  end
  find_biggest(arr)
end

arr = [617, 902, 159, 7, 579, 693, 525, 805, 871, 1002, 748, 473, 161, 271, 129, 632, 546, 894, 162, 637, 313]
puts find_biggest(arr)

def calculate_count(arr)
  return 0 if arr.size.zero?
  0 + calculate_count(arr)
end
arr = [617, 902, 159, 7, 579, 693, 525, 805, 871, 1002, 748, 473, 161, 271, 129, 632, 546, 894, 162, 637, 313]
puts calculate_count(arr)
