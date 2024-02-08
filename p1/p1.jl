using Printf
using Test

println("hello")

# looking for the sum of numbers below n which are multiples of 3 or 5
function p35(n)
    s3 = Set(3:3:(n-1))
    s5 = Set(5:5:(n-1))
    s35 = union(s3, s5)
    ret = sum(s35)
    return ret
end

@test p35(10) == 23

@printf("the answer is %i", p35(1000))

