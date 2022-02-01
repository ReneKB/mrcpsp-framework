************************************************************************
file with basedata            : cm253_.bas
initial value random generator: 1119193930
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  93
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23        1       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           5   6  10
   3        2          1          12
   4        2          3           5   7  10
   5        2          2          15  16
   6        2          2           8   9
   7        2          2           8  14
   8        2          2          11  12
   9        2          3          11  12  14
  10        2          1          17
  11        2          1          13
  12        2          2          13  17
  13        2          2          15  16
  14        2          3          15  16  17
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       7    8    9    7
         2     5       7    8    9    5
  3      1     3       6    9    5    5
         2     8       6    8    4    5
  4      1     3       6    3    8    6
         2     5       4    1    4    6
  5      1     3       5    8    6    8
         2     8       3    5    4    7
  6      1     5       7    9    9    3
         2     5       6    8    9    5
  7      1     2       8    5    5    4
         2     6       2    5    4    3
  8      1     5       9   10    8    7
         2     6       8    9    8    7
  9      1     1       4    5    4    3
         2     1       5    5    5    1
 10      1     5       8   10    7    7
         2     5       9    9    7    9
 11      1     3       5    7    7    3
         2     6       4    7    6    1
 12      1     3       4    5    3    9
         2     5       3    5    3    5
 13      1     3       9    6    3    2
         2     3       9    6    4    1
 14      1     2       6    3    7    7
         2     7       2    3    6    6
 15      1     2       6    7    7    6
         2     5       5    5    3    1
 16      1     2       8    7    6    8
         2     8       7    6    3    2
 17      1     9       9    7    9    7
         2    10       7    5    2    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   14   15   99   88
************************************************************************