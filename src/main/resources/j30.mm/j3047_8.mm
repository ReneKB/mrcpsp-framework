************************************************************************
file with basedata            : mf47_.bas
initial value random generator: 1154783886
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  32
horizon                       :  250
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     30      0       36        7       36
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2          15  31
   3        3          3           5   8  19
   4        3          2           6   9
   5        3          3           6   7  10
   6        3          3          21  22  27
   7        3          3          12  13  18
   8        3          1          27
   9        3          2          11  15
  10        3          2          13  14
  11        3          1          21
  12        3          1          14
  13        3          1          15
  14        3          3          17  20  25
  15        3          3          16  23  25
  16        3          2          28  30
  17        3          2          21  31
  18        3          3          22  24  26
  19        3          2          23  24
  20        3          2          22  24
  21        3          1          29
  22        3          2          23  31
  23        3          1          29
  24        3          2          27  28
  25        3          2          26  30
  26        3          1          28
  27        3          1          30
  28        3          1          29
  29        3          1          32
  30        3          1          32
  31        3          1          32
  32        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       9    5    3    4
         2     6       8    5    2    2
         3     9       7    4    2    1
  3      1     2       5    7    7   10
         2     6       4    4    5   10
         3     6       4    2    7   10
  4      1     4       7    1    7    4
         2     7       6    1    6    4
         3     9       5    1    2    4
  5      1     6       9    6    9    9
         2     8       8    6    7    9
         3    10       7    6    7    8
  6      1     1      10    7    2    6
         2     1       7    8    2    6
         3     5       6    4    1    6
  7      1     5      10    3    6    5
         2     5       8    3    8    4
         3     9       3    2    5    4
  8      1     2       9    7   10    6
         2     6       8    6    5    5
         3    10       6    6    4    5
  9      1     2       4    8    7   10
         2     4       4    6    6   10
         3     9       3    4    6    9
 10      1     4       7    2    6    8
         2     8       7    2    4    8
         3     9       3    1    2    8
 11      1     4       7    6   10    7
         2     6       5    6   10    7
         3     7       4    5    9    7
 12      1     2       9    6    5   10
         2    10       7    4    2    3
         3    10       8    2    4    5
 13      1     1       3    1    7    9
         2     4       3    1    5    8
         3     6       3    1    2    5
 14      1     2       3    9    4    5
         2     9       2    9    4    3
         3    10       1    9    1    1
 15      1     5       8    7    9    4
         2     6       7    7    8    4
         3    10       5    5    8    3
 16      1     3       4    8    9    3
         2     6       3    8    9    2
         3     9       3    7    8    2
 17      1     6      10    4    6    4
         2     7       8    2    4    4
         3    10       4    1    2    3
 18      1     1       8    7    5    9
         2     5       7    6    5    8
         3     8       4    4    4    8
 19      1     4       7    3    9    8
         2     6       6    2    8    4
         3     8       5    2    8    2
 20      1     6       7    5    9    7
         2     7       6    5    5    6
         3     9       5    4    3    4
 21      1     1       8    6    1    6
         2     6       7    5    1    3
         3     9       5    5    1    2
 22      1     4       7    5    6    2
         2     6       5    5    5    2
         3     9       3    5    4    2
 23      1     2       8   10    6    8
         2     5       8    7    5    7
         3     5       7    8    6    5
 24      1     4       3    8    8    5
         2     5       3    5    7    4
         3     6       3    4    6    3
 25      1     2       5    6   10    9
         2     4       4    5    7    7
         3     9       3    5    5    5
 26      1     5       8    4    4    6
         2    10       5    4    3    5
         3    10       3    4    4    1
 27      1     5       6    6    2    4
         2    10       5    5    2    2
         3    10       6    5    1    2
 28      1     2       2   10    8    9
         2     3       2    9    4    6
         3     4       1    7    3    3
 29      1     1       7    6    2    3
         2     6       6    6    1    2
         3    10       5    6    1    2
 30      1     4       6    9    9    4
         2     4       7    9    8    5
         3     6       4    3    6    2
 31      1     6       5    5    6    6
         2     6       5    5    5    7
         3     9       5    5    3    3
 32      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   33   26  157  158
************************************************************************