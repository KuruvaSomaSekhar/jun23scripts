num = [32,24,33,64,64,54,64,77,83,85,45]
print("Number of elements in the list: ",len(num))
even = []
odd = []
for item in num:
    print("My Item value is: ",item)
    if item%2 == 0:
        print("this is even number",item)
        even.insert(1,item)
    else:
        print("This is odd number",item)
        odd.append(item)

print("Even numbers : ",even)
print("Odd numbers: ", odd)


    