************************************************************************
file with basedata            : cn150_.bas
initial value random generator: 683658033
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  118
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       15        4       15
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           9  10  14
   3        3          3           7   8  10
   4        3          3           5  11  17
   5        3          3           6  12  14
   6        3          2          15  16
   7        3          3          13  14  17
   8        3          1          13
   9        3          2          11  17
  10        3          2          11  12
  11        3          1          16
  12        3          2          13  16
  13        3          1          15
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       9    0    5
         2     7       9    0    2
         3     7       0   10    3
  3      1     1       0    5   10
         2     1       9    0    7
         3     3       6    0    6
  4      1     3       5    0   10
         2     8       2    0    7
         3     9       0    9    3
  5      1     2       0    2    9
         2     7       9    0    8
         3     7       5    0    9
  6      1     7       0    8    7
         2     9       8    0    5
         3    10       6    0    2
  7      1     1       3    0    7
         2     6       0    4    7
         3     6       2    0    7
  8      1     1      10    0    7
         2     5      10    0    5
         3     6       9    0    4
  9      1     4       0    2    3
         2    10       0    1    3
         3    10       2    0    3
 10      1     1       7    0    5
         2     7       0    1    5
         3    10       3    0    3
 11      1     3       0    6    7
         2     3       7    0    7
         3     8       6    0    7
 12      1     2       5    0    3
         2     4       0    9    2
         3     5       1    0    2
 13      1     7       8    0    6
         2     8       0   10    6
         3     8       7    0    6
 14      1     1       5    0    3
         2     2       0    7    3
         3     2       3    0    2
 15      1     1       0    3    1
         2     7       9    0    1
         3     9       6    0    1
 16      1     1       0    5   10
         2     6       8    0    7
         3     9       0    3    5
 17      1     5       0    7    6
         2     7       0    5    4
         3     9       0    4    4
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   18   17   91
************************************************************************
