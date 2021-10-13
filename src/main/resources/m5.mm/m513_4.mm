************************************************************************
file with basedata            : cm513_.bas
initial value random generator: 171800809
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  133
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       17       10       17
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          2           7   9
   3        5          2           5   7
   4        5          3           9  10  11
   5        5          3           6   9  16
   6        5          3           8  11  13
   7        5          2          10  11
   8        5          1          15
   9        5          2          12  13
  10        5          3          13  16  17
  11        5          2          15  17
  12        5          2          14  17
  13        5          1          14
  14        5          1          15
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       5    9    0    6
         2     2       5    8    0    5
         3     6       4    8    3    0
         4     7       4    8    0    4
         5    10       4    6    1    0
  3      1     2       8   10    0    3
         2     2       8   10    8    0
         3     6       7   10    0    3
         4     7       7    9    0    3
         5     8       6    9    0    3
  4      1     2       6    7    9    0
         2     5       6    7    8    0
         3     6       4    6    6    0
         4     6       5    4    0    4
         5     8       2    2    0    3
  5      1     1      10    8    0    6
         2     3      10    7    3    0
         3     4      10    7    2    0
         4     7       9    5    1    0
         5     8       9    4    0    5
  6      1     3       6    8    0    7
         2     6       4    7    0    7
         3     7       3    7    0    6
         4     9       2    6    4    0
         5     9       2    6    0    6
  7      1     1       5   10    0    6
         2     2       4    8    0    4
         3     5       4    6    2    0
         4     5       3    5    0    3
         5     6       2    2    0    1
  8      1     3       5    7    0    7
         2     5       4    7    0    6
         3     5       4    7    3    0
         4     6       4    7    2    0
         5    10       4    6    2    0
  9      1     1      10   10    0    7
         2     6      10    9    3    0
         3     6      10    8    6    0
         4     8      10    7    0    7
         5    10      10    6    0    3
 10      1     3       3   10    0    9
         2     5       3    9    0    6
         3     5       2    9    9    0
         4     8       2    9    7    0
         5    10       1    9    7    0
 11      1     1      10    6    0   10
         2     1       9    6    2    0
         3     2       9    6    0    8
         4     4       6    5    2    0
         5     5       4    5    2    0
 12      1     8       7    9    0    6
         2     8       8    8    6    0
         3     9       7    7    0    7
         4     9       7    6    6    0
         5    10       6    5    0    6
 13      1     4       7    5    8    0
         2     5       6    4    6    0
         3     9       6    4    0    3
         4     9       4    4    5    0
         5    10       2    4    4    0
 14      1     3       7    6    0    6
         2     8       6    6    0    6
         3     9       6    5    0    6
         4    10       2    5    3    0
         5    10       3    4    0    6
 15      1     2       5    7    4    0
         2     2       5    6    0    4
         3     2       6    6    4    0
         4     2       5    6    5    0
         5     5       5    5    2    0
 16      1     3       2    8    8    0
         2     4       2    8    6    0
         3     5       2    7    0   10
         4     6       1    7    0    8
         5     7       1    7    4    0
 17      1     1      10    8    8    0
         2     3       8    7    0    8
         3     5       8    7    0    6
         4     7       6    5    7    0
         5     7       6    5    0    1
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   16   16   44   52
************************************************************************
