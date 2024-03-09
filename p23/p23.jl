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

function p23()
    a = []
    max_val = 28123
    for i in 1:max_val
        if abundant(i)
            push!(a, i)
        end
    end
    s = Set()
    for x in a
        for y in a
            v = x + y
            if v > max_val
                continue
            end
            push!(s, x+y)
        end
    end
    t = 0
    for i in 1:max_val
        if !(i in s)
            t += i
        end
    end
    return t
end


@test sum_of_divisors(28) == 28
@test sum_of_divisors(12) == 16
@test abundant(12) == true

p23()