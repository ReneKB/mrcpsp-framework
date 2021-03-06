jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 3 4 5 6 
2	3	5		17 12 11 9 7 
3	3	3		17 9 8 
4	3	5		19 16 12 11 10 
5	3	4		18 17 14 9 
6	3	4		17 12 11 10 
7	3	3		16 14 10 
8	3	5		20 19 18 16 15 
9	3	2		19 10 
10	3	2		23 13 
11	3	4		24 23 20 15 
12	3	3		24 15 14 
13	3	3		24 20 15 
14	3	6		30 28 26 25 23 21 
15	3	4		30 26 22 21 
16	3	5		30 28 25 23 21 
17	3	2		30 20 
18	3	5		30 28 26 25 24 
19	3	4		30 28 25 23 
20	3	3		28 25 21 
21	3	4		32 31 29 27 
22	3	2		28 25 
23	3	4		36 32 31 27 
24	3	6		46 36 34 33 32 31 
25	3	3		37 32 27 
26	3	4		46 37 34 31 
27	3	4		46 35 34 33 
28	3	4		46 36 35 33 
29	3	6		42 40 39 37 36 35 
30	3	4		42 36 35 34 
31	3	5		51 42 40 39 35 
32	3	4		51 42 39 35 
33	3	6		51 45 42 41 40 39 
34	3	6		51 45 43 41 40 39 
35	3	5		45 44 43 41 38 
36	3	5		51 49 44 43 41 
37	3	5		51 50 49 48 43 
38	3	3		50 49 47 
39	3	2		47 44 
40	3	2		49 44 
41	3	2		50 47 
42	3	1		43 
43	3	1		47 
44	3	1		48 
45	3	1		47 
46	3	1		48 
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
2	1	6	10	9	8	6	
	2	7	9	6	6	3	
	3	8	7	5	4	2	
3	1	1	5	8	6	5	
	2	6	5	7	4	4	
	3	9	3	5	1	2	
4	1	2	5	6	8	7	
	2	8	5	5	6	4	
	3	10	3	4	3	4	
5	1	4	7	10	8	4	
	2	7	5	9	7	3	
	3	9	4	9	5	2	
6	1	5	6	7	8	6	
	2	6	4	6	6	5	
	3	7	2	5	4	2	
7	1	4	9	6	3	2	
	2	7	7	5	2	1	
	3	8	2	5	2	1	
8	1	1	6	9	9	6	
	2	2	5	7	9	5	
	3	6	3	5	8	4	
9	1	2	9	7	9	8	
	2	5	7	6	9	7	
	3	10	4	4	9	5	
10	1	1	10	7	6	9	
	2	7	10	5	4	7	
	3	9	10	3	3	4	
11	1	1	5	5	7	2	
	2	2	4	5	5	1	
	3	3	3	3	5	1	
12	1	2	5	4	6	8	
	2	3	4	4	2	8	
	3	4	4	4	1	8	
13	1	5	3	3	7	8	
	2	8	2	2	5	7	
	3	9	2	1	4	7	
14	1	3	9	4	5	6	
	2	4	7	3	5	5	
	3	10	1	1	4	1	
15	1	2	5	7	4	9	
	2	8	3	4	2	6	
	3	9	2	4	1	5	
16	1	1	7	6	3	8	
	2	7	6	6	3	8	
	3	8	3	5	2	8	
17	1	2	7	10	6	6	
	2	8	4	8	4	6	
	3	9	4	8	4	5	
18	1	5	3	4	6	4	
	2	9	1	3	4	3	
	3	10	1	3	3	3	
19	1	1	9	2	7	9	
	2	2	8	2	5	4	
	3	4	8	1	3	2	
20	1	5	8	5	10	4	
	2	6	4	3	4	2	
	3	7	2	1	1	2	
21	1	4	7	2	7	5	
	2	7	6	2	7	5	
	3	9	4	2	7	5	
22	1	5	9	6	1	2	
	2	8	9	4	1	1	
	3	9	7	4	1	1	
23	1	4	6	10	5	1	
	2	8	4	9	4	1	
	3	9	2	8	3	1	
24	1	5	7	8	6	10	
	2	6	7	8	6	8	
	3	8	7	8	5	8	
25	1	5	6	4	9	3	
	2	6	4	3	6	2	
	3	8	4	2	4	1	
26	1	7	3	6	8	3	
	2	8	2	4	7	2	
	3	9	2	3	6	2	
27	1	1	5	4	5	9	
	2	8	5	4	5	8	
	3	9	3	4	5	9	
28	1	2	6	6	3	8	
	2	3	5	5	2	7	
	3	5	4	5	2	3	
29	1	3	3	9	3	6	
	2	5	3	7	3	4	
	3	9	3	6	3	3	
30	1	1	8	9	7	9	
	2	8	8	6	4	5	
	3	10	7	5	3	2	
31	1	6	6	10	4	2	
	2	9	6	9	3	1	
	3	10	6	9	2	1	
32	1	8	10	10	9	6	
	2	9	9	8	6	4	
	3	10	9	7	3	4	
33	1	5	10	8	2	5	
	2	7	10	6	2	4	
	3	10	10	4	2	2	
34	1	2	3	7	5	7	
	2	5	3	7	3	6	
	3	8	2	7	3	5	
35	1	6	3	9	6	7	
	2	8	3	9	6	6	
	3	9	3	8	6	6	
36	1	4	10	7	6	3	
	2	5	10	5	6	3	
	3	6	10	4	6	1	
37	1	3	8	6	5	9	
	2	5	8	6	3	8	
	3	7	7	5	1	8	
38	1	7	5	9	5	4	
	2	8	3	7	5	3	
	3	9	2	3	4	3	
39	1	1	9	4	6	7	
	2	3	7	3	5	6	
	3	10	5	3	4	6	
40	1	4	7	8	7	9	
	2	7	7	8	7	8	
	3	10	7	6	6	9	
41	1	1	4	3	7	10	
	2	2	4	2	5	8	
	3	8	4	1	3	6	
42	1	2	8	8	4	8	
	2	3	5	6	4	8	
	3	9	4	6	4	7	
43	1	1	9	9	10	8	
	2	9	9	8	8	7	
	3	10	9	6	7	3	
44	1	2	9	8	5	8	
	2	6	9	7	5	7	
	3	10	9	7	2	7	
45	1	7	3	9	3	6	
	2	9	3	4	3	3	
	3	10	3	1	3	3	
46	1	4	4	5	8	7	
	2	5	4	2	4	4	
	3	6	4	1	3	3	
47	1	1	10	8	6	9	
	2	6	9	7	5	7	
	3	9	9	4	4	4	
48	1	5	5	3	8	9	
	2	6	4	2	8	9	
	3	10	4	1	8	8	
49	1	1	7	7	5	8	
	2	8	6	5	4	8	
	3	9	2	2	4	8	
50	1	1	2	6	6	8	
	2	5	2	4	4	8	
	3	10	2	2	4	8	
51	1	3	7	6	6	8	
	2	4	6	4	3	7	
	3	8	5	2	2	7	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	40	42	274	293

************************************************************************
