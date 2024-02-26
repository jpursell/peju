using Test

function p20(n)
    return sum(digits(factorial(big(n))))
end

@test p20(10) == 27

p20(100)