# Floating point numbers

include("00-common.jl")

print_banner("Three different size floating point numbers")
print_expression("Float16", Float16)
print_expression("Float32", Float32)
print_expression("Float64", Float64)

print_banner("Floating-point literals")
print_details("All of type Float64")
print_expression("3.14", 3.14)
print_expression("1.", 1.)
print_expression("0.785", 0.785)  # approximation to π / 4
print_expression("-.785", -.785)
print_expression("2.99792458e8", 2.99792458e8)
print_expression("-1.60217662E-19", -1.60217662E-19)  # charge on electron (with sign)

print_details("""Single-precision floating-point literals are written using 
scientific notation with an 'f' replacing the 'e'.
""")
print_expression("3.14f0", 3.14f0)
print_expression("1.f0", 1.f0)
print_expression("0.785f0", 0.785f0)  # approximation to π / 4
print_expression("-7.85f-1", -7.85f-1)

print_details("""Although single point literals use a lowercase 'f', they may 
be printed in the REPL using scientific notation and a lowercase 'e'
""")
print_expression("2.99792458f8", 2.99792458f8)

print_details("""Single-precision floating point literals **do not** support 
using a capital 'F' (unlike double-precision that support either 
'e' or 'E').\n

The error raised if one uses 'F' is a bit obscure: `UndefVarError`; 
that is, Julia treats `F` as a variable - and it is not found. 
(See the next note for an example of this caveat.)
"""
)
# Uncomment the following expression to raise the exception
# print_expression("-1.60217662F-19", -1.60217662F-19)  # charge on electron (with sign)

print_details("""!! BEWARE !! If you have defined a variable named `F` 
**before** attempting to write a single-precision literal using 
an uppercase `F`, Julia **will not** raise an exception, but 
the value is most likely not as you intend. For example, the 
following code fragment results in -23.80652986 and **not**
-1.60217622e-19\n

```
F = 3
# ... many lines of code elided
-1.60217662F-19
# -23.80652986 
```
""")
println("F = 3")
F = 3
print_expression("-1.60217662F-19", -1.60217662F-19)  # Result is **not** the charge on electron (with sign)

print_details("Float16 is implemented in software and has no literal.")
print_expression("Float16(6.62E-34)", Float16(6.62E-34))

print_details("""Finally, Julia provides the type `BigFloat` for 
arbitrary-precision floating point numbers.
""")
print_expression("prevfloat(typemax(Float))", prevfloat(typemax(Float64)))
print_expression("BigFloat(1.7976931348623157e308)", BigFloat(1.7976931348623157e308))
print_expression("BigFloat(1.7976931348623157e308) + 1", BigFloat(1.7976931348623157e308) + 1)

print_banner("All floating point types support Inf, -Inf and NaN")
print_expression("1.0 / 0", 1.0 / 0)
print_expression("-1.0f0 / 0", -1.0f0 / 0)
print_expression("Float16(0) / 0", Float16(0) / 0)