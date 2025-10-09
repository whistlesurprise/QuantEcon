#Problem Set 1 from 2024

using Plots 

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
function count_positives(A::Array)
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



      