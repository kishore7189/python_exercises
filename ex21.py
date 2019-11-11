def add(a, b):
    print "Adding %d + %d" % (a, b)
    return a + b

def subtract(a, b):
    print "Subtracting %d - %d" % (a, b)
    return a - b

def multiply(a, b):
    print "Multiply %d * %d" % (a, b)
    return a * b

def division(a, b):
    print "Division %d / %d" % (a, b)
    return a / b

print "Let's do some math with just functions !"

age = add (20, 7)
height = subtract (180, 5)
weight = multiply (20, 4)
iq = division(100, 50)

#print "Age: %d, Height: %d, Weight: %d, IQ: %d" % (age, height, weight, iq)
print "Age: %d \n Height: %d \n Weight: %d \n IQ: %d" % (age, height, weight, iq)

# A puzzle for the extra credit, type it in anyway.
print "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, division(iq, 2))))

print "That becomes: ", what, "Can you do it by hand?"

