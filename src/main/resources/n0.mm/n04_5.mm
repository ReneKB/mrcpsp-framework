************************************************************************
file with basedata            : me4_.bas
initial value random generator: 1242811565
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  12
horizon                       :  89
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     10      0       14        9       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           5   6
   3        3          3           6   7   8
   4        3          3           9  10  11
   5        3          2           7   8
   6        3          2          10  11
   7        3          3           9  10  11
   8        3          1           9
   9        3          1          12
  10        3          1          12
  11        3          1          12
  12        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     2       0    5
         2     3       7    0
         3     8       0    2
  3      1     3       0    6
         2     3       5    0
         3     8       1    0
  4      1     3       0    8
         2     4       0    6
         3     9       0    3
  5      1     3       9    0
         2     5       8    0
         3     9       7    0
  6      1     2       0    9
         2     5       0    7
         3     8       0    5
  7      1     1       0    3
         2     8       5    0
         3    10       3    0
  8      1     6       0    5
         2     6       9    0
         3     8       6    0
  9      1     3       0    5
         2     7       0    3
         3     9       3    0
 10      1     1       0    6
         2     2       0    5
         3    10       0    4
 11      1     3       5    0
         2     6       0    7
         3    10       0    4
 12      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
   14   19
************************************************************************
