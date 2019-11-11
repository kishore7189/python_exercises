# Input Number of Odd Numbers
def print_error_message():
    print "Invalid number, please enter a non-negative numbers!"
    exit()


try:
    n = int(input("Amount: "))
except ValueError:
    print_error_message()

start = 1

if n < 0:
    print_error_message()

for i in range(n):
    if n == 0:
        start += 2 # increase the value of start by 2 to get the next even number
        print(start) # print 0 first as it is an even number
        start += 2 # increase the value of start by 2 to get to the next even number
    elif n % 2 == 0:
        print(start)
