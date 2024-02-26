using Test
function read_sorted_names()
    file = open("p22/0022_names.txt")
    lines = join(readlines(file))
    ranges = findall(r"\"(.*?)\"", lines)
    return sort(map(x -> chop(lines[x], head=1, tail=1), ranges))
end
function alpha(c)
    return Int(c) - 64
end
function word_val(word)
    return sum(map((c) -> alpha(c), collect(word)))
end

function find_name(input)
    for (index, name) in enumerate(read_sorted_names())
        if name == input
            return index
        end
    end
    return 0
end

@test find_name("COLIN") == 938

function p22()
    sum = 0
    for (index, name) in enumerate(read_sorted_names())
        sum += word_val(name) * index
    end
    return sum
end

@test word_val("COLIN") == 53
@test p22() != 71346322
@test p22() == 871198282
p22()