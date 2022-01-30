************************************************************************
file with basedata            : me32_.bas
initial value random generator: 301931393
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  132
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       25        7       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6  10
   3        3          3           9  15  16
   4        3          3           5   7   9
   5        3          2           8  11
   6        3          2           8  14
   7        3          3           8  10  14
   8        3          3          12  13  16
   9        3          2          10  14
  10        3          1          11
  11        3          1          12
  12        3          1          17
  13        3          2          15  17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     1       9    5
         2     1       7    6
         3     7       5    4
  3      1     5       4    7
         2     5       3    8
         3     8       2    2
  4      1     1       6    2
         2     3       4    1
         3     5       3    1
  5      1     8       8    9
         2     9       3    6
         3     9       6    5
  6      1     9       7    8
         2    10       6    6
         3    10       5    7
  7      1     2      10    9
         2     4       8    9
         3    10       7    8
  8      1     8       6    5
         2     9       4    2
         3    10       3    2
  9      1     1       2    8
         2     2       2    7
         3     8       1    7
 10      1     7       9    9
         2     8       8    7
         3     9       8    5
 11      1     7       5    4
         2     9       4    3
         3     9       5    2
 12      1     2       9    8
         2     7       8    7
         3     8       7    6
 13      1     3       5    9
         2     3       8    7
         3    10       5    1
 14      1     1       6    8
         2     2       6    6
         3    10       5    2
 15      1     4       9    9
         2     5       7    7
         3     8       6    6
 16      1     3       8    8
         2     4       8    7
         3     7       5    6
 17      1     1       4    7
         2     3       3    7
         3     4       3    5
 18      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
   29   34
************************************************************************
