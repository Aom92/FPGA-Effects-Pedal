in_signal = [1,2,3,4,5]
count = 0
out = 0
previous = None


iteration_count = 0
for element in in_signal:
    iteration_count += 1
    
    if iteration_count == 1:
        previous = element
        out = element
    else:

        if iteration_count%2 == 0:
            out = previous
        else:
            out = element

    print(out)

    
