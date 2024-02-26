function read_names()
    file = open("p22/0022_names.txt")
    lines = join(readlines(file))
    ranges = findall(r"\"(.*?)\"", lines)
    return sort(map(x->lines[x], ranges))
end
function alpha(c)
    return Int(c) - 64
end
function word_val(word)
    return sum(map((c)->alpha(c), collect(word)))
end
@test word_val("COLIN") == 53