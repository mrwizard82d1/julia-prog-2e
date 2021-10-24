# Characters

include("00-common.jl")

print_banner("Character")

print_expression("'C'", 'C')
print_expression("typeof('C')", typeof('C'))
print_expression("Int('A')", Int('A'))
print_expression("Int('α')", Int('α'))
print_expression("Char(65)", Char(65))
print_expression("Char(0x3b1)", Char(0x3b1))
print_expression("'\0'", '\0')
# print_expression("'\\Uffffffff'", '\Uffffffff')
print_expression("'\u03b1'", '\u03b1')
print_expression("'\U000003b1'", '\U000003b1')
print_expression("isvalid(Char, 0x3b1", isvalid(Char, 0x3b1))
