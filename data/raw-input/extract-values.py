""" This code generates the file 'data.txt'.

    Adolfo's files has 'special lines' which contain two 7-element
    lists of eigenvalues. This script scans through his file, extracts
    those lines and converts them into a list [t0, .. d3, Lambda].
    The output is appended to 'values.txt'
"""

import re

# Save Adolfo's file as a single string
filename = r'./raw-input.txt'
f = open(filename, 'r')
text = f.read()

# Find the special lines
lines = re.findall(r'\[.+\]', text)
f.close()


output_file = open(r'./values.txt', 'a')


# Introduce a dictionary to avoid repeated lines
dict = {}

for line in lines:

    if line in dict:
        dict[line] += 1

    else:
        dict[line] = 1

        # For each special line we extract t, d, L
        l = eval(line)[0]
        m = eval(line)[1]

        # t and d are saved in a list
        t = list(l[k] + m[k] for k in range(3, 7))
        d = list(l[k] * m[k] for k in range(3, 7))

        # L is saved as its numerator and denominator
        L = [m[0] * m[1] * m[2], l[0] * l[1] * l[2]]

        # Combine t, d and L to a string
        string = str(t + d + [L])

        # Append to output_file
        output_file.write(string + '\n')


output_file.close()

print('Done.')
