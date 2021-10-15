# Variables, naming conventions, and comments

include("00-common.jl")

print_banner("""Variable types: `x = "I am Julia"`""")
x = "I am Julia"
println(typeof(x))

print_banner("Variable types: `y = 7`")
y = 7
println(typeof(y))

print_banner("Undefined variables: `y + z`")
print_details("""Evaluating the expression `y + z` raises an `UndefVarError`;
however, one must uncomment this code to see this error in action.
""")
# y + z

print_banner("Variable types determine operations")

print_details("Cannot add a string and an integer")
print_details("""Evaluating the expression `x + y` raises an `MethodError`;
however, one must uncomment this code to see this error in action.
""")
# x + y

print_details("""But changing `x` to a float **allows** addition.\n
    ```
    x = 3.5
    x + y
    ```
""")
x = 3.5
println(x + y)
