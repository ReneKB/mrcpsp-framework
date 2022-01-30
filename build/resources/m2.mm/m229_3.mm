************************************************************************
file with basedata            : cm229_.bas
initial value random generator: 1482599527
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  119
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       24        4       24
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3          10  11  16
   3        2          2           5  10
   4        2          3           5   7   8
   5        2          1           6
   6        2          2          13  17
   7        2          3           9  12  14
   8        2          3          12  13  14
   9        2          3          10  15  16
  10        2          1          17
  11        2          3          12  13  17
  12        2          1          15
  13        2          1          15
  14        2          1          16
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       4    6    3    0
         2    10       2    6    0    7
  3      1     6       9    6    0    3
         2     7       7    1    6    0
  4      1     8       6    8    0    4
         2     9       5    8    0    2
  5      1     3       8    6    5    0
         2     4       6    4    0    7
  6      1     3       9    7    0    2
         2     8       8    4    6    0
  7      1     2       7    6    6    0
         2    10       3    6    0    7
  8      1     5       9    6    1    0
         2     6       4    3    0    7
  9      1     7       9    7    8    0
         2     7       8    7    0    2
 10      1     2       8    7    0    5
         2     3       6    5    6    0
 11      1     5       5    6    8    0
         2    10       4    6    0    4
 12      1     1       4    8    0    7
         2     7       4    4    9    0
 13      1     6       6    6    0    7
         2    10       5    4    7    0
 14      1     7       7    6    0    4
         2     8       2    3    8    0
 15      1     3       8    6    9    0
         2     4       6    6    0    2
 16      1     2       9    8    0   10
         2     6       8    6    9    0
 17      1     5       7    7    7    0
         2    10       6    3    6    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   13   13   98   78
************************************************************************
