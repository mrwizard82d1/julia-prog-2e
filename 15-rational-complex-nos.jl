# Rational and complex numbers

include("00-common.jl")

print_banner("Complex numbers")

print_details("""The global constant, `im`, represents the square root of -1""")
print_expression("3.2 + 7.1im", 3.2 + 7.1im)
print_expression("typeof(3.2 + 7.1im)", typeof(3.2 + 7.1im))

print_details("""Complex numbers are an example of a **Parametric Type**; 
that is, a one type that takes another type as a parameter.
Specifically, the type for complex numbers is `Complex{T}` where
`T` is the parameterized type.
""")
print_expression("Complex{Float64} == ComplexF64", Complex{Float64} == ComplexF64)

print_details("""All operations and elementary functions, such as `exp()`,
`sqrt()`, `sinh()`, `real()`, `imag()`, `abs()`, and so on, are 
also defined on complex numbers.
""")
print_expression("abs(3.2 + 7.1im)", abs(3.2 + 7.1im))
print_expression("sin(3.2 + 7.1im)", sin(3.2 + 7.1im))
print_expression("sinh(3.2 + 7.1im)", sinh(3.2 + 7.1im))
print_expression("exp(3.2 + 7.1im)", exp(3.2 + 7.1im))

print_details("""Finally, one can construct a complex number from other numbers 
using the `complex()` function
""")
print_expression("complex(3, 1", complex(3, 1))
print_expression("complex(1.414, 2.717", complex(1.414, 2.717))

print_banner("Rational numbers")

print_details("""Rational numbers are useful when you wish to work with exact 
ratios of integers, for example, `3 // 4`.\n

The type of the result of this expression is another 
parameterized type, `Rational{Int64}`.
""")
print_expression("3 // 4", 3 // 4)
print_expression("typeof(3 // 4)", typeof(3 // 4))

print_details("""Similar to complex numbers, comparisons and standard operations
are defined on rational types. For example, `float()` converts a 
rational number to a floating point number, and `numerator()` 
and `denominator()` return the numerator and denominator, 
respectively, of the rational number.
""")
print_expression("float(3 // 4)", float(3 // 4))
print_expression("numerator(3 // 4)", numerator(3 // 4))
print_expression("denominator(3 // 4)", denominator(3 // 4))
