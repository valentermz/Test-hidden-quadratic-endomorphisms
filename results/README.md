# Realizable data

The main program `test-all-values.py` outputs the results of admissible values to `data/admissible.csv`. 
After getting rid of a repeated line (line 102) and slight reordering, we are left with ten lists that are realizable.

In "raw data format" (that is, the list of actual eigenvalues of I-df at each of the seven fixed points), these are the ten realizable collections:

| \# | Line | Fixed points on C2 | Fixed points on invariant line |
| -- | -- | -- | -- |
| 1  | 1   | (1,3), (2,5), (1,3),   (-5,12)  | (1,2), (5,-1),   (-5,4)   |
| 2  | 2   | (1,3), (2,5), (1,3),   (-1,4)   | (1,2), (17,-5),  (-17,12) |   
| 3  | 90  | (1,3), (2,5), (-5,17), (12,-17) | (1,2), (1,3),    (-1,4)   |
| 4  | 91  | (1,3), (2,5), (3,4),   (12,-17) | (1,2), (22,-5),  (-22,17) | 
| 5  | 92  | (1,3), (2,5), (3,4),   (-5,17)  | (1,2), (29,-17), (-29,12) |
| 6  | 88  | (1,3), (2,5), (2,5),   (10,-13) | (1,2), (16,-3),  (-16,13) | 
| 7  | 89  | (1,3), (2,5), (2,5),   (-3,13)  | (1,2), (23,-13), (-23,10) | 
| 8  | 101 | (2,3), (2,3), (1,4),   (-3,8)   | (1,2), (11,-3),  (-11,8)  |
| 9  | 103 | (2,3), (2,3), (1,4),   (1,4)    | (1,2), (9,-2),   (-9,7)   |
| 10 | 104 | (2,3), (2,3), (1,4),   (-2,7)   | (1,2), (19,-7),  (-19,12) |



