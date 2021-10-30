************************************************************************
file with basedata            : cm211_.bas
initial value random generator: 1187314926
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  117
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       24        3       24
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          1           8
   3        2          2           5   6
   4        2          3           9  13  14
   5        2          3           8   9  10
   6        2          3           7  14  17
   7        2          2          11  16
   8        2          2          12  16
   9        2          2          11  17
  10        2          3          11  13  14
  11        2          1          12
  12        2          1          15
  13        2          2          15  17
  14        2          2          15  16
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       4    0    0    8
         2     9       2    0    0    7
  3      1     4       0    9    4    0
         2     8       0    8    0    7
  4      1     3      10    0    9    0
         2     9      10    0    5    0
  5      1     3       9    0   10    0
         2     4       1    0    8    0
  6      1     3       3    0    6    0
         2     9       0    5    0    7
  7      1     2       0   10    0    3
         2     9       8    0    0    2
  8      1     5       0    9    0    4
         2     6       4    0    0    3
  9      1     6       7    0    6    0
         2     8       6    0    0    3
 10      1     1       0    6    0    5
         2     8       5    0    7    0
 11      1     4       0    9    9    0
         2    10       8    0    0    5
 12      1     1       4    0    0    7
         2     2       2    0    0    6
 13      1     2       9    0    6    0
         2     4       8    0    0    4
 14      1     4       8    0    2    0
         2     5       0    2    1    0
 15      1     6       5    0    7    0
         2     9       0    5    0    7
 16      1     5       8    0    0    4
         2     9       0    7    0    2
 17      1     2       0    4    6    0
         2     8       9    0    0    6
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   21   17   43   45
************************************************************************
