def first_anagram?(str1, str2)
    str1_anas = str1.split("").permutation.to_a
    str1_anas.include?(str2.split(""))
end
# O(n!)

def second_anagram?(str1,str2)
    
    str1.each_char do |char|
        this_char = str2.index(char)
        return false if i.nil?
        str2.delete_at(i)
    end
    str2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true