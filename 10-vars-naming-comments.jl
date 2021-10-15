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

print_banner("Variable naming conventions")
print_details("""Here are some variable naming conventions:\n\n
- Use lowercase with multiple words separated by
  underscores ('_'); that is, "snake case"
- Start with a letter
- After the first letter, use letters, digits, underscores and
  exclamation points
- You can also use Unicode characters
- Use clear, short, and to-the-point names\n

Remember that variable names are **case-sensitive**.
""")

print_banner("Comments")
print_details("""A line preceded by an octothorpe (hash sign - '#')
is a comment
""")

# Calculate the acceleration due to gravity
print_details("""Calculate the acceleration due to gravity (in m/s^2)
Look at the code to see the use of line comments and end of 
line comments
""")
G = 6.67e-11  # gravitational constant in m^3/kg-s^2
earth_mass = 5.98e24  # in kg
earth_radius = 6378100  # in m
g = G * earth_mass / earth_radius^2  # 9.8049 m/s^2
println(g)

print_details("Multiline comments are delimited by `#=` and `=#`")

print_banner("Printing values")
print_details("""The functions, `print` and `println`, print 
their argument(s).
""")
print_details("""In addition, one can use `display(object)` or `show(object)`
to display values the way that the REPL displays those values.
Note the text presented by `display` and `show` are often more
specific than `print`/`println`.
""")
