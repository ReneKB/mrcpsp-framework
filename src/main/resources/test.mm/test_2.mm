************************************************************************
file with basedata            : me1_.bas
initial value random generator: 466396357
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  7
horizon                       :  21
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1      5      0        8        6        8
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        2          1           6
   3        2          1           5
   4        2          1           6
   5        2          1           6
   6        1          1           7
   7        1          0
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     2       3    0    1
         2     5       1    1    2
  3      1     2       3    0    1
         2     5       1    1    2
  4      1     2       3    0    1
         2     5       1    1    2
  5      1     2       3    0    1
         2     5       1    1    2
  6      1     1       1    1    1
  7      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
    4    4    6
************************************************************************