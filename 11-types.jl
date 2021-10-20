# Types

include("00-common.jl")

print_banner("Types")
print_details("""Julia's type system is unique. Julia behaves as a 
dynamically typed language (like, for example, Python) most of 
the time. This means that a variable bound to an integer value 
at one point in time might be bound to a string at a different 
point in time. For example:\n

```
x = 10
x = "hello"
```
""")
x = 10
println(x)
x = "Hello"

print_details("""One can attach type information to any (non-global) variable. 
This attachment results in the variable **only** accepting values 
of that type. For example, defining a function that only accepts a 
value of type `String`. If a caller passes a value of some other 
type, the run-time raises an exception of type `MethodError`.\n

```
function greeter(x::String)
    println("Hello, $(x). I hope this day finds you well.")        
end

greeter("Sam")

greeter(3.14)
```
""")
function greeter(x::String)
    println("Hello, $(x). I hope this day finds you well.")        
end

greeter("Sam")

# Uncomment the following code to raise a `MethodError` exception.
# greeter(3.14)

print_details("""Julia uses the same "type-annotation" syntax to assert that 
the type of a value at run-time is the expected type. For example, 
the expression `(2 + 3)::String` fails with a `TypeError` exception.
""")

# Uncomment the following code to raise a `TypeError` in the script
# (2 + 3)::String

print_details("""In general, the type of a variable in Julia is dynamic; 
that is, the type of a variable can change over time. However, 
this dynamism can be detrimental to performance.\n

For the utmost performance, a Julia developer needs to write
_type stable code_. Code is type-stable if the type of every
variable **does not** vary over time.\n

In particular, adding type annotations to variable that are updated
in the inner loop of a critical region of code can lead to drastic 
performance improvements by helping the JIT compiler **remove**
the type checking performed for dynamic variables.

To see an excellent example where type stability is important, read
the 
[article](https://www.johnmyleswhite.com/notebook/2013/12/06/writing-type-stable-code-in-julia/).
""")

print_details("""Many, many types exist in Julia "out-of-the-box"; in fact,
Julia defines an an entire type hierarchy.\n

If you do not specify the type of a function argument, it is of 
type, `Any`. The `Any` type is effectively the root or parent of 
all types.\n

At the other end of the type hierarchy, Julia defines the type, 
`Nothing`. The `Nothing` types has **no** values and no object
can actually have this type, but it is a subtype of every other
type. (Compare this type hierarchy to the Eiffel language type
hiearchy.)\n

One can define custom types, for example, a `Person` type. By 
convention, names of types use PascalCase. Two examples of these
types are `BigFloat` or `AbstractArray`.
""")

print_details("""If `x` is a variable, then the expression `typeof(x)` returns
the type. Additional, the function, `isa()` determines if a value 
is of a specified type. For example, `isa(x, T)` returns `true` 
if the value bound to `x` is of type, `T`.\n

More specifically, `isa("AB", String)` returns `true` and 
`isa(1, Bool)` returns `false`.
""")

isa("ABC", String)
isa(1, Bool)

print_details("""Everything in Julia has a type, including types themselves 
which are of type, `DataType`. For example, `typeof(Int64)` 
returns `DataType`.
""")
typeof(Int64)

print_details("""One can typically use a type name to convert 
variables from one type to another. For example, `Int64(3.0)`
returns 3.
""")
Int64(3.0)

print_details("""However, if the requested type conversion is impossible,
Julia raises a `MethodError` exception. For example, 
`Int64("hello")` raises `MethodError`.
""")

# Uncomment the following code to demonstrate the error.
# Int64("hello")
