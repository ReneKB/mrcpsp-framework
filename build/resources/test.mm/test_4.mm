************************************************************************
file with basedata            : me1_.bas
initial value random generator: 466396357
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  6
horizon                       :  14
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1      6      0        8        6        8
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          4           2   3   4   5
   2        1          1           6
   3        1          1           6
   4        1          1           6
   5        1          1           6
   6        1          0
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1
------------------------------------------------------------------------
  1      1     0       0
  2      1     2       1
  3      1     4       1
  4      1     3       2
  5      1     5       2
  6      1     0       0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1
    4
************************************************************************
