************************************************************************
file with basedata            : cm225_.bas
initial value random generator: 1681790076
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  126
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       35        3       35
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          2           8  15
   3        2          3           5   6   7
   4        2          2           8  15
   5        2          3           9  15  16
   6        2          3          10  11  12
   7        2          2           8  10
   8        2          3           9  12  13
   9        2          2          11  14
  10        2          2          13  17
  11        2          1          17
  12        2          2          14  16
  13        2          1          16
  14        2          1          17
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     8       0    6    0    6
         2    10       0    6    0    4
  3      1     1       6    0    9    0
         2     9       0    9    0    5
  4      1     3       0    2    3    0
         2     4       0    2    0    7
  5      1     2       0    4    0    2
         2     7       8    0    0    2
  6      1     8       0    6    9    0
         2     8       4    0    8    0
  7      1     2       7    0    3    0
         2    10       2    0    3    0
  8      1     7       8    0    9    0
         2    10       4    0    0    4
  9      1     2       5    0    0    5
         2    10       0    8    3    0
 10      1     1       0    6    0    3
         2     2       5    0    4    0
 11      1     2       0    9   10    0
         2     7       0    9    8    0
 12      1     7       7    0    0    9
         2    10       0    8    3    0
 13      1     2       4    0    0    6
         2     6       0    2    3    0
 14      1     4       3    0    9    0
         2    10       3    0    2    0
 15      1     1       3    0    0    3
         2     6       0    9    4    0
 16      1     1      10    0    4    0
         2     8       6    0    4    0
 17      1     9       6    0    4    0
         2     9       4    0    0    8
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
    9   11   77   58
************************************************************************
