jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 7 9 13 14 18 
2	3	6		32 26 17 16 10 8 
3	3	6		32 23 21 20 12 10 
4	3	5		32 25 23 20 11 
5	3	6		32 28 26 25 17 16 
6	3	7		35 27 25 24 20 19 15 
7	3	4		23 21 20 12 
8	3	8		51 31 30 28 25 24 23 21 
9	3	5		32 31 23 22 19 
10	3	4		35 25 19 15 
11	3	3		27 19 15 
12	3	6		49 35 29 28 24 19 
13	3	9		51 37 36 34 30 29 28 27 25 
14	3	6		51 37 36 30 29 23 
15	3	9		51 50 37 36 34 31 30 29 28 
16	3	5		51 47 37 29 23 
17	3	4		50 37 30 20 
18	3	3		37 30 20 
19	3	8		51 50 39 37 36 34 33 30 
20	3	7		51 49 47 39 38 36 29 
21	3	7		50 49 47 44 39 38 29 
22	3	4		47 37 34 29 
23	3	4		43 35 34 27 
24	3	5		48 47 37 36 33 
25	3	9		50 49 46 45 44 43 42 41 38 
26	3	4		49 48 37 33 
27	3	7		50 49 45 44 42 40 39 
28	3	7		47 45 44 43 42 41 38 
29	3	4		48 45 40 33 
30	3	6		48 47 45 43 42 40 
31	3	5		49 45 43 41 38 
32	3	5		51 47 43 42 41 
33	3	4		46 43 42 41 
34	3	3		44 41 40 
35	3	2		42 38 
36	3	2		44 40 
37	3	1		38 
38	3	1		40 
39	3	1		41 
40	3	1		52 
41	3	1		52 
42	3	1		52 
43	3	1		52 
44	3	1		52 
45	3	1		52 
46	3	1		52 
47	3	1		52 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	7	5	4	4	5	
	2	8	5	3	4	3	
	3	9	5	3	2	2	
3	1	1	9	6	4	10	
	2	8	7	4	4	7	
	3	9	7	2	4	6	
4	1	1	9	6	6	7	
	2	4	8	5	4	7	
	3	9	8	5	3	7	
5	1	3	3	8	10	4	
	2	6	3	8	9	3	
	3	10	2	8	7	3	
6	1	1	4	10	7	2	
	2	2	4	8	6	2	
	3	3	4	6	4	1	
7	1	1	10	3	4	4	
	2	5	8	3	4	3	
	3	6	8	3	4	2	
8	1	2	7	2	7	7	
	2	4	7	2	6	5	
	3	6	7	2	6	3	
9	1	3	7	10	7	7	
	2	4	6	10	3	6	
	3	7	4	10	1	5	
10	1	1	6	9	7	7	
	2	6	5	9	6	6	
	3	9	3	9	6	5	
11	1	2	6	4	3	6	
	2	4	4	3	2	4	
	3	9	4	2	2	2	
12	1	6	8	8	10	2	
	2	7	7	8	8	2	
	3	9	5	5	6	2	
13	1	2	8	7	5	3	
	2	3	7	6	5	3	
	3	4	7	6	5	2	
14	1	1	8	4	5	7	
	2	2	8	3	3	4	
	3	4	6	3	2	4	
15	1	2	9	5	5	9	
	2	5	6	5	4	7	
	3	10	3	5	2	5	
16	1	4	5	3	4	8	
	2	8	4	2	3	7	
	3	10	2	1	3	7	
17	1	3	2	8	9	4	
	2	5	1	7	6	3	
	3	6	1	6	3	3	
18	1	4	10	7	10	8	
	2	7	10	4	7	3	
	3	9	10	3	7	3	
19	1	2	4	10	4	3	
	2	6	3	6	4	2	
	3	8	2	4	3	2	
20	1	2	2	5	7	10	
	2	5	2	5	4	7	
	3	7	2	3	3	7	
21	1	2	9	7	7	6	
	2	8	8	5	5	6	
	3	10	7	4	4	6	
22	1	1	9	9	4	5	
	2	8	5	7	2	2	
	3	10	2	6	1	1	
23	1	3	6	5	10	9	
	2	4	4	4	7	6	
	3	6	3	4	6	6	
24	1	3	9	10	9	7	
	2	4	8	6	7	7	
	3	6	6	2	6	3	
25	1	5	7	3	5	7	
	2	6	7	3	4	4	
	3	10	7	2	2	3	
26	1	5	7	9	2	6	
	2	8	7	8	1	6	
	3	10	7	6	1	5	
27	1	1	6	5	8	8	
	2	6	5	3	7	8	
	3	10	1	1	7	8	
28	1	2	10	7	7	5	
	2	4	6	7	4	5	
	3	10	4	3	2	5	
29	1	1	3	4	7	7	
	2	4	2	4	5	4	
	3	8	2	2	4	3	
30	1	1	6	8	8	8	
	2	3	4	7	7	7	
	3	10	2	6	1	6	
31	1	4	5	10	5	6	
	2	5	4	4	5	5	
	3	7	4	2	5	3	
32	1	4	2	7	4	5	
	2	5	2	6	3	4	
	3	6	2	5	3	1	
33	1	4	10	6	8	10	
	2	8	9	6	4	8	
	3	9	7	6	4	8	
34	1	6	8	7	8	8	
	2	9	8	3	6	7	
	3	10	8	1	4	7	
35	1	3	6	7	9	10	
	2	5	6	5	9	9	
	3	10	6	4	9	7	
36	1	5	5	5	3	6	
	2	6	5	4	3	5	
	3	7	4	3	3	4	
37	1	3	6	6	5	3	
	2	5	5	6	4	3	
	3	6	3	2	4	2	
38	1	3	10	3	5	7	
	2	8	9	3	5	7	
	3	9	9	1	4	7	
39	1	3	9	4	3	4	
	2	4	8	4	3	3	
	3	6	8	4	3	2	
40	1	5	7	7	6	8	
	2	6	7	6	3	3	
	3	7	7	4	1	1	
41	1	5	8	3	8	5	
	2	9	8	3	5	5	
	3	10	7	3	3	5	
42	1	2	7	9	8	4	
	2	5	7	8	6	3	
	3	7	7	8	2	1	
43	1	1	3	6	9	4	
	2	2	3	6	6	3	
	3	5	3	6	6	1	
44	1	1	7	8	6	5	
	2	5	7	7	5	4	
	3	6	6	6	4	4	
45	1	5	6	7	10	7	
	2	8	4	6	8	7	
	3	9	4	5	5	6	
46	1	1	5	3	8	10	
	2	6	3	3	4	7	
	3	10	3	1	2	4	
47	1	3	8	4	4	1	
	2	4	6	4	2	1	
	3	8	4	4	2	1	
48	1	1	8	7	7	3	
	2	2	5	3	6	2	
	3	8	4	1	4	2	
49	1	2	8	3	4	6	
	2	5	7	2	4	6	
	3	8	7	2	4	5	
50	1	5	8	3	9	7	
	2	6	7	2	7	6	
	3	7	7	1	7	4	
51	1	4	9	6	2	3	
	2	5	8	6	2	2	
	3	6	5	6	2	1	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	57	54	252	249

************************************************************************
