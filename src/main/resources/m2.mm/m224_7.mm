************************************************************************
file with basedata            : cm224_.bas
initial value random generator: 1863752791
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  108
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       22        2       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           5   8  14
   3        2          3          10  13  16
   4        2          3           6   7  13
   5        2          3          10  13  16
   6        2          3          11  14  16
   7        2          2          11  14
   8        2          3           9  10  12
   9        2          1          17
  10        2          1          15
  11        2          2          12  15
  12        2          1          17
  13        2          1          17
  14        2          1          15
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3      10    8    6    0
         2     8       9    7    0    9
  3      1     2       8    7    4    0
         2     3       8    7    0    3
  4      1     5       4    5    6    0
         2     6       4    5    5    0
  5      1     1       7    7    0    3
         2     8       2    6    0    3
  6      1     1       5    9    2    0
         2     8       1    9    0    4
  7      1     9       3    8    0    7
         2    10       3    7    0    5
  8      1     9       2    5    7    0
         2     9       3    9    0    5
  9      1     4       9    4    8    0
         2     5       5    3    7    0
 10      1     5      10    8    0    5
         2     8       2    3    0    5
 11      1     1       5    3    0    8
         2     9       3    2    0    8
 12      1     3       9   10    0    4
         2     4       6   10    8    0
 13      1     3       9    9    3    0
         2     6       8    8    0    3
 14      1     1       4    3    7    0
         2     1       5    1    0   10
 15      1     1       8    7    5    0
         2     8       5    7    0    2
 16      1     4       3    7    9    0
         2     6       3    7    5    0
 17      1     4       5    5    0    6
         2     9       3    2    2    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   29   35   55   57
************************************************************************
