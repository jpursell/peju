using Test

function chain_len(n)
    steps = 0
    while n != 1
        if iseven(n)
            n = n ÷2
            steps += 1
        else
            n = 3n + 1
            steps += 1
        end
    end
    return steps + 1
end

@test chain_len(13) == 10

function p14()
    best_start = 1
    best_size = chain_len(1)
    for n in 2:999999
        val = chain_len(n)
        if val > best_size
            best_start = n
            best_size = val
        end
    end
    return best_start
end

p14()