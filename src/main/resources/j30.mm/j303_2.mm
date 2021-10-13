************************************************************************
file with basedata            : mf3_.bas
initial value random generator: 583874029
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  246
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       25       24       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          1           7
   3        3          3           6   8  14
   4        3          3           5   9  13
   5        3          3          15  21  27
   6        3          3           7  11  16
   7        3          1          20
   8        3          1          30
   9        3          3          10  12  14
  10        3          3          15  17  18
  11        3          3          12  23  24
  12        3          2          20  27
  13        3          2          17  18
  14        3          2          30  31
  15        3          2          16  25
  16        3          1          23
  17        3          3          19  22  23
  18        3          1          30
  19        3          1          21
  20        3          2          26  29
  21        3          2          25  29
  22        3          1          26
  23        3          2          28  29
  24        3          3          25  26  27
  25        3          1          31
  26        3          1          28
  27        3          1          28
  28        3          1          31
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       8    0    9    0
         2     4       6    0    6    0
         3     4       0    7    8    0
  3      1     5       0    8    0    3
         2     6       3    0    0    1
         3     9       0    6    4    0
  4      1     1       0    7    9    0
         2    10       0    5    0    2
         3    10       0    3    0    5
  5      1     6       6    0    7    0
         2     6       0    1    9    0
         3    10       6    0    6    0
  6      1     4       6    0   10    0
         2     6       5    0    0    7
         3    10       5    0    5    0
  7      1     2       0    6    3    0
         2     5       0    4    0    6
         3     6       6    0    0    4
  8      1     4      10    0    9    0
         2     9       0    6    0   10
         3     9      10    0    0   10
  9      1     1       6    0   10    0
         2     1       7    0    8    0
         3     6       4    0    7    0
 10      1     4       0    7    3    0
         2     5       0    3    0    8
         3     7       5    0    0    6
 11      1     3       0    6    8    0
         2     4       0    6    6    0
         3     7       0    6    0    6
 12      1     1       0   10    0    7
         2     7       0    9   10    0
         3     8       0    9    9    0
 13      1     5       5    0    7    0
         2     5       5    0    0    9
         3     6       4    0    7    0
 14      1     6       0    6    0    1
         2     7       1    0    4    0
         3    10       0    5    3    0
 15      1     3       7    0    0    6
         2     9       7    0    5    0
         3    10       4    0    0    2
 16      1     2       5    0    7    0
         2     3       0    6    0    5
         3     8       0    4    0    4
 17      1     2       0    7    0   10
         2     7       4    0    0   10
         3     9       0    6    0   10
 18      1     1       7    0    3    0
         2     7       0    1    3    0
         3     7       6    0    0    2
 19      1     1       8    0    0    4
         2     4       8    0    0    3
         3     9       0    6    4    0
 20      1     4      10    0    0    9
         2     9       0    3    3    0
         3    10      10    0    0    4
 21      1     5       8    0    0    3
         2     9       7    0    4    0
         3    10       5    0    4    0
 22      1     3       7    0    9    0
         2     5       7    0    7    0
         3     7       0    1    0    6
 23      1     2       2    0    7    0
         2     6       0    8    7    0
         3     7       2    0    4    0
 24      1     6       0    4    0    9
         2     8       0    4    8    0
         3    10       0    4    4    0
 25      1     1       0   10    2    0
         2     2      10    0    2    0
         3     9       0    8    0    9
 26      1     4       0    8    0    6
         2     7       0    8    0    4
         3    10       0    7    8    0
 27      1     1       0    6    6    0
         2     5       0    5    0    8
         3     8       0    3    0    5
 28      1     1       0    8    8    0
         2     9       0    5    5    0
         3    10       2    0    5    0
 29      1     1       9    0    4    0
         2     2       7    0    0    6
         3     2       0    7    0    3
 30      1     2       9    0    6    0
         2     5       0    6    4    0
         3     9       0    3    0    8
 31      1     2       0    9    0    7
         2     6       3    0    6    0
         3     9       2    0    4    0
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   28   31   67   48
************************************************************************
