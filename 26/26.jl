# https://projecteuler.net/problem=26

function get_digits(n, p)
    setprecision(Int(ceil(log2(10)*p)))
    a = []
    v = (BigFloat(1)/n)
    for i in 1:p
        d = Int(floor(v))
        push!(a, d)
        v -= d
        v *= 10
    end
    return a
end

get_digits(3, 100)