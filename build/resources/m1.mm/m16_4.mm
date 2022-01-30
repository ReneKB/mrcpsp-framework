************************************************************************
file with basedata            : cm16_.bas
initial value random generator: 1192352787
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  83
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       31       12       31
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           6   8  10
   3        1          2           7  15
   4        1          3           5   8   9
   5        1          1          11
   6        1          3           7  11  12
   7        1          1          14
   8        1          1          16
   9        1          3          10  13  14
  10        1          2          15  17
  11        1          3          13  16  17
  12        1          2          13  14
  13        1          1          15
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
  2      1     2       9    8    0    1
  3      1     5       3    3    0    9
  4      1     9       9    1    7    0
  5      1     4       6    4    9    0
  6      1     8       7    9    4    0
  7      1     8       4    6    8    0
  8      1     2       3    6    0    4
  9      1     7       8    4    0    6
 10      1     7       3    5    0    2
 11      1     6       7    5    8    0
 12      1     2       7    8    0    7
 13      1     6       1    9    4    0
 14      1     9       6    6    6    0
 15      1     3       7    4    6    0
 16      1     4       3   10    0    3
 17      1     1       2    7    5    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   19   19   57   32
************************************************************************
