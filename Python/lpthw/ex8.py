formatter = "{} {} {} {}"

print(formatter.format(1,2,3,4))
print(formatter.format('one', 'two', 'three', 'four'))
print(formatter.format(True, False, False, True))
print(formatter.format(formatter, formatter, formatter, formatter))
print(formatter.format(
    "Try your own",
    "text here",
    "Write a poem",
    "Or a song about fear"
))

print(formatter.format('poule', 'haricot', 'biscotte', 'croquette'+'bijou'))
print(formatter.format('janvier','février', 'mars', ''))
