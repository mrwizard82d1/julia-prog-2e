# Integers

include("00-common.jl")

print_banner("Integers of different sizes")
print_expression("Int8", Int8)
print_expression("Int128", Int128)
print_expression("Int32", Int32)
print_expression("Int == Int64", Int == Int64)

print_banner("Unsigned integers prefixed by 'U'")
print_expression("UInt8", UInt8)
print_expression("UInt128", UInt128)
print_expression("UInt", UInt)

print_banner("The architecture word size")
print_expression("Sys.WORD_SIZE", Sys.WORD_SIZE)

print_banner("Minimum and maximum values")
print_expression("typemin(Int16)", typemin(Int16))
print_expression("typemax(Int16)", typemax(Int16))

print_banner("Integer arithmetic overflows **without** warning")
print_expression("typemax(Int)", typemax(Int))
print_expression("typemax(Int) + 1", typemax(Int) + 1)
print_details("""If overflow is not useful, one **must** check the calculation 
terms before evaluating the expression or the result after 
evaluating the expression.
""")

print_banner("Julia supports arbitrary precision integers")
print_expression("BigInt", BigInt)
print_expression("big", big)
print_details("""Using `typemin()` or `typemax()` with `BigInt` or with `big` 
raises a `MethodError`
""")
# Uncomment the following code to see the errors
# print_expression("typemin(BigInt)", typemin(BigInt))
# print_expression("typemax(big)", typemax(big))

print_details("""Arbitrary precision integers arithmetic operations 
(`+`, `-`, `*`, and `/`) and functions, `div` and `rem`.
""")
print_expression("BigInt(3) + big(7)", BigInt(3) + big(7))
print_expression("BigInt(3) - big(7)", BigInt(3) - big(7))
print_expression("BigInt(3) * big(7)", BigInt(3) * big(7))
print_expression("BigInt(3) / big(7)", BigInt(3) / big(7))
print_expression("typeof(BigInt(3) / big(7))", typeof(BigInt(3) / big(7)))
print_expression("div(BigInt(3), big(7))", div(BigInt(3), big(7)))
print_expression("rem(BigInt(3), big(7))", rem(BigInt(3), big(7)))
print_expression("BigInt(3) ^ big(7)", BigInt(3) ^ big(7))

print_details("""Additionally, one can combine integers and arbitrary precision 
integers in arithmetic expressions
""")
print_expression("3 + big(7)", 3 + big(7))
print_expression("BigInt(3) - 7", BigInt(3) - 7)
print_expression("3 * big(7)", 3 * big(7))
print_expression("BigInt(3) / 7", BigInt(3) / 7)
print_expression("typeof(BigInt(3) / 7)", typeof(BigInt(3) / 7))
print_expression("div(3, big(7))", div(3, big(7)))
print_expression("rem(BigInt(3), 7)", rem(BigInt(3), 7))
print_expression("3 ^ big(7)", 3 ^ big(7))
print_expression("BigInt(3) ^ 7", BigInt(3) ^ 7)

print_banner("Boolean values, `true` and `false`")
print_expression("typeof(true)", typeof(true))
print_expression("typeof(false)", typeof(false))

print_details("""Even though `true` and `false` are of type `Bool`, when used 
in arithmetic expression, the compiler will convert them to an 8-bit integer
""")
print_expression("1 + false", 1 + false)
print_expression("1 * true", 1 * true)
print_expression("3 / true", 3 / true)

print_details("""The results of `typemin` and `typemax` with boolean values 
surprised me when I encountered it
""")
print_expression("typemax(Bool)", typemax(Bool))
print_expression("typemin(Bool)", typemin(Bool))

print_details("""Boolean values support negation""")
print_expression("!false", !false)
print_expression("!true", !true)

print_banner("Comparing integer types")

print_expression("4 == 4", 4 == 4)
print_expression("4 == 3", 4 == 3)
print_expression("4 != 4", 4 != 4)
print_expression("4 != 3", 4 != 3)
print_expression("4 < 3", 4 < 3)
print_expression("4 > 3", 4 > 3)

print_details("Comparisons support chaining")
println("x = 4")
x = 4
print_expression("3 < x < 5", 3 < x < 5)
