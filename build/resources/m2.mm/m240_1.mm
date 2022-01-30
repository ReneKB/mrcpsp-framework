************************************************************************
file with basedata            : cm240_.bas
initial value random generator: 16325
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  112
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       31        4       31
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           5   8  15
   3        2          3          12  13  14
   4        2          3           7   8  14
   5        2          1           6
   6        2          2           7  10
   7        2          2           9  11
   8        2          2           9  10
   9        2          2          12  17
  10        2          2          11  12
  11        2          2          16  17
  12        2          1          16
  13        2          2          15  16
  14        2          2          15  17
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       4    7    7    6
         2     6       2    5    6    5
  3      1     5       8    6    6    8
         2     7       6    3    2    7
  4      1     4       3    7    6    9
         2     8       3    6    3    9
  5      1     6       7    9    1    8
         2     7       4    4    1    8
  6      1     2       7    8    3    7
         2     5       5    6    2    5
  7      1     1       5   10    6    7
         2     4       5    9    4    7
  8      1     2       4    5    8    6
         2     4       4    2    2    6
  9      1     2       8    7    8   10
         2    10       6    4    7    7
 10      1     6       6    5    9    9
         2     9       1    4    7    3
 11      1     5       8    6    2    8
         2     6       3    6    1    6
 12      1     5       5    9    8   10
         2     7       3    8    2    8
 13      1     2       4    7    5    7
         2    10       2    5    4    6
 14      1     1       7   10    4    6
         2     6       7    9    2    4
 15      1     5       2    7    9    8
         2     9       2    3    7    4
 16      1     1       8    8    6    2
         2     5       7    5    6    2
 17      1     7       6    7    3    3
         2     9       4    7    2    2
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   22   31   66   95
************************************************************************
