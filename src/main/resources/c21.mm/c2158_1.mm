************************************************************************
file with basedata            : c2158_.bas
initial value random generator: 15921
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  127
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       25       15       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8  10  11
   3        3          3           7  13  17
   4        3          3           5   6   9
   5        3          3           7  11  12
   6        3          3           7   8  11
   7        3          3          10  14  16
   8        3          3          12  14  16
   9        3          3          10  12  13
  10        3          1          15
  11        3          2          13  17
  12        3          2          15  17
  13        3          2          14  16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       0    8    9    3
         2     3       7    0    3    3
         3     3       0    5    3    2
  3      1     5       0    5    9    2
         2     7       0    4    8    2
         3     8       0    3    5    2
  4      1     4       8    0    3    9
         2     4       8    0    4    5
         3     6       0    3    2    5
  5      1     2       0    4    4    4
         2     2       5    0    4    4
         3     8       4    0    4    4
  6      1     3       0    8    6    5
         2     5       0    6    4    4
         3     9       0    2    3    4
  7      1     1       0    2    7    7
         2     2       0    2    6    5
         3     7       8    0    5    3
  8      1     6       0    3    9   10
         2     7       0    3    8    5
         3    10       6    0    8    2
  9      1     3       2    0    5    7
         2     9       0    9    4    1
         3     9       1    0    5    2
 10      1     2       4    0    4    7
         2     2       0    7    5   10
         3     6       0    2    2    6
 11      1     2       0    5    5    7
         2     3       6    0    5    6
         3     9       0    3    5    6
 12      1     2       0    1    8    8
         2     5       5    0    6    7
         3     9       5    0    4    6
 13      1     7       0    7    8    5
         2     8       6    0    8    4
         3    10       0    5    7    3
 14      1     6       0    5    8    3
         2     9       0    4    7    3
         3    10       4    0    6    3
 15      1     3       7    0    6    7
         2     6       0    9    6    7
         3    10       4    0    6    6
 16      1     4       0    2    8    8
         2     4      10    0    6    6
         3     7      10    0    6    2
 17      1     2      10    0    4    1
         2     4       0    4    4    1
         3     6       8    0    4    1
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   10   12  105   96
************************************************************************
