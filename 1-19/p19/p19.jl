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

function days_in_month(month, year)
    if month in [4, 6, 9, 11]
        return 30
    elseif month == 2
        if leap_year(year)
            return 29
        else
            return 28
        end
    end
    return 31
end

@test days_in_month(1, 2024) == 31
@test days_in_month(2, 2024) == 29
@test days_in_month(2, 2023) == 28
@test days_in_month(3, 2024) == 31
@test days_in_month(4, 2024) == 30
@test days_in_month(5, 2024) == 31
@test days_in_month(6, 2024) == 30
@test days_in_month(7, 2024) == 31
@test days_in_month(8, 2024) == 31
@test days_in_month(9, 2024) == 30
@test days_in_month(10, 2024) == 31
@test days_in_month(11, 2024) == 30
@test days_in_month(12, 2024) == 31

function p19()
    # day of week: 0:Sunday, 1:Monday, ...
    dow = 1
    day = 1
    month = 1
    year = 1900
    dpm = days_in_month(month, year)
    answer = 0
    while year < 2001
        if dow == 0 && day == 1 && year > 1900
            answer += 1
        end
        dow += 1
        dow %= 7
        day += 1
        if day > dpm
            day = 1
            month += 1
            if month > 12
                month = 1
                year += 1
            end
            dpm = days_in_month(month, year)
        end
    end
    return answer
end

@test p19() != 173

p19()