# Packages

println("Packages")
println("========")
println()
println("""The REPL provides "package mode" to manages packages for Julia,
projects and, perhaps, environments.\n

To enter package mode, enter the right bracket (']') key in the REPL.
""")

println()
println("Activate")
println("========")
println()
println("""The Julia package manager, `Pkg`, supports not simply managing
package dependencies but also for managing (virtual) environments.\n

To activate an environment, once you have entered package mode of
the REPL, execute the command `activate <path/to/project>`. (To
activate the environment for the current directory, execute the 
command `activate .`)
""")

println()
println("Adding a package")
println("========")
println()
println("""To add a package to the current environment, execute the command
`add <package_name>`. This command causes `Pkg` to find the
package **and, recursively, all the packages depended upon and 
load them into the active environment.\n

This involves resolving version dependencies of all the packages
in the current environment and in the dependencies of the newly
added package.
""")