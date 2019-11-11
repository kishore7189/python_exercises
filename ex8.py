formatter = "%r %r %r %r"

print formatter % (1, 2, 3, 4)
print formatter % ("One", "Two", "Three", "Four")
print formatter % (True, False, True, False)
print formatter % (formatter, formatter, formatter, formatter)
print formatter %(
        "I had this thing.",
        "That you could type up right.",
        "But it didn't sing.",
        "So I had said goodnight."
        )
