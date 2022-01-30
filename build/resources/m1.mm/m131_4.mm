************************************************************************
file with basedata            : cm131_.bas
initial value random generator: 299322374
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  86
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       33       13       33
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           6  10  12
   3        1          3           9  10  16
   4        1          2           5  11
   5        1          3           7   9  12
   6        1          3           7   9  16
   7        1          2           8  14
   8        1          1          15
   9        1          2          13  15
  10        1          2          15  17
  11        1          2          12  14
  12        1          2          16  17
  13        1          1          14
  14        1          1          17
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     7       3    3    0    8
  3      1     6       9    9    6    0
  4      1     6       2    3    0    6
  5      1     2       1    3    0    7
  6      1     4       3    6    0    3
  7      1     4       1    4    0    3
  8      1     3       8    5    5    0
  9      1     7       7    3    0    7
 10      1     5       9    7    0    5
 11      1     7       9    6    0    4
 12      1     2       3    4    0    8
 13      1     4       7    7    3    0
 14      1     7       8    8    3    0
 15      1    10       6    5    0    1
 16      1     8       8    8    0    3
 17      1     4       2    6    0    5
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   22   19   17   60
************************************************************************
