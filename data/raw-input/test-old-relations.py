#!/usr/bin/env python

"""Adolfo's files has 'special lines' which contain two 7-element
lists of eigenvalues. This script scans through his file and tests if
these lists satisfy the five previously known relations
"""

import re
from fractions import Fraction

# Functions to compute the Lefschetz, Baum-Bott and Camacho-Sad sums


def test_L1(list1, list2):
    """Test Lefschetz relation 1: sum(1/det)
    The total sum should be 1
    """
    Sum = sum(Fraction(1, list1[k] * list2[k]) for k in range(7))
    if Sum.denominator == 1:
        return Sum.numerator
    else:
        return 'not in ZZ'


def test_L2(list1, list2):
    """Test Lefschetz relation 2: sum(tr/det)
    The total sum should be -4
    """
    Sum = sum(Fraction(list1[k] + list2[k], list1[k] * list2[k])
              for k in range(7))
    if Sum.denominator == 1:
        return Sum.numerator
    else:
        return 'not in ZZ'


def test_BB(list1, list2):
    """Test Baum-Bott relation: sum(tr^2/det)
    The total sum should be 16
    """
    Sum = sum(Fraction((list1[k] + list2[k])**2, list1[k] * list2[k])
              for k in range(7))
    if Sum.denominator == 1:
        return Sum.numerator
    else:
        return 'not in ZZ'


def test_TL(list1, list2):
    """Test Lefschetz relation on invariant line: sum(1/lambda)
    The total sum should be -1
    """
    Sum = sum(Fraction(1, list1[k]) for k in range(3))
    if Sum.denominator == 1:
        return Sum.numerator
    else:
        return 'not in ZZ'


def test_CS(list1, list2):
    """Test Camacho-Sad relation: sum(mu/lambda)
    The total sum should be 1
    """
    Sum = sum(Fraction(list2[k], list1[k]) for k in range(3))
    if Sum.denominator == 1:
        return Sum.numerator
    else:
        return 'not in ZZ'


# Main function to perform the test in all examples on 'raw-data.txt'


def main():
    # Save 'raw-input.txt' as a single string
    filename = r'./raw-input.txt'
    f = open(filename, 'r')
    text = f.read()

    # Find the special lines
    lines = re.findall(r'\[.+\]', text)
    f.close()

    # Reset output file
    output_file = open(r'./test-old-relations-output.txt', 'w')
    output_file.write('Expected values: (1, -4, 16, -1, 1)\n')
    output_file.write('Output:\n')
    output_file.close()

    output_file = open(r'./test-old-relations-output.txt', 'a')

    # Introduce a dictionary to avoid repeated lines
    dict = {}

    for line in lines:

        if line in dict:
            dict[line] += 1  # Don't do anything if values had already appeared

        else:
            dict[line] = 1

            # Save the two lists in line as l and m
            l = eval(line)[0]
            m = eval(line)[1]

            # Perform the test
            result = (test_L1(l, m),
                      test_L2(l, m),
                      test_BB(l, m),
                      test_TL(l, m),
                      test_CS(l, m))

            # Append to output_file
            output_file.write(str(result) + '\n')

    output_file.close()

    print('Done.')


if __name__ == '__main__':
    main()
