# Strings

include("00-common.jl")

print_banner("Strings")
print_expression("typeof(\"hello\")", typeof("hello"))
print_expression("typeof(\"Güdrun\")", typeof("Güdrun"))

print_details("""Strings are immutable. The following code raises a 
`MethodError`:\n

```
string s = "Hello, Julia"
s[2] = 'z'
```
""")
s = "Hello, Julia"
try
    s[2] = 'z'
    println("Oops. No exception!")
catch ex
    if isa(ex, MethodError)
    else
        throw
    end
end

print_details("""`String` is a succession, or an array of characters .... that
can be extracted using indices.\n 
- Indexing starts at 1\n
- The index `end` returns the last **character** in the string 
- Use `length()` to return the number of **characters** in 
  the string\n

The following code assumes we have defined two variables of 
type string:\n

```
str = "Julia"
double_byte_str = "Güdrun"
```
""")
str = "Julia"
print_expression("str[1]", str[1])
print_expression("str[end]", str[end])
# print_expression("endof(str)", endof(str))
print_expression("str[length(str) - 1]", str[length(str) - 1])
print_expression("length(str)", length(str))

double_byte_str = "Güdrun"
print_expression("double_byte_str[1]", double_byte_str[1])
print_expression("double_byte_str[end]", double_byte_str[end])
# print_expression("endof(double_byte_str)", endof(double_byte_str))
print_expression("double_byte_str[length(double_byte_str) - 1]", 
                 double_byte_str[length(double_byte_str) - 1])
print_expression("length(double_byte_str)", length(double_byte_str))

