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
