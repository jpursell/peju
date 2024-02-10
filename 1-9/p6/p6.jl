using Printf
using Test
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10 ^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10) ^ 2 = 55 ^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 
# 3025 - 385 = 2640

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

function p6(n)
    square_of_sum = sum(1:n) ^ 2
    @printf("square of sum: %i\n", square_of_sum)
    sum_of_squares = sum(map((x) -> x * x, 1:n))
    @printf("sum of squares: %i\n", sum_of_squares)
    return square_of_sum - sum_of_squares
end

@test p6(10) == 2640

@printf("answer: %i\n", p6(100))