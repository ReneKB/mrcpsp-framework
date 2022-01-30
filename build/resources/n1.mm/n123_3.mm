************************************************************************
file with basedata            : cn123_.bas
initial value random generator: 967532630
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  130
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18       10       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7  10  13
   3        3          3           7  15  16
   4        3          3           5   7  16
   5        3          3           6   8   9
   6        3          3          10  12  17
   7        3          1          14
   8        3          3          12  13  14
   9        3          3          11  12  13
  10        3          1          15
  11        3          1          14
  12        3          1          15
  13        3          1          17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     1       9    9    9
         2     9       6    7    6
         3    10       5    3    3
  3      1     1       3    2    8
         2     6       3    2    6
         3     8       3    2    0
  4      1     2       7   10    9
         2     4       7    6    5
         3     7       6    3    5
  5      1     7       8    8    0
         2     9       7    2    9
         3     9       7    5    0
  6      1     1       8    5    0
         2     8       7    4    3
         3    10       7    3    1
  7      1     4       8    3    9
         2     9       6    2    0
         3    10       5    2    0
  8      1     3       8    8    4
         2     8       6    6    0
         3    10       1    1    0
  9      1     1       7    9    7
         2     5       5    6    5
         3     9       3    2    0
 10      1     6      10    7    4
         2     7       8    7    0
         3    10       5    4    2
 11      1     2       7    7    0
         2     4       6    5    0
         3     5       6    4    0
 12      1     1       7    8    4
         2     4       6    6    3
         3     9       5    5    0
 13      1     1       7    9    7
         2     2       5    9    0
         3     3       2    9    0
 14      1     2       6    2   10
         2     6       6    2    0
         3     8       1    1    0
 15      1     2       6    7    0
         2     3       4    6    0
         3     7       4    3    0
 16      1     2       7    3    4
         2     6       7    3    2
         3     7       6    3    0
 17      1     4       3   10    0
         2     5       2   10   10
         3     8       2   10    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   24   22   75
************************************************************************
