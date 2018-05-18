"""This code generates the file 'data.txt'.
Each line in 'raw-input-depurated.txt' contains two 7-element lists of eigenvalues l, m.
This script scans through his file, and converts them into a list [t0, .. d3, U, V].
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

# Introduce a dictionary to avoid repeated output (if any)
dict = {}

for line in lines:

    # For each special line we extract t, d, and invariant functions
    u = eval(line)[0]
    v = eval(line)[1]

    # t and d are saved in a list
    t = list(u[k] + v[k] for k in range(4))
    d = list(u[k] * v[k] for k in range(4))

    # Product of tangential eigenvalues
    prodU = u[4] * u[5] * u[6]

    # Product of normal eigenvalues
    prodV = v[4] * v[5] * v[6]

    # Combine t, d and L to a string
    string = str(t + d +
                 [prodU, prodV])

    if string in dict:
        dict[string] += 1
    else:
        dict[string] = 1


# Append to output_file
for string in dict:
    output_file.write(string + '\n')

output_file.close()

print('Done.')
