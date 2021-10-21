"""
Print a banner.
"""
function print_banner(text::AbstractString)
    println()
    println(text)
    println("=" ^ length(text))
end

function print_details(text::AbstractString)
    println()
    println(text)
end

function print_expression(text::AbstractString, expression::Bool)
    println("$(text) is $(expression)")
end

function print_expression(text::AbstractString, expression::Any, comment::AbstractString="")
    println("$(text) == $(expression)")
    if length(comment) > 0
        println("$(comment)")
    end
end
