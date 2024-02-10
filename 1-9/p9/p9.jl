using Test
function check_trip(a, b)
    c = Int(round(sqrt(a^2 + b^2)))
    return a^2 + b^2 == c^2
end
@test check_trip(3, 4) == true
function p9()
    a = 2
    while true
        for b = 1:(a-1)
            if check_trip(a, b)
                c = Int(sqrt(a^2 + b^2))
                if a + b + c == 1000
                    println(a)
                    println(b)
                    println(c)
                    return a * b * c
                end
            end
        end
        a = a + 1
    end
end
p9()