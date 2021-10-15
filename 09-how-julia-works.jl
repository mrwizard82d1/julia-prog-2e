# How Julia works

function print_banner(text::AbstractString)
    println()
    println(text)
    println("=" ^ length(text))
end

print_banner("How Julia works")

# Create a function
print_banner("Create a function: `f(x) = 2x + 5`")
f(x) = 2x + 5

# Generate the JIT bytecode for f if x is of type `Int64`.
print_banner("JIT bytecode for `Int64` argument")
code_llvm(f, (Int64,))

# Generate the native assembly code for f if x is of type `Int64`
print_banner("Native assembly for `Int64` argument")
code_native(f, (Int64,))

# Compare the JIT bytecode ....
print_banner("JIT bytecode for `Float64` argument")
code_llvm(f, (Float64,))

# ...and native assembly if x if of type `Float64`
print_banner("Native assembly for `Float64` argument")
code_native(f, (Float64,))
