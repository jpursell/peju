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

@test sum_of_divisors(220) == 284
@test sum_of_divisors(284) == 220
@test sum_of_divisors(1) == 0

function amicable(n)
    if n == 1
        return false
    end
    b = sum_of_divisors(n)
    if b == n
        return false
    end
    c = sum_of_divisors(b)
    return c == n
end

@test amicable(220) == true
@test amicable(1) == false

function p21()
    a = Set()
    for  i in 1:10000
        if amicable(i)
            push!(a, i)
        end
    end
    print(a)
    return sum(a)
end
@test p21() != 40285
@test p21() != 40284
p21()