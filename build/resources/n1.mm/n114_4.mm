************************************************************************
file with basedata            : cn114_.bas
initial value random generator: 2052228068
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  142
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       27        8       27
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8  10  11
   3        3          3           6   7  10
   4        3          2           5   6
   5        3          3           7   8  11
   6        3          2           9  13
   7        3          2          14  16
   8        3          2           9  17
   9        3          1          14
  10        3          3          13  16  17
  11        3          3          12  16  17
  12        3          1          13
  13        3          1          14
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
  2      1     1       5   10    0
         2     4       5    9    3
         3     6       1    9    0
  3      1     6       2    3    3
         2     8       2    3    1
         3     9       2    1    0
  4      1     4       7    4    0
         2     9       4    2    0
         3     9       5    1    0
  5      1     7       6    9    0
         2     8       6    6    0
         3    10       3    4    0
  6      1     2       7   10    6
         2    10       6    7    0
         3    10       7    6    0
  7      1     4       3    6    0
         2     7       2    6    0
         3    10       1    5    6
  8      1     2       7   10    4
         2     3       4    7    0
         3     5       3    7    0
  9      1     2       7    9    6
         2     8       6    7    0
         3    10       4    3    3
 10      1     4      10    8    9
         2     6       9    5    9
         3    10       8    1    9
 11      1     2       8    6   10
         2     8       4    6    8
         3    10       3    4    6
 12      1     3       4    6    9
         2     3       6    6    8
         3     9       1    5    0
 13      1     2       8    7    0
         2     7       7    6    0
         3     8       5    5    6
 14      1     3      10    7    5
         2     7       9    6    4
         3    10       8    6    0
 15      1     6       8    4    0
         2     9       6    3   10
         3    10       4    3    9
 16      1     4      10   10    7
         2     5       9   10    3
         3     9       9    9    0
 17      1     2       6    9    3
         2     6       4    8    0
         3     7       2    7    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   16   20   51
************************************************************************
