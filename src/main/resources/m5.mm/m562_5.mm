************************************************************************
file with basedata            : cm562_.bas
initial value random generator: 746110952
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  144
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       12        4       12
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          3           5   6   8
   3        5          3           5  10  11
   4        5          2          12  14
   5        5          2          13  14
   6        5          3           7  10  14
   7        5          2           9  17
   8        5          2          11  12
   9        5          1          12
  10        5          2          15  16
  11        5          2          15  17
  12        5          1          13
  13        5          2          15  16
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
  2      1     1       4    7    5    7
         2     2       4    6    5    5
         3     2       4    7    4    7
         4     5       3    3    3    4
         5     9       3    2    3    3
  3      1     1       4    5    5    9
         2     3       4    4    5    8
         3     5       3    4    4    8
         4     6       3    3    3    8
         5     9       3    3    3    7
  4      1     3       4    6    2    4
         2     5       3    5    2    3
         3     8       3    4    2    2
         4     9       3    3    2    1
         5     9       2    3    2    2
  5      1     2       8   10    8    7
         2     2       8    9    9    7
         3     5       8    9    8    6
         4     9       7    8    6    6
         5    10       7    8    4    5
  6      1     1       6    6    7    5
         2     6       6    4    6    4
         3     7       3    3    4    2
         4    10       2    3    1    1
         5    10       2    2    3    2
  7      1     2      10    9    8    6
         2     2       8   10    8    6
         3     5       8    8    5    4
         4     5       8    8    6    3
         5     8       5    7    5    3
  8      1     1       7    6    6    9
         2     3       7    4    6    7
         3     4       6    4    5    7
         4     9       6    2    4    5
         5    10       6    2    4    4
  9      1     1       5    8    6    1
         2     4       5    7    5    1
         3     4       4    8    5    1
         4     5       4    7    5    1
         5    10       4    7    4    1
 10      1     1       8    6    9    9
         2     3       6    5    9    9
         3     6       4    4    8    8
         4     9       2    3    7    7
         5     9       4    2    8    7
 11      1     4       5    6   10    7
         2     5       3    5    8    5
         3     5       4    4    9    6
         4     6       3    3    7    3
         5     7       2    2    6    3
 12      1     2      10    5    5    7
         2     6      10    4    4    7
         3     8       9    2    4    7
         4     8      10    2    3    7
         5     9       9    2    2    6
 13      1     2       3    6    9    5
         2     3       2    6    7    4
         3     6       2    5    5    4
         4     7       2    3    3    3
         5     8       1    2    2    3
 14      1     2       4    9    7    8
         2     7       4    8    7    6
         3     8       4    6    6    6
         4     8       4    7    6    4
         5    10       4    5    5    3
 15      1     3       5    5   10    9
         2     3       5    5    9   10
         3     6       5    4    8    7
         4     8       4    4    6    5
         5     9       4    4    6    3
 16      1     1       9    7    4    6
         2     2       7    6    4    5
         3     7       5    6    3    5
         4     9       3    5    3    2
         5     9       2    6    3    2
 17      1     1       6    6    9    6
         2     3       5    6    9    5
         3     4       4    6    8    5
         4     4       5    6    8    4
         5     8       3    6    7    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   22   23  111  106
************************************************************************
