
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

parse_data(load_data())