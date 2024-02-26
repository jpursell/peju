function read_names()
    file = open("p22/0022_names.txt")
    lines = join(readlines(file))
    ranges = findall(r"\"(.*?)\"", lines)
    # return getfield.(collect(matches), :2)
    return map(x->lines(x), ranges)
end
read_names()