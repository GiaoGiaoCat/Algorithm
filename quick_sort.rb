def quick_sort(arr)
  return arr if arr.size < 2 # 基线条件：数组为空或只包含一个元素的数组是“有序”的
  pivot = arr[0]
  less = arr.select { |x| x < pivot }
  greater = arr.select { |x| x > pivot }
  quick_sort(less) + [pivot] + quick_sort(greater)
end


arr = [617, 902, 159, 7, 579, 693, 525, 805, 871, 1002, 748, 473, 161, 271, 129, 632, 546, 894, 162, 637, 313]
pp quick_sort(arr)
