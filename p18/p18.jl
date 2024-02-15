using Test

function load_data()
    io = open("p18/data.txt")
    return readlines(io)
end

function parse_data(lines)
    data = []
    for line in lines
        push!(data, map((x) -> parse(Int, x), split(line)))
    end
    return data
end

function find_max_path(data, irow, icol, tot)
    tot += data[irow][icol]
    if irow == length(data)
        return tot
    end
    return max(
        find_max_path(data, irow + 1, icol, tot),
        find_max_path(data, irow + 1, icol + 1, tot)
    )
end

function p18(data)
    return find_max_path(data, 1, 1, 0)
end

@test p18([[3,],[7,4],[2,4,6],[8,5,9,3]]) == 23

p18(parse_data(load_data()))