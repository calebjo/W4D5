def bad_two_sum?(arr, target)
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target              
        end
    end
    false
end
# O(n^2)



# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target)
    sorted = arr.sort

    mid = arr.length/2

    lower = arr[0...mid]
    higher = arr[mid..-1]

end

def bsort(arr,target)
    return arr if arr.count <=1
    sorted = arr.sort

    mid = arr.length/2

    lower = bsort(arr[0...mid],target)
    higher = bsort(arr[mid+1..-1],target)

    case arr.include?(target - arr[mid])
        when true
            return true
        when false
            return false
    end
end


arr = [0, 1, 5, 7]
p bsort(arr, 6) # => should be true
p bsort(arr, 10) # => should be false