************************************************************************
file with basedata            : cm118_.bas
initial value random generator: 473590720
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  79
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       31        9       31
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           9  10  12
   3        1          2           6   8
   4        1          2           5   7
   5        1          2          15  17
   6        1          2           9  12
   7        1          2          10  13
   8        1          3           9  11  12
   9        1          2          15  16
  10        1          1          11
  11        1          2          14  15
  12        1          2          13  14
  13        1          2          16  17
  14        1          2          16  17
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       9    0    7    0
  3      1     6       8    0    0   10
  4      1     7       4    0    9    0
  5      1     8       0    4    0    7
  6      1    10       1    0    5    0
  7      1     6       0    9    4    0
  8      1     4       0    8    6    0
  9      1     4       0    7    6    0
 10      1     5       0    6    0    7
 11      1     2       3    0    4    0
 12      1     2       8    0    6    0
 13      1     5       0   10    0    3
 14      1     4       6    0    8    0
 15      1     3       8    0    5    0
 16      1     5       9    0    0    7
 17      1     7       8    0    2    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   15   16   62   34
************************************************************************
