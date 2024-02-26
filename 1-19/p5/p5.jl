# 2520 is the smallest number that can be divided by each of the 
# numbers from 1 to 10 without any remainder.  What is the smallest 
# positive number that is evenly divisible by all of the numbers from 1 to 20?

function p5(n)
    return lcm(1:n)
end

@test p5(10) == 2520

@printf("answer: %i\n", p5(20))
