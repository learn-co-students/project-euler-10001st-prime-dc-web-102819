# Implement your object-oriented solution here!

def is_prime?(num)
    if num < 2
        return false
    end

    i = 3

    while i < num
        if num % i == 0
            return false
        end
        i += 1
    end

    return true
end


class Prime

    attr_reader :goal

    def initialize(goal)
        @goal = goal
    end

    def number
        prime_nums = [2]
        i = 3

        while prime_nums.length < self.goal
            if is_prime?(i)
                prime_nums << i
            end
            i += 2
        end
    
        prime_nums[-1]
    end

end