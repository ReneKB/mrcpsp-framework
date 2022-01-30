************************************************************************
file with basedata            : cn144_.bas
initial value random generator: 1826314139
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  115
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18        6       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2          11  12
   3        3          3           5   7   9
   4        3          2           7   9
   5        3          2           6  15
   6        3          1          17
   7        3          3           8  10  11
   8        3          2          12  16
   9        3          3          10  11  12
  10        3          2          13  16
  11        3          3          14  16  17
  12        3          1          13
  13        3          2          14  17
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     5       0    5    5
         2     6       6    0    4
         3     9       4    0    4
  3      1     3       8    0    6
         2     4       6    0    6
         3     7       5    0    6
  4      1     4       0    5    8
         2     6       0    4    7
         3     6       1    0    5
  5      1     5       0    7    2
         2     9       0    6    2
         3    10       1    0    1
  6      1     1       0    6    4
         2     8       0    6    3
         3     8       9    0    4
  7      1     3       2    0    7
         2     7       0    1    4
         3     8       2    0    3
  8      1     2       0    8    9
         2     5       7    0    6
         3     6       1    0    5
  9      1     1       0    4    9
         2     4       7    0    6
         3     5       6    0    3
 10      1     7       8    0    9
         2     9       0    8    7
         3    10       5    0    5
 11      1     2       0    4    6
         2     8       0    2    5
         3     9       0    1    3
 12      1     2       0    7    4
         2     6       6    0    3
         3     8       5    0    2
 13      1     1       0    3    3
         2     2       2    0    2
         3     4       0    2    1
 14      1     1       0    7   10
         2     4       0    7    9
         3     5       0    7    8
 15      1     2       5    0    9
         2     5       0    2    7
         3     8       3    0    5
 16      1     2       9    0   10
         2     3       0    7   10
         3     4       0    7    9
 17      1     2       0    4    8
         2     8       5    0    6
         3     8       3    0    7
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   24   20   89
************************************************************************
