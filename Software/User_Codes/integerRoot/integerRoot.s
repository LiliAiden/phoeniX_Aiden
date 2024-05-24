# Load the input integer into register a0
li a0, 25    # Just an Example: square root of 25

# Initialize the result to 0
li t0, 0    # t0 is the result register

# Loop for computing the square root
loop:
    # Square the current result and compare with the input
    mul t1, t0, t0
    bge t1, a0, end  # If the squared result is greater than or equal to the input, exit loop

    # Increment the result and repeat
    addi t0, t0, 1
    j loop

# End of loop, compute the integer square root
end:
    # Subtract 1 from the result to get the integer square root
    addi t0, t0, -1

    # Result is in register t0, you can now use it as needed

    # Exit the program
    ebreak      # Break instruction to end the program