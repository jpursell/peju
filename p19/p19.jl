using Test

function leap_year(n)
    if n % 100 == 0
        if n % 400 == 0
            return true
        end
    elseif n % 4 == 0
        return true
    end
    return false
end

@test leap_year(1900) == false
@test leap_year(2000) == true
@test leap_year(2024) == true
@test leap_year(2023) == false