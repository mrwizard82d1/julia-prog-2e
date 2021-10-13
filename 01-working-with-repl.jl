# Basic REPL: expressions and results

# WARNING: `ans` is **only** available in the REPL.
println("""===== WARNING =====
The variable, `ans`, is **only** available in the REPL.
If you run this file as a script, it will terminate with
an `UndefVarError` and a message like 'ans not defined'.
""")
println()

6 * 7

ans

8 * 5;

ans

ans + 10

a = 3

b

b = "Julia"

b

a = 1; b = 2; c = 3

if 10 > 0
    println("10 is bigger than 0")
end

println("Autocompletion")
println("==============")
println()
println("""The REPL supports autocompletion. Press a couple of
characters, for example, "so" in the REPL and then
press the `Tab` key **twice**. These actions will
print a list of possible completions.
""")
println()

println("Shell mode")
println("==========")
println()
println("""If a REPL line starts with a semicolon (";"), the REPL enters
"Shell mode". In this mode, text following the semicolon is sent
to an external shell whose output is redirected to the REPL.
""")
println()

println("""===== WARNING =====
On *nix systems, _Shell mode_ works as advertised. On Windows, it
does not. Instead, to execute shell on Windows, entering a
semicolon allows one to **interact** with a specified shell.

For example, at the prompt, if one enters `powershell`, one enters
Powershell. Similarly, by entering `cmd`,  one enters a Windows
command prompt.
""")

println("""To terminate shell mode, press the `Backspace` key or the
`Ctrl-C` sequence at the shell prompt.
""")

println("Executing scripts at the REPL")
println("=============================")
println()
println("""Entering the include command, for example,
`include("01-hello.jl"), reads and executes the specified script
in the REPL.
""")

include("01-hello.jl")

