************************************************************************
file with basedata            : cm121_.bas
initial value random generator: 436649234
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  96
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       41        2       41
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           5  10  12
   3        1          3           6   8  13
   4        1          3           5   7  13
   5        1          3           6   8  16
   6        1          2           9  17
   7        1          3           8  10  12
   8        1          1           9
   9        1          1          11
  10        1          3          15  16  17
  11        1          1          15
  12        1          2          15  16
  13        1          1          14
  14        1          1          17
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     7       6   10    0    5
  3      1     1       6    5    0    8
  4      1    10       2    4    4    0
  5      1     6       7    5    5    0
  6      1     7       7    3    1    0
  7      1     2       6    3    0    8
  8      1     9       9    1    0    7
  9      1     8       1   10    0    3
 10      1     8      10    8    0    7
 11      1     2       8    9    7    0
 12      1    10       3    3    0    7
 13      1    10       2    3    0    6
 14      1     2       8    8    0    8
 15      1     6       5    4    0    3
 16      1     5      10    3    8    0
 17      1     3       5    5    0    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   15   12   25   65
************************************************************************
