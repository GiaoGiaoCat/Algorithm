def sum(ary)
  a = ary.shift
  return a if ary.size.zero?
  a + sum(ary)
end

puts sum([1,2,3])
