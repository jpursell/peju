# https://projecteuler.net/problem=24
using Combinatorics

function lex_orders(n)
    for t in permutations(0:n)
        print(t)
    end
end

lex_orders(2)

nthperm(0:9, 1000000)