# Elementary mathematical functions and operations

include("00-common.jl")

print_banner("View the binary representation of any number with bitstring")
print_expression("bitstring(3)", bitstring(3))
print_expression("bitstring(UInt8(3))", bitstring(UInt8(3)))
print_expression("bitstring(Int32(-3))", bitstring(Int32(-3)))
print_expression("bitstring(3.0)", bitstring(3.0))
print_expression("bitstring(-3.0f0)", bitstring(-3.0f0))

print_banner("Typical (computer language) math functions")
print_expression("round(1.414)", round(1.414))
print_expression("sqrt(2)", sqrt(2))
print_expression("cbrt(81)", cbrt(81))  # cube-root
print_expression("cbrt(3)", cbrt(3))
print_expression("exp(log(2))", exp(log(2)))
print_expression("sin(π/4)", sin(π/4))
print_expression("cos(π/4)", cos(π/4))
print_expression("tan(π/4)", tan(π/4))
print_expression("rand()", rand())

print_details("""These functions are common mathematical functions. For a 
complete description of all the mathematical functions supported 
by the Julia base package, see [Mathematical Funcions](https://github.com/JuliaMath/SpecialFunctions.jl/blob/master/docs/src/functions_overview.md)
""")

print_details("""Special math functions like `erf` are available in the 
`SpecialFunctions` package. (See the 
[overview](https://github.com/JuliaMath/SpecialFunctions.jl/blob/master/docs/src/functions_overview.md) 
for details)
""")
using SpecialFunctions
print_expression("erf(3)", erf(3))

print_banner("Combining assignments")
print_details("""Chained assignments, such as, `a = b = c = d = 1`, are allowed.
The assignments are evaluated **right-to-left** (right associativity).""")
a = b = c = d = 1
print_expression("a", a)
print_expression("b", b)
print_expression("c", c)
print_expression("d", d)

print_details("""One can combine assignments for different variables. For 
example, the assignments\n
```
a = 1; b = 2; c = 3; d = 4 
a, b = c, d
```

result in a == 3 and b = 4
""")
a = 1; b = 2; c = 3; d = 4
a, b = c, d
print_expression("a", a)
print_expression("b", b)

print_details("""This syntax makes it easy to swap values: `a, b = b, a`
""")
a, b = b, a
print_expression("b", b)


print_banner("Boolean operators")

print_details("Negation is pretty simple")
println("t = true")
t = true
println("f = false")
f = false
print_expression("!t", !t)
print_expression("!f", !f)

print_details("""The two character boolean operators short-circuit.\n

`zork` is a function that returns `false` and prints a message as a 
side-effect.
""")
function zork()
    println("In `zork`")
    return false
end
print_expression("f && !zork()", f && !zork())
print_expression("t || zork()", t || zork())

print_details("""But the single character boolean operators do not""")
print_expression("f & !zork()", f & !zork())
print_expression("t | zork()", t | zork())

print_banner("Julia supports bitwise operators on integer types")

print_expression("~0x03", bitstring(~0x03))
print_expression("~0xff", bitstring(~0xff))
print_expression("0x03 & 0xff", bitstring(0x03 & 0xff))
print_expression("0x03 | 0xff", bitstring(0x03 | 0xff))

print_details("""For additional information on operations, see the Julia 
documentation for 
[mathematical operations](https://docs.julialang.org/en/v1/manual/mathematical-operations/)
""")
