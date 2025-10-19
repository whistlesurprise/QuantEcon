#Problem Set 1 from 2024

using Plots 
using Statistics

#Question 1
function odd_or_even(n::Int)
    if n % 2 == 0
        return "Even"
    else
        return "Odd"
    end
end

#Question 2
function compare_three(a::Integer, b::Integer, c::Integer)
    t1 = (a, b, c)
    if all(x -> x > 0, t1)
        println("All 3 are positive")
    elseif any(x -> x < 0, t1)
        println("At least one number is not positive")
    else
        println("None are positive")
    end
end

#Question 3
function my_factorial(n::Integer)
    result = 1
    for i in 1:n
        result *= i
    end
    return result
end

#Question 4
function count_positives(A::AbstractVector)
    return count(x -> x > 0, A)
end

#Question 5
function plot_powers(n)
    x = -10:10
    plt = plot(
        xlabel="x",
        ylabel="y",
        title="Powers of x"
    )
    for i in 1:n
        y = [xi^i for xi in x]
        plot!(
            plt, x, y;
            label="x^$i",
            linewidth=3,
            linestyle=:dash
        )
    end
    return plt
end

#Question 6
function count_positives_broadcast(A::AbstractVector)
    return sum(A .> 0)
end

#Question 7
function standard_deviation(x::AbstractVector)
    mean_x = mean(x)
    d = x .- mean_x               
    squared_d = d .^ 2            
    ssd = sum(squared_d)
    var = ssd / (length(x) - 1)
    std = sqrt(var)
    return std
end

#Question 8





      