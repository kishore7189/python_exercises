#Python code to demonstrate
#converting hexaddecimat string to decimal
#Using int()

#initialing string
test_string='a5'

#printing original string
print("The origin string: "+ str(test_string))
#using int()
#converting hexadecimal string to decimal
res = int(test_string, 16)
#print result
print("The decimal number of hexadecimal string : "+ str(res))

