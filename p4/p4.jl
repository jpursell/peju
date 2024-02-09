using Test

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 
# 2-digit numbers is 
# 9009 = 91 x 99

# Find the largest palindrome made from the product of two 
# 3-digit numbers.

function largest_palindrome(n)
    n1 = 10^n - 1
    n2 = 10^n - 1
    # make an iterator that will output pairs in this order
    #    99 98 97
    # 99 1  3  6
    # 98 2  5
    # 97 4
    return 0
end

@test largest_palindrome(2) == 9009