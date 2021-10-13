# Startup options and Julia scripts

println("Command line options")
println("====================")
println()
println("Without any options, executing `julia` simply starts a REPL.")

println()
println("""To determine the installed version of Julia, enter the command 

    `julia --version` or
    `julia -v`
""")

println("""One can also get more detailed version information at
the REPL.""")

versioninfo()

println("Finally, the `VERSION` constant also provides the version number.")
VERSION

println()
println("""Use the `-e` or `--eval` option to evaluate
expressions on the command line.

For example, execute the command,
    `julia -e 'a = 6 * 7; println(a)`
will print the result "42")
""")

println()
println("""To get a list of all options, execute:

    `julia --help` or
    `julia -h`
""")

println()
println("""A Julia script can be started from the command line by
executing a command like:

    `julia 02-args.jl arg1 arg2 arg3`

which prints "arg1", "arg2" and "arg3", without the surrounding
quotation marks, on consecutive lines.

Similarly, the command:

    `julia 02-args 1 Red c`

prints its arguments, "1", "Red" and "c" on consecutive lines.
""")

println()
println("""One script can include another using the include
statement, `include("01-hello.jl")`\n

Just like at the REPL, the included file is loaded and executed
as part of the **including** script.\n

For example, the script, "02-main.jl", includes the "01-hello.jl"
script written earlier.\n

Executing `julia 02-main.jl` at the command line will
print the quintessential greeting.
""")

println()
println("""How does one determine if a script is executing
interactively? By executing the `isinteractive()` function.\n

For example, the script, `isinteractive.jl`, executes this
function and prints the results. Those results will differ when
run at the command line or included in the REPL itself.
""")