************************************************************************
file with basedata            : cm254_.bas
initial value random generator: 227908840
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  122
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       44        7       44
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          3           6   7   9
   3        2          2           5  14
   4        2          3           6  13  14
   5        2          3           6   7   8
   6        2          1          10
   7        2          3          10  11  12
   8        2          1           9
   9        2          1          12
  10        2          3          15  16  17
  11        2          2          13  15
  12        2          2          13  17
  13        2          1          16
  14        2          2          15  16
  15        2          1          18
  16        2          1          18
  17        2          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       4   10    8    5
         2     9       3    7    6    2
  3      1     7      10    3   10    7
         2     9       5    2    9    5
  4      1     3      10    9    7    4
         2     7       5    6    5    2
  5      1     6       5    6    4    6
         2     7       3    6    1    2
  6      1     2       1    8    8    6
         2     9       1    8    6    5
  7      1     3       6    4    9    9
         2     5       4    2    7    9
  8      1     5       4    8    5   10
         2     6       2    7    5    9
  9      1     9       6    8    5    4
         2    10       5    6    3    2
 10      1     1      10    9    8    5
         2     4       9    8    6    5
 11      1     5       7   10    3    5
         2     8       4    6    1    4
 12      1     5      10    8    7    5
         2    10      10    4    4    5
 13      1     9      10    7    8    9
         2    10      10    6    4    9
 14      1     5       4   10    8    1
         2     7       1    9    8    1
 15      1     5       4    8    7    8
         2    10       4    5    6    8
 16      1     3       6    7    8    8
         2     7       6    6    2    4
 17      1     1       3    8    8    1
         2     4       3    7    8    1
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   17   18  105   88
************************************************************************
