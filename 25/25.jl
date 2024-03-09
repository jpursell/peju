# https://projecteuler.net/problem=25

using Test

function p25(d)
    a = big(1)
    b = big(0)
    n = big(1)
    while true
        if a >= big(10)^(big(d-1))
            return (n, a)
        end
        c = a + b
        b = a
        a = c
        n += 1
    end
end
(n, a) = p25(3)
@test n == 12
(n, a) = p25(1000)
println(a)
println(n)
@test n != 21
@test n != 47847