class Sum1

    attr_accessor :total

    def initialize(num1, num2)
        @total = num1 + num2
    end

end

class Sum2

    def initialize(a, b)
        @a = a 
        @b = b
    end

    def new_total
        @a + @b
    end

end
sum1 = Sum1.new(5,6)
puts "5 + 6: %s" % sum1.total;


sum2 = Sum2.new(5,6)
puts "5 + 6: %s" % sum2.new_total;