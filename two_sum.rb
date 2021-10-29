def bad_two_sum?(arr, target)
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target              
        end
    end
    false
end
# O(n^2)



arr = [0, 1, 5, 7]
# target_arr[6,5,1,-1]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target)
    sorted = arr.sort
    target_arr = sorted.map {|ele| target - ele}
    target_arr.each do |ele|
        return true if sorted.bsearch_index {|x| ele == x} != nil
    end
    false
end

# def b_search(arr,target)
#     return arr if arr.count <=1  

#     mid = arr.length/2

#     lower = b_search(arr[0...mid],target)
#     higher = b_search(arr[mid+1..-1],target)

#     case 
#     end
# end




def two_sum?(arr, target)
    hash = Hash.new(0)
    arr.each_with_index {|ele,i| hash[i] = ele }
    p hash
    hash.any? {|k,v| hash.has_value?(target - v)}
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false