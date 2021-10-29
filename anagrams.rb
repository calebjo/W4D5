def first_anagram?(str1, str2)
    str1_anas = str1.split("").permutation.to_a
    str1_anas.include?(str2.split(""))
end

# O(n!)

def second_anagram?(str1, str2)
    split1 = str1.split("")
    split2 = str2.split("")

    split1.each_with_index do |ele, i|
        j = split2.index(ele)
        return false if j.nil?
        split2.delete_at(j)
    end

    split2.empty?
end

# O(n^2)

def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort
end

# O(nlog(n))

def fourth_anagram?(str1, str2)
    hash = Hash.new(0)
    str1.each_char {|char| hash[char] += 1 }
    str2.each_char {|char| hash[char] += 1 }

    hash.all? {|k, v| v == 2 }
end

# O(n)
