************************************************************************
file with basedata            : me21_.bas
initial value random generator: 26862
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  117
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       21        0       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   7
   3        3          2          10  15
   4        3          2           7   8
   5        3          2          12  15
   6        3          3          11  12  15
   7        3          2           9  10
   8        3          2           9  11
   9        3          1          14
  10        3          2          11  12
  11        3          2          13  14
  12        3          2          13  14
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     3       4    5
         2     7       3    4
         3     8       3    1
  3      1     4       9    5
         2     6       7    4
         3     7       5    1
  4      1     5       8    8
         2     8       8    7
         3     9       7    7
  5      1     1       8    8
         2     6       7    7
         3     6       8    6
  6      1     4       7    9
         2     4       9    8
         3     8       7    8
  7      1     4       6    5
         2     6       2    2
         3     6       3    1
  8      1     1       9    9
         2     2       9    8
         3    10       9    7
  9      1     1       9   10
         2     7       8    7
         3    10       8    3
 10      1     3       9    6
         2     8       7    4
         3    10       2    3
 11      1     1       6    4
         2     5       3    4
         3     7       1    3
 12      1     1       7    6
         2     6       6    4
         3     9       6    2
 13      1     1      10    4
         2     6       7    4
         3     9       2    2
 14      1     8       6    8
         2     9       3    8
         3     9       5    7
 15      1     5       7   10
         2     8       6    8
         3     9       6    5
 16      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
   15   14
************************************************************************
