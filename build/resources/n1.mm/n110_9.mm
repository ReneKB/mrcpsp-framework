************************************************************************
file with basedata            : cn110_.bas
initial value random generator: 1773837036
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  128
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23        1       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1          10
   3        3          3           5   9  10
   4        3          1           6
   5        3          3           7   8  12
   6        3          3          13  14  15
   7        3          3          11  13  15
   8        3          2          11  14
   9        3          2          12  14
  10        3          3          11  13  15
  11        3          2          16  17
  12        3          1          17
  13        3          1          16
  14        3          2          16  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       7    0    5
         2     2       4    0    0
         3     3       0    1    0
  3      1     1       6    0    6
         2     6       0    5    0
         3     9       2    0    0
  4      1     2       7    0    0
         2     9       6    0    3
         3    10       5    0    2
  5      1     5       0    2    2
         2     5       3    0    2
         3     6       0    2    0
  6      1     1       0    3    6
         2     1       7    0    7
         3    10       4    0    4
  7      1     2       0    2   10
         2     8       7    0    7
         3     9       5    0    6
  8      1     4       2    0    0
         2     4       0    5    0
         3     6       0    1    0
  9      1     2       4    0    0
         2     4       3    0    4
         3     8       3    0    0
 10      1     5       0    7    0
         2     7       0    4    0
         3     9       6    0    0
 11      1     2       0    6   10
         2     4       0    3    0
         3     6       4    0    5
 12      1     2       9    0    0
         2     3       7    0    0
         3     7       0    4    0
 13      1     1       8    0    7
         2     7       0    4    0
         3     8       8    0    0
 14      1     7       6    0    3
         2     7       0    9    8
         3     9       6    0    0
 15      1     3       4    0    5
         2     3       0    8    2
         3    10       0    7    0
 16      1     6       0   10    7
         2     8       0    8    7
         3     8       0    9    0
 17      1     4       9    0    2
         2    10       0    1    2
         3    10       9    0    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   15   20   43
************************************************************************
