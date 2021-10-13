************************************************************************
file with basedata            : cm511_.bas
initial value random generator: 6232
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  150
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       15       14       15
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          2          14  15
   3        5          2           8  13
   4        5          3           5   6   7
   5        5          3          11  12  16
   6        5          3          10  12  15
   7        5          3           8   9  12
   8        5          2          10  14
   9        5          2          10  11
  10        5          1          16
  11        5          2          15  17
  12        5          1          17
  13        5          1          14
  14        5          2          16  17
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       5    0    0   10
         2     1       0    8    0   10
         3     4       5    0    7    0
         4     7       0    4    0   10
         5    10       4    0    0   10
  3      1     1       5    0    0    8
         2     2       0    6    0    8
         3     5       0    6    3    0
         4     7       0    5    3    0
         5    10       0    5    0    5
  4      1     5       0    7    9    0
         2     6       4    0    0   10
         3     6       0    5    0    4
         4     8       0    3    8    0
         5    10       4    0    8    0
  5      1     2       3    0    9    0
         2     3       0    6    8    0
         3     6       0    4    0    9
         4     9       2    0    6    0
         5     9       0    2    0    3
  6      1     1       4    0    0    7
         2     3       0    2    7    0
         3     6       4    0    4    0
         4     7       0    2    0    3
         5     8       3    0    2    0
  7      1     2       8    0    0    5
         2     3       0    5    2    0
         3     6       0    3    2    0
         4     8       0    2    0    4
         5    10       6    0    2    0
  8      1     3       6    0    8    0
         2     4       0    4    0    6
         3     5       6    0    0    4
         4    10       5    0    0    2
         5    10       0    3    0    4
  9      1     3       1    0    8    0
         2     3       0    7    6    0
         3     8       0    3    0    9
         4     8       0    4    4    0
         5     9       0    2    4    0
 10      1     2       0    9    0    4
         2     2       0    9    7    0
         3     5       0    9    4    0
         4     7       7    0    4    0
         5    10       6    0    0    4
 11      1     2       0    9   10    0
         2     3       8    0   10    0
         3     5       7    0    9    0
         4     6       0    6    0    6
         5     8       0    5    9    0
 12      1     5       4    0    7    0
         2     5       6    0    0    7
         3     5       5    0    0    9
         4     7       0    3    0    4
         5    10       1    0    7    0
 13      1     2       0    3    6    0
         2     2       0    3    0    3
         3     4       6    0    7    0
         4     5       3    0    0    3
         5    10       2    0    6    0
 14      1     3       0    6    9    0
         2     5       0    6    5    0
         3     9      10    0    4    0
         4    10       6    0    0    1
         5    10       0    5    0    1
 15      1     2       8    0    0    3
         2     4       7    0    0    3
         3     6       7    0    7    0
         4     7       0    5    0    2
         5     8       5    0    0    2
 16      1     2       7    0    4    0
         2     6       4    0    0    4
         3     8       0    9    4    0
         4     9       0    9    0    4
         5    10       0    7    2    0
 17      1     1       8    0    7    0
         2     3       5    0    7    0
         3     4       4    0    0    6
         4     5       2    0    0    2
         5     8       0    7    7    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   23   20   56   50
************************************************************************
