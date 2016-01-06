# Sort the array from lowest to highest using merge sort
def merge_sort(arr)  
  length = arr.length
  return arr if length == 1 || length == 0  # 0 for empty arr
  left = arr.slice(0, length/2)      # split arr each element
  right = arr.slice(length/2, length)

  left_sorted = merge_sort(left)     # recursive
  right_sorted = merge_sort(right)

  merge(left_sorted,right_sorted)    # merge
end

def merge(left_sorted, right_sorted)
  #puts "Left sorted #{left_sorted.length}"   # checkpoint
  #puts "Right sorted #{right_sorted.length}"
  i = 0
  merged = []
  while i < right_sorted.length
    if left_sorted[i] == nil
      merged.push(right_sorted[i])   # right_sorted can get more element if ele are odd number
    elsif left_sorted[i] > right_sorted[i]
      merged.push(right_sorted[i]).push(left_sorted[i])  # swap
    else
      merged.push(left_sorted[i]).push(right_sorted[i])
    end
    i += 1   # move to next element
  end
  merged
end

def maximum(arr)
  merge_sort(arr).last
end

def minimum(arr)
  merge_sort(arr).first
end

#puts merge_sort([4, 5, 7, 2, 9])
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"

result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"
