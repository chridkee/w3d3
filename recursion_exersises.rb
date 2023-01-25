def range (start, finish)
    return [] if finish < start 
    arr = []
    return arr if start == finish
    arr << start 
    arr << range(start+1, finish)
    arr.flatten  
end

def better_range(min, max)
    return [] if max <= min
    range(min, max - 1) << max - 1
  end
  
# p range(1, 5)

# def sum_iterative(arr)
#     sum = 0
#     arr.each do |num|
#         sum += num 
#     end 
#     return sum 
# end

# def sum_rec(arr)
#     return arr[0] if arr.length == 1
#     arr[0] + sum_rec(arr[1..-1])
# end

# p sum_rec([1, 2, 4,])

puts
puts "---------------------------------------------"
puts

def exp1(b, n)
    return 1 if n == 0 
    b * exp1(b, n-1)
end

# p exp1(2, 2)
# p exp1(1, 0)
# p exp1(1, 1)
# p exp1(1, 2)
# p exp1(2, 3)
# p exp1(2, 4)
#p exp1(3, 5)
# b * exp1(b, n-1)
# 3 * exp1(3, 5-1) =
# 3 * 3 * exp(3, 4-1)...


def exp2(b, n)
    return 1 if n == 0 
    return b if n == 1

    if n.even? 
       exp2(b, n / 2) * exp2(b, n/2)
    else 
        b * exp2(b, (n-1)/2) * exp2(b, (n-1)/2) 
    end
end

# p exp2(2, 2)
#     #n is even
# # exp2(2, 1) * exp2(2, 1)
#     # n = 1 so both expressions evaluate to be 
# #b * b 
# p exp2(2, 3)
# p exp2(2, 4)
# p exp2(3, 5)
    #n is odd 
# 3 * exp2(3, (5-1)/2) * exp2(3, 2)
    #n is even 
# 3 * exp2(3, (3-1)/2) * exp2(3, 1) * exp2(3, 1)* exp2(3, 1)
    #n == 1 
# 3 * 3 * 3 * 3 * 3

puts
puts "---------------------------------------------"
puts



def deep_dup(ele)
    copy = [] 

    if !ele.is_a?(Array) 
        copy << ele 
        return copy
    end 
    ele.each do |sub_ele|
        if !sub_ele.is_a?(Array)
            copy << sub_ele
        else 
            deep_dup(sub_ele)
        end
    end 
end

thing = [[1, 2], [3,4]]

p deep_dup(1)
p deep_dup([1, 2, 3, 4])
test = deep_dup(thing)
p deep_dup([1, [2], [3, [4]]])


p thing.object_id 
p test.object_id 




puts
puts "---------------------------------------------"
puts

class Array
    def deep_dup_test
        new_array = []
        self.each do |el|
            new_array << (el.is_a?(Array) ? el.deep_dup_test : el)
        end
        new_array
    end


# p [1].deep_dup_test
# p [1, 2, 3, 4].deep_dup_test
# p [[1, 2], [3,4]].deep_dup_test
# p [1, [2], [3, [4]]].deep_dup_test

end


puts
puts "---------------------------------------------"
puts

def fib_iterative (n)
    arr = [0, 1]
    while arr.length < n 
        arr << arr[-1] + arr[-2]
    end
    return arr 
end  

# p fib_iterative(8)

def fib_recursive(n)
    return [0] if n == 1 
    return [0, 1] if n == 2
    shovel_next_num_into = fib_recursive(n-1)
    shovel_next_num_into << shovel_next_num_into[-1] + shovel_next_num_into[-2]
end

def fib_recursive_test(n)
    if n <= 2
      [0, 1].take(n)
    else
      fibs = fibs_rec(n - 1)
      fibs << fibs[-2] + fibs[-1]
    end
end

# p fib_recursive(8)

puts
puts "---------------------------------------------"
puts

def binary_search(array, target) 
    middle_index =(array.length) / 2 
    middle = array[(array.length)/2]
    if array.length < 1 
        return nil
    end 
    if array.length == 1 && 
  
    if middle == target
        return middle_index
    elsif middle > target 
        binary_search(array[(middle_index+1)..-1], target)
    else  
        binary_search(array[0..(middle_index-1)], target)
    end
end


# p binary_search([1, 2, 3], 1) # => 0
# p binary_search([2, 3, 4, 5], 3) # => 1
# p binary_search([2, 4, 6, 8, 10], 6) # => 2
# p binary_search([1, 3, 4, 5, 9], 5) # => 3
# p binary_search([1, 2, 3, 4, 5, 6], 6) # => 5
# p binary_search([1, 2, 3, 4, 5, 6], 0) # => nil
# p binary_search([1, 2, 3, 4, 5, 7], 6) # => nil









      


