using Printf
using Test

function even_fib(n)
    val = 2
    prev_val = 1
    even_fib_sum = 2
    while true
        new_val = val + prev_val
        if new_val >= n
            break
        end
        if iseven(new_val)
            even_fib_sum += new_val
        end
        prev_val = val
        val = new_val
    end
    return even_fib_sum
end

@test even_fib(90) == 2 + 8 + 34


@printf("answer %d", even_fib(4000000))
