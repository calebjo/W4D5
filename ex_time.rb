
def my_min(array)
    smallest = array[0]
    (0...array.length).each do |i|
        (i...array.length).each do |j|
            smallest = array[j] if array[j] < smallest
        end
    end
    smallest
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5
# O(n^2)

def my_min2(array)
    smallest = array[0]
    array.each do |ele|
        smallest = ele if ele < smallest
    end
    smallest
end

# p my_min2(list)  # =>  -5
# O(n)

def subsum(array)
    sub_arrays = []
    (0...array.length).each do |i|
        (i...array.length).each do |j|
            sub_arrays << array[i..j]
        end
    end
    sub_arrays.map {|sub_arr| sub_arr.sum }.max
end

# list = [-5, -1, -3]
list = [2, 3, -6, 7, -6, 7]
# p subsum(list) # => -1 (from [-1])
# O(n^2)

def subsum2(array)
   current_sum = array[0]
   largest_sum = array[0]

    (1..array.length).each do |i|
        current_sum = 0
        current_sum += array[i]
        largest_sum = current_sum if current_sum > largest_sum
    end

#    array.each do |ele|
#     current_sum += ele if current_sum < current_sum + ele
#    end

   largest_sum = current_sum

end

p subsum2(list) # => -1 (from [-1])