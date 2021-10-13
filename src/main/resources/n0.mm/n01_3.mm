************************************************************************
file with basedata            : me1_.bas
initial value random generator: 965561801
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  12
horizon                       :  85
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     10      0       13        7       13
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   7
   3        3          2           6   7
   4        3          2           7  11
   5        3          3           9  10  11
   6        3          1           8
   7        3          2           9  10
   8        3          3           9  10  11
   9        3          1          12
  10        3          1          12
  11        3          1          12
  12        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     1       0    8
         2     7       0    6
         3    10       0    4
  3      1     2       6    0
         2     4       0    6
         3     7       0    5
  4      1     1       0    4
         2     6       0    3
         3     7       5    0
  5      1     1       5    0
         2     3       0    4
         3     4       0    3
  6      1     5       4    0
         2     6       0    6
         3     8       0    5
  7      1     3       0    4
         2     3       6    0
         3    10       4    0
  8      1     3       0    3
         2     4       0    2
         3    10       0    1
  9      1     2       0   10
         2     6       0    9
         3    10       0    8
 10      1     3       8    0
         2     9       6    0
         3    10       4    0
 11      1     1       0    9
         2     5       4    0
         3     9       3    0
 12      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
    7   11
************************************************************************
