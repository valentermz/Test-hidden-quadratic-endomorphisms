"""This code generates the file 'data.txt'.
Each line in 'raw-input-depurated.txt' contains two 7-element lists of eigenvalues l, m.
This script scans through his file, and converts them into a list [t0, .. d3, Lambda].
The output is appended to 'values.txt'

Note: The fixed points are numbered p_0,...,p_6, where p_4, p_5, p_6 are on the invariant line.
For these points, the first eigenvalue (ie l[k]) is the one tangent to the line."""


import re

output_file = open(r'./values.txt', 'a')

# Save the input as single string
filename = r'./raw-input.txt'
f = open(filename, 'r')
text = f.read()

# Save each as a list [l,m] packed into the list 'lines'
lines = re.findall(r'\[.+\]', text)
f.close()

# Introduce a dictionary to avoid repeated lines (if any)
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
        t = list(l[k] + m[k] for k in range(4))
        d = list(l[k] * m[k] for k in range(4))

        # L is saved as its numerator and denominator
        L = [m[4] * m[5] * m[6], l[4] * l[5] * l[6]]

        # Combine t, d and L to a string
        string = str(t + d + [L])

        # Append to output_file
        output_file.write(string + '\n')


output_file.close()

print('Done.')
