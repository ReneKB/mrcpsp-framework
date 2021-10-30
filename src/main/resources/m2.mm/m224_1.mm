************************************************************************
file with basedata            : cm224_.bas
initial value random generator: 12239
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
    1     16      0       27       13       27
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           6   8   9
   3        2          3           5   6   8
   4        2          2          11  12
   5        2          2           7   9
   6        2          3          12  15  17
   7        2          2          10  13
   8        2          3          10  12  13
   9        2          2          13  16
  10        2          2          11  16
  11        2          2          14  17
  12        2          1          16
  13        2          1          14
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
  2      1     7       6    8    9    0
         2    10       3    4    0    3
  3      1     2       2    5    2    0
         2     7       2    4    2    0
  4      1     2       9    5    8    0
         2     4       9    5    4    0
  5      1     2       3    3    8    0
         2     3       1    2    6    0
  6      1     1       8    5    4    0
         2     7       3    4    0    8
  7      1     5      10    8    0    9
         2     7       7    4    0    9
  8      1     1       7    3    1    0
         2     6       6    2    0    6
  9      1     5       4    6    7    0
         2     9       3    3    7    0
 10      1     2       7    7    5    0
         2     6       6    6    4    0
 11      1     3       7    7   10    0
         2    10       5    4    7    0
 12      1     4       5    6    0    8
         2     8       5    6    0    7
 13      1     5       7    3    0    5
         2     6       3    3    0    3
 14      1     4       6    6    0    2
         2    10       5    5    7    0
 15      1     6       7    9    0    3
         2    10       2    6    5    0
 16      1     2       6   10    0   10
         2     3       2    8    0    4
 17      1     2       9    9    6    0
         2     6       9    8    0    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   29   22   62   49
************************************************************************
