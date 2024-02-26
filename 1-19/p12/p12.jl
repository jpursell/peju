
using Combinatorics
using Primes
using Test

function n_divisors(n)
    divisors = Set()
    for combo in combinations(factor(Vector, n))
        push!(divisors, prod(combo))
    end
    return length(divisors) + 1
end

@test n_divisors(1) == 1
@test n_divisors(3) == 2
@test n_divisors(6) == 4
@test n_divisors(10) == 4
@test n_divisors(15) == 4
@test n_divisors(21) == 4
@test n_divisors(28) == 6

function p12()
    n = 1
    while true
        t = sum(1:n)
        if n_divisors(t) > 500
            return t
        end
        n += 1
    end
end

p12()