def sort arr, sorted_array=[]
  unless arr.empty?
  	sorted_array.push(arr.min)
  	arr.delete_at(arr.index {|x| x == arr.min})
  	sort(arr,sorted_array)
  end
  sorted_array
end

def quick_sort arr
	return arr if arr.length <= 1
	split_point = arr[arr.length / 2]
	arr.delete_at(arr.length / 2)
	less_than = arr.select {|x| x < split_point}
	more_than = arr.select {|x| x >= split_point}
	sorted_array = quick_sort(less_than) + [split_point] + quick_sort(more_than)
	sorted_array
end