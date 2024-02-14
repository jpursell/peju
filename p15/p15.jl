using Test

function p15(n)
    cur_row = zeros(Integer, 2n + 1)
    next_row = zeros(Integer, 2n + 1)
    cur_row[1] = 1
    for _ in 1:2n
        next_row = cur_row
        next_row[2:end] += cur_row[1:end-1]
        cur_row = next_row
    end
    return cur_row[n+1]
end
@test p15(2) == 6
@test p15(3) == 20
p15(20)

