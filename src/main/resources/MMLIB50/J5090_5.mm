jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 4 5 7 8 
2	3	3		11 6 3 
3	3	4		15 14 10 9 
4	3	4		15 14 10 9 
5	3	4		15 14 10 9 
6	3	4		17 15 14 9 
7	3	3		15 14 9 
8	3	5		19 18 17 14 12 
9	3	4		19 18 13 12 
10	3	5		23 21 19 17 13 
11	3	2		14 12 
12	3	5		27 23 22 21 16 
13	3	8		32 30 29 27 26 24 22 20 
14	3	6		35 30 26 23 22 21 
15	3	6		35 30 29 23 22 21 
16	3	5		32 30 29 26 20 
17	3	5		32 30 29 27 20 
18	3	5		29 28 26 25 24 
19	3	4		32 30 27 22 
20	3	4		35 34 28 25 
21	3	3		32 28 24 
22	3	3		34 31 28 
23	3	2		33 25 
24	3	5		41 37 36 34 31 
25	3	4		41 37 36 31 
26	3	2		33 31 
27	3	5		41 40 39 37 34 
28	3	4		39 38 37 33 
29	3	3		36 34 31 
30	3	7		48 47 41 40 39 38 37 
31	3	6		48 47 42 40 39 38 
32	3	4		42 40 38 36 
33	3	4		46 42 41 36 
34	3	4		48 47 43 38 
35	3	3		47 39 38 
36	3	4		48 47 45 44 
37	3	3		51 44 42 
38	3	3		46 45 44 
39	3	3		51 44 43 
40	3	3		51 46 43 
41	3	2		51 43 
42	3	2		49 45 
43	3	2		50 49 
44	3	1		49 
45	3	1		50 
46	3	1		49 
47	3	1		51 
48	3	1		49 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	6	1	0	8	7	
	2	9	0	5	7	7	
	3	10	0	2	5	6	
3	1	4	4	0	5	8	
	2	5	3	0	3	4	
	3	8	1	0	1	3	
4	1	1	0	8	3	6	
	2	2	0	5	1	5	
	3	9	0	5	1	4	
5	1	8	4	0	3	5	
	2	9	2	0	3	4	
	3	10	0	2	3	4	
6	1	3	9	0	9	7	
	2	4	8	0	7	7	
	3	10	8	0	6	7	
7	1	3	0	8	7	9	
	2	7	5	0	3	9	
	3	7	0	3	3	9	
8	1	5	0	8	5	8	
	2	9	0	7	4	8	
	3	10	4	0	4	7	
9	1	4	0	8	4	7	
	2	4	5	0	2	7	
	3	5	4	0	1	7	
10	1	1	0	5	5	7	
	2	6	0	4	4	5	
	3	9	1	0	3	5	
11	1	4	7	0	7	5	
	2	7	4	0	5	5	
	3	10	3	0	5	5	
12	1	1	0	1	8	9	
	2	3	0	1	7	7	
	3	10	0	1	7	6	
13	1	1	0	6	8	3	
	2	3	4	0	5	2	
	3	10	4	0	4	2	
14	1	1	0	5	9	9	
	2	4	0	5	6	5	
	3	5	0	2	3	4	
15	1	2	6	0	6	6	
	2	9	6	0	6	5	
	3	9	0	4	6	4	
16	1	5	4	0	7	6	
	2	7	0	8	5	4	
	3	10	1	0	3	2	
17	1	5	10	0	4	5	
	2	6	0	8	3	4	
	3	9	0	8	2	3	
18	1	2	0	8	4	9	
	2	6	0	6	2	8	
	3	10	0	6	1	5	
19	1	9	0	5	4	4	
	2	9	3	0	2	3	
	3	10	2	0	2	2	
20	1	2	0	4	4	8	
	2	3	6	0	4	6	
	3	4	6	0	4	5	
21	1	2	9	0	2	10	
	2	5	0	2	2	6	
	3	8	0	2	2	3	
22	1	5	0	4	9	10	
	2	7	8	0	7	8	
	3	8	5	0	7	7	
23	1	1	10	0	8	5	
	2	2	8	0	6	4	
	3	10	6	0	6	3	
24	1	5	4	0	5	5	
	2	9	2	0	5	3	
	3	9	0	1	4	2	
25	1	1	7	0	10	8	
	2	8	4	0	9	8	
	3	9	0	7	7	7	
26	1	1	1	0	3	9	
	2	6	0	4	3	9	
	3	7	0	4	1	8	
27	1	1	7	0	8	6	
	2	2	0	5	8	3	
	3	5	0	5	8	2	
28	1	2	0	5	4	8	
	2	4	0	4	4	7	
	3	6	4	0	2	5	
29	1	1	0	7	5	8	
	2	3	0	5	3	6	
	3	7	0	5	3	5	
30	1	3	0	7	9	9	
	2	5	0	7	9	7	
	3	9	0	5	9	5	
31	1	1	7	0	9	3	
	2	4	7	0	6	1	
	3	10	7	0	5	1	
32	1	4	9	0	2	8	
	2	5	0	5	2	4	
	3	9	0	5	2	3	
33	1	1	0	7	9	4	
	2	7	7	0	8	4	
	3	10	6	0	7	4	
34	1	3	10	0	2	9	
	2	7	9	0	1	6	
	3	8	8	0	1	6	
35	1	1	0	2	8	7	
	2	4	0	2	6	4	
	3	8	10	0	5	1	
36	1	1	0	6	9	9	
	2	2	6	0	4	7	
	3	5	0	4	1	6	
37	1	3	10	0	3	8	
	2	5	0	8	3	7	
	3	7	0	8	2	6	
38	1	3	0	3	5	4	
	2	5	0	3	4	2	
	3	7	0	2	3	2	
39	1	2	6	0	3	4	
	2	5	5	0	3	2	
	3	6	1	0	2	2	
40	1	5	8	0	9	7	
	2	7	3	0	6	3	
	3	9	0	9	5	3	
41	1	1	5	0	2	9	
	2	4	5	0	1	8	
	3	5	5	0	1	7	
42	1	1	0	6	5	7	
	2	2	0	6	4	5	
	3	10	0	6	1	5	
43	1	1	0	5	6	8	
	2	6	0	5	3	4	
	3	7	0	4	2	2	
44	1	2	7	0	7	4	
	2	9	7	0	6	3	
	3	10	6	0	4	3	
45	1	5	7	0	8	6	
	2	6	5	0	7	4	
	3	7	2	0	7	1	
46	1	6	10	0	7	6	
	2	7	7	0	5	2	
	3	8	0	6	4	1	
47	1	5	0	4	8	8	
	2	5	7	0	7	7	
	3	10	0	3	6	5	
48	1	5	0	4	10	9	
	2	5	5	0	9	8	
	3	10	4	0	8	7	
49	1	2	5	0	4	9	
	2	4	4	0	4	8	
	3	10	4	0	4	7	
50	1	2	1	0	4	6	
	2	7	1	0	3	6	
	3	8	1	0	2	2	
51	1	1	5	0	9	9	
	2	3	0	1	8	7	
	3	8	3	0	8	6	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	25	22	274	317

************************************************************************
