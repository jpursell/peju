using Primes
using Test

function sum_of_primes_below(n)
    p = 2
    ret = 0
    while p < n
        ret += p
        p = nextprime(p+1)
    end
    return ret
end

@test sum_of_primes_below(10) == 17

print(sum_of_primes_below(2000000))