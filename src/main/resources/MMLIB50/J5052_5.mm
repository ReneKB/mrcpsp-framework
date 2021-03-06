jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	12		2 3 4 5 6 7 10 11 13 14 23 25 
2	3	5		22 18 15 9 8 
3	3	10		37 32 31 30 29 28 22 21 19 15 
4	3	4		24 17 16 12 
5	3	7		37 30 29 24 22 20 16 
6	3	6		31 30 24 22 20 18 
7	3	6		32 28 24 20 19 17 
8	3	9		51 32 31 30 29 28 26 24 19 
9	3	6		33 31 29 28 24 21 
10	3	5		37 30 26 24 18 
11	3	5		37 36 31 24 16 
12	3	6		37 33 30 28 27 21 
13	3	3		37 24 20 
14	3	7		51 36 33 32 29 28 22 
15	3	5		51 44 39 36 24 
16	3	8		51 45 44 38 35 33 32 28 
17	3	6		45 41 39 37 29 27 
18	3	6		51 44 41 35 32 28 
19	3	5		45 41 39 33 27 
20	3	5		51 45 35 33 26 
21	3	4		51 45 41 26 
22	3	7		45 44 43 42 39 35 34 
23	3	7		51 45 42 40 38 36 34 
24	3	3		45 41 27 
25	3	4		51 50 39 32 
26	3	5		44 42 40 36 34 
27	3	4		42 38 35 34 
28	3	4		49 43 42 39 
29	3	4		50 43 40 34 
30	3	4		48 45 43 42 
31	3	2		42 39 
32	3	2		43 34 
33	3	3		48 47 42 
34	3	4		49 48 47 46 
35	3	4		49 48 47 46 
36	3	4		49 48 47 46 
37	3	4		51 50 49 47 
38	3	2		49 43 
39	3	1		40 
40	3	3		48 47 46 
41	3	3		48 47 46 
42	3	2		50 46 
43	3	2		47 46 
44	3	2		47 46 
45	3	1		46 
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
2	1	3	0	10	10	10	
	2	4	0	10	6	8	
	3	8	0	10	6	7	
3	1	5	6	0	1	4	
	2	6	5	0	1	4	
	3	7	3	0	1	4	
4	1	4	6	0	4	7	
	2	5	4	0	3	6	
	3	8	3	0	3	5	
5	1	7	6	0	7	2	
	2	7	0	5	6	2	
	3	8	3	0	3	1	
6	1	4	7	0	6	3	
	2	4	0	5	6	3	
	3	10	0	3	2	3	
7	1	4	8	0	4	7	
	2	5	5	0	4	5	
	3	9	5	0	2	3	
8	1	1	9	0	4	7	
	2	6	9	0	3	7	
	3	10	0	3	3	5	
9	1	2	0	4	5	6	
	2	3	0	4	3	4	
	3	4	0	3	2	3	
10	1	4	0	9	9	8	
	2	4	3	0	5	7	
	3	6	0	1	4	1	
11	1	4	0	3	5	7	
	2	5	0	3	5	4	
	3	8	0	2	5	4	
12	1	1	0	10	8	4	
	2	2	1	0	8	3	
	3	5	1	0	7	2	
13	1	2	7	0	4	9	
	2	6	0	5	4	7	
	3	8	5	0	4	6	
14	1	2	10	0	4	8	
	2	3	0	8	4	4	
	3	5	4	0	4	4	
15	1	5	9	0	1	10	
	2	8	9	0	1	9	
	3	9	9	0	1	8	
16	1	6	0	5	6	7	
	2	9	0	4	4	6	
	3	9	4	0	4	3	
17	1	3	8	0	9	9	
	2	5	7	0	9	8	
	3	8	6	0	9	8	
18	1	5	2	0	7	6	
	2	8	2	0	7	5	
	3	8	0	4	7	5	
19	1	5	10	0	2	9	
	2	6	0	3	2	8	
	3	7	0	2	2	7	
20	1	2	0	7	8	6	
	2	3	7	0	7	3	
	3	8	1	0	6	2	
21	1	4	0	7	1	3	
	2	4	7	0	1	3	
	3	10	0	6	1	3	
22	1	5	6	0	4	9	
	2	6	6	0	4	8	
	3	9	0	3	4	8	
23	1	1	6	0	9	9	
	2	4	0	5	9	8	
	3	10	5	0	9	8	
24	1	2	0	9	1	7	
	2	8	3	0	1	8	
	3	9	3	0	1	7	
25	1	3	2	0	8	5	
	2	9	0	5	8	4	
	3	9	2	0	8	2	
26	1	2	0	9	5	4	
	2	2	3	0	4	4	
	3	6	0	1	4	3	
27	1	3	7	0	10	3	
	2	5	6	0	7	2	
	3	10	0	7	5	1	
28	1	3	5	0	4	4	
	2	8	4	0	4	4	
	3	10	0	7	2	4	
29	1	4	0	6	9	5	
	2	6	6	0	7	4	
	3	9	0	6	7	4	
30	1	3	0	8	10	4	
	2	4	7	0	10	3	
	3	5	0	6	10	3	
31	1	1	0	9	10	5	
	2	7	0	9	7	5	
	3	9	0	9	5	5	
32	1	6	0	10	9	10	
	2	7	10	0	9	10	
	3	8	0	10	9	9	
33	1	5	0	9	4	8	
	2	8	0	7	4	6	
	3	9	2	0	3	1	
34	1	2	6	0	7	10	
	2	4	6	0	6	9	
	3	4	0	5	4	9	
35	1	2	0	3	6	7	
	2	7	7	0	4	6	
	3	8	7	0	1	6	
36	1	3	0	4	6	7	
	2	4	4	0	5	5	
	3	8	0	2	5	5	
37	1	3	0	7	8	9	
	2	4	0	5	6	9	
	3	9	9	0	6	9	
38	1	1	0	8	7	7	
	2	3	0	7	7	5	
	3	7	2	0	7	5	
39	1	2	6	0	7	8	
	2	3	4	0	6	7	
	3	8	4	0	4	7	
40	1	4	0	7	5	6	
	2	6	0	6	5	6	
	3	9	0	4	5	6	
41	1	1	0	1	8	4	
	2	3	4	0	8	2	
	3	9	2	0	7	2	
42	1	2	0	6	4	11	
	2	3	0	6	4	10	
	3	10	3	0	4	10	
43	1	2	7	0	9	9	
	2	7	0	8	8	9	
	3	8	0	8	7	8	
44	1	1	0	9	9	6	
	2	4	6	0	8	3	
	3	10	6	0	8	2	
45	1	1	0	7	3	8	
	2	2	0	7	3	6	
	3	8	0	5	2	3	
46	1	1	0	6	5	10	
	2	1	1	0	5	7	
	3	9	1	0	3	7	
47	1	1	8	0	9	6	
	2	5	0	8	9	4	
	3	8	0	7	9	4	
48	1	3	4	0	9	8	
	2	6	0	8	5	4	
	3	7	3	0	4	3	
49	1	1	0	10	8	9	
	2	2	0	9	6	8	
	3	5	6	0	5	8	
50	1	3	0	5	9	9	
	2	5	0	5	7	5	
	3	5	1	0	7	5	
51	1	6	0	9	9	8	
	2	6	4	0	8	6	
	3	7	1	0	8	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	38	41	277	295

************************************************************************
