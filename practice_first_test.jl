#Practice 1

function sum_squares(n::Int) :: Int
    sum = 0
    for i in 1:n
        sum += i^2
    end
    return sum
end

#Practice 2

function arith_sum(a::Int, d::Int, n::Int) :: Int
    return n / 2 * (2 * a + (n - 1) * d)
end

#Practice 3
function check_grade(grade::Int, cheated::Bool, extra_task::Bool)::String
    if cheated || grade < 50
        return "Fail"
    elseif grade >= 100
        return "Error!"
    elseif grade >= 50 && grade <= 89
        return "Pass"
    elseif grade >= 90 && extra_task
        return "Good!"
    else
        return "Excellent!"
    end
end



