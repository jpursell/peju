
function even_fib(n)
    val = 2
    prev_val = 1
    even_fib_sum = 2
    while true
        new_val = val + prev_val
        if iseven(new_val)
        prev_val = val
        val = new_val

