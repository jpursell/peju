using Test

function count_letters(n)
    d = Dict([
        (1, "one"),
        (2, "two"),
        (3, "three"),
        (4, "four"),
        (5, "five"),
        (6, "six"),
        (7, "seven"),
        (8, "eight"),
        (9, "nine"),
        (10, "ten"),
        (11, "eleven"),
        (12, "twelve"),
        (13, "thirteen"),
        (14, "fourteen"),
        (15, "fifteen"),
        (16, "sixteen"),
        (17, "seventeen"),
        (18, "eighteen"),
        (19, "nineteen"),
        (20, "twenty"),
        (30, "thirty"),
        (40, "fourty"),
        (50, "fifty"),
        (60, "sixty"),
        (70, "seventy"),
        (80, "eighty"),
        (90, "ninety"),
        (100, "hundred"),
    ])
    if n == 0
        return 0
    elseif n <= 20
        return length(d[n])
    elseif n < 100 && n ÷ 10 * 10 == n
        return length(d[n])
    elseif n < 100
        tens = n ÷ 10 * 10
        ones = n - tens
        return length(d[tens]) + length(d[ones])
    elseif n < 1000
        hundreds = n ÷ 100
        ret = length(d[hundreds]) + length("hundred")
        rem = n - hundreds * 100
        if rem == 0
            return ret
        end
        ret += length("and") + count_letters(rem)
        return ret
    elseif n == 1000
        thousands = n ÷ 1000
        rem = n - thousands * 1000
        return length(d[thousands]) + length("thousand")
    else
        error("not implemented")
    end
end


# one
# two
@test count_letters(1) == 3
@test count_letters(2) == 3
@test count_letters(3) == 5
@test count_letters(4) == 4
@test count_letters(5) == 4
# ...
# ten
@test count_letters(10) == 3
# eleven
@test count_letters(11) == 6
# twelve
@test count_letters(12) == 6
# ...
# twenty
@test count_letters(20) == 6
# twenty one
@test count_letters(21) == 9
# twenty two
@test count_letters(22) == 9
# ...
# thirty
@test count_letters(30) == 6
# thirty one
@test count_letters(31) == 9
# ninety nine
@test count_letters(99) == 10
# one hundred
@test count_letters(100) == 10
# one hundred and one
@test count_letters(101) == 16
# one hundred and two
@test count_letters(102) == 16
# ...
# two hundred
@test count_letters(200) == 10
# two hundred and one
@test count_letters(201) == 16
# nine hundred and ninety nine
@test count_letters(999) == 24
# one thousand
@test count_letters(1000) == 11

function p17(last)
    sum = 0
    for n in 1:last
        sum += count_letters(n)
    end
    return sum
end

@test p17(5) == 19

p17()