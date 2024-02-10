using Primes
using Test

function find_nth_prime(n)
    p = 1
    for i = 1:n
        println(p)
        p = nextprime(p+1)
        println(p)
    end
    return p
end

@test find_nth_prime(6) == 13

println(find_nth_prime(10001))