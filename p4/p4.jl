using Test
using Printf

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 
# 2-digit numbers is 
# 9009 = 91 x 99

# Find the largest palindrome made from the product of two 
# 3-digit numbers.

function check_palindrome(a,b)
    val = a * b
    d = digits(val)
    n = length(d) ÷ 2
    return d[1:n] == d[end:-1:end-n+1]
end

@test check_palindrome(91, 99) == true
@test check_palindrome(92, 99) == false

function largest_palindrome(n)
    max_val = 10^n - 1
    best = 0
    for n1 in max_val:-1:1
        for n2 in n1:max_val
            if check_palindrome(n1, n2)
                if n1 * n2 > best
                    best = n1 * n2
                end
            end
        end
    end
    return best
end

@test largest_palindrome(2) == 9009

@printf("answer: %i\n", largest_palindrome(3))