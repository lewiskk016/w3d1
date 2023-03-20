# Hong First Comment
# Kevin First Comment

class Array

    def my_each(&blk)
        i = 0
        while i< self.length

            blk.call(self[i])
            i += 1
        end
        self
    end


# return_value = [1, 2, 3].my_each do |num|
#  puts num

# end.my_each do |num|
#  puts num
# end
# p return_value  # => [1, 2, 3]

    def my_select(&blk)
        result = []
        my_each {|ele| result << ele if blk.call(ele) == true}
        result
    end
#     a = [1, 2, 3] # my_each = a.each
#    p a.my_select { |num| num > 1 } # => [2, 3]
#    p a.my_select { |num| num == 4 } # => []

    def my_reject(&blk)
        result = []
        my_each {|ele| result << ele if blk.call(ele) == false}
        result
    end

    # a = [1, 2, 3]
    # p a.my_reject { |num| num > 1 } # => [1]
    # p a.my_reject { |num| num == 4 } # => [1, 2, 3]

    def my_any?(&blk)
        my_each do |ele|
            return true if blk.call(ele) == true
        end
        false
    end

    def my_all?(&blk)
        my_each do |ele|
            return false if blk.call(ele) == false
        end
        true
    end

    # a = [1, 2, 3]
    # p a.my_any? { |num| num > 1 } # => true
    # p a.my_any? { |num| num == 4 } # => false

    # p a.my_all? { |num| num > 1 } # => false
    # p a.my_all? { |num| num < 4 } # => true

    def my_flatten
        
        result = []
        my_each do |ele| 
            if ele.is_a?(Array)
            result += ele.my_flatten
            else
                result << ele
            end
        end
        result
    end
    p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten

    # def my_zip(*n)

    # end

end
