#!/usr/bin/env python

"""
For each line in 'values.txt' execute the M2 script to compute a Gröbner basis
of the ideal relations where all variables except (a,b) are eliminated.
If the ideal is (1) then there are no solutions to the system and the list
is not realizable as the spectra of an endomorphism.

Write the result to 'data.txt'.
The format is '[t_0, ..., L, cdoim J, codim I, degree gens I]'
"""

import sys
import re
import subprocess
import os


# Keep track of the number of the example; start at 1 to match
# the line number of values.txt
count = 1


def update_script(value_list):
    """Given ls a list of numbers for t, d, L, update the file
    hidden-run.m2 with those numbers as the values of traces and determinants
    """
    ls = value_list
    script = open(r'./m2-code/hidden-source.m2', 'r')
    text = script.read()
    new_text = re.sub('START VALUES\n--END VALUES',
                      'START VALUES\n'
                      + 't_0 = ' + str(ls[0]) + '\n'
                      + 't_1 = ' + str(ls[1]) + '\n'
                      + 't_2 = ' + str(ls[2]) + '\n'
                      + 't_3 = ' + str(ls[3]) + '\n'
                      + 'd_0 = ' + str(ls[4]) + '\n'
                      + 'd_1 = ' + str(ls[5]) + '\n'
                      + 'd_2 = ' + str(ls[6]) + '\n'
                      + 'd_3 = ' + str(ls[7]) + '\n'
                      + 'L = ' + str(ls[8][0]) + '/' + str(ls[8][1])
                      + '\n--END VALUES', text)

    updated_script = open(r'./m2-code/hidden-run.m2', 'w')
    updated_script.write(new_text)

    script.close()
    updated_script.close()
    print('File "hidden-run.m2" updated')


def run_script():
    """Excecute 'hidden-run.m2' and write the output to 'output.m2'"""
    print('Running command: M2 < hidden-run.m2 > output.m2')

    wd = os.path.abspath('./m2-code/')
    cmd = os.path.join(wd, 'runM2.sh')
    process = subprocess.Popen(cmd)

    if process.wait() == 0:
        print('M2 process done')
    else:
        print('error running M2')
        print('aborted after ' + str(count) + ' loops')
        sys.exit(2)


def append_result(value_list):
    """Record the final result to data.txt
    The format will be: (t_0, ..., d_3, L, h, codimJ, codimI, gensJ, gensI)
    """
    try:
        output_file = open(r'./m2-code/output.m2', 'r')
        lines = output_file.readlines()
        output_file.close()
    except IOError:
        print('error: cannot read output.m2')
        print('aborted after ' + str(count) + ' loops')
        sys.exit(3)

    # lines[-3] must start with the word OUTPUT, if not something went wrong
    if not re.search('OUTPUT', lines[-12]):
        print('Error line {}: output could not be found'.format(count - 1))
        error_file = open(r'./data/error.txt', 'a')
        error_message = 'line : ' + str(count) + ' ' + str(value_list)
        error_file.write(error_message + '\n')
        error_file.close()
        print('Wrote to "error.txt"\n')

    # Otherwise, the result is recorded as
    # '[t_0, ..., L, cdoim J, codim I, degree gens I]'
    else:
        resultJ = lines[-9].strip('\n')
        resultI = lines[-6].strip('\n')
        resultK = lines[-3].strip('\n')

        # Append the output to the respective file
        passed_file = open(r'./data/results-admissible.txt', 'a')
        failed_file = open(r'./data/results-non-admissible.txt', 'a')
        output = str(value_list) + ' : ' \
            + resultJ + ' : ' + resultI + ' : ' + resultK

        if re.search('infinity', output):
            failed_file.write('line ' + str(count) + ' : '
                              + re.sub("\'", '', output)
                              + '\n')  # remove the ' symbols
            failed_file.close()
            print('Line {}: Test failed'.format(count - 1))
            print('Result appended to "results-non-admissible.txt"\n')

        else:
            passed_file.write('line ' + str(count) + ' : '
                              + re.sub("\'", '', output)
                              + '\n')  # remove the ' symbols
            passed_file.close()
            print('Line {}: Test passed'.format(count - 1))
            print('Result appended to "results-admissible.txt"\n')


def main():
    """Define main to call: update, run,  and append_result
    for each line in 'values.txt'
    """

    # Clear all files each time this script is run
    passed_file = open(r'./data/results-admissible.txt', 'w')
    failed_file = open(r'./data/results-non-admissible.txt', 'w')
    error_file = open(r'./data/error.txt', 'w')
    passed_file.close()
    failed_file.close()
    error_file.close()

    input_file = open(r'./data/values.txt', 'r')
    # For testing purposes we use:
    # input_file = open(r'./data/short-version-values.txt', 'r')

    for line in input_file:

        update_script(eval(line))
        run_script()
        append_result(eval(line))

        global count
        count += 1

    input_file.close()

    print(sys.argv[0] + ': Process done. ' + 'Total loops: ' + str(count - 1))


if __name__ == "__main__":
    main()
