# https://projecteuler.net/problem=23
using Combinatorics
using Primes
using Test

function sum_of_divisors(n)
    divisors = Set()
    if n == 1
        return 0
    end
    push!(divisors, 1)
    for combo in combinations(factor(Vector, n))
        p = prod(combo)
        if p < n
            push!(divisors, prod(combo))
        end
    end
    return sum(divisors)
end

function abundant(n)
    return sum(sum_of_divisors(n)) > n
end

@test sum_of_divisors(28) == 28
@test sum_of_divisors(12) == 16
@test abundant(12) == true

# function p23()