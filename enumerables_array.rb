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
    a = [1, 2, 3] # my_each = a.each
   p a.my_select { |num| num > 1 } # => [2, 3]
   p a.my_select { |num| num == 4 } # => []

end


