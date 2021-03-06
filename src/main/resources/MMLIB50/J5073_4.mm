jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 6 7 
2	3	5		16 14 12 11 8 
3	3	5		16 14 12 11 10 
4	3	4		18 16 14 10 
5	3	3		18 16 9 
6	3	3		16 12 10 
7	3	4		21 15 13 11 
8	3	1		10 
9	3	1		10 
10	3	3		21 15 13 
11	3	3		25 20 18 
12	3	1		13 
13	3	3		25 20 19 
14	3	3		25 20 19 
15	3	2		28 17 
16	3	5		28 25 23 22 21 
17	3	3		25 23 20 
18	3	1		19 
19	3	5		35 28 27 24 23 
20	3	3		35 34 22 
21	3	5		35 34 29 26 24 
22	3	4		31 27 26 24 
23	3	3		34 33 26 
24	3	4		36 33 32 30 
25	3	5		40 37 36 33 32 
26	3	4		46 41 36 30 
27	3	3		46 36 29 
28	3	5		46 41 39 37 31 
29	3	5		45 41 40 39 38 
30	3	4		45 40 38 37 
31	3	5		51 45 43 42 38 
32	3	5		51 50 46 44 41 
33	3	4		51 50 45 39 
34	3	4		51 45 43 39 
35	3	4		51 43 42 38 
36	3	3		45 43 38 
37	3	4		50 48 43 42 
38	3	4		50 49 48 44 
39	3	2		44 42 
40	3	3		51 48 47 
41	3	1		42 
42	3	2		49 47 
43	3	1		44 
44	3	1		47 
45	3	1		48 
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
2	1	2	0	2	8	0	
	2	3	6	0	0	2	
	3	6	5	0	0	2	
3	1	6	0	6	10	0	
	2	9	4	0	9	0	
	3	10	0	4	0	4	
4	1	5	0	8	7	0	
	2	9	0	5	4	0	
	3	9	8	0	0	9	
5	1	2	6	0	1	0	
	2	4	0	8	0	5	
	3	9	1	0	0	5	
6	1	4	0	10	0	4	
	2	4	5	0	3	0	
	3	8	0	10	2	0	
7	1	2	8	0	0	9	
	2	3	8	0	3	0	
	3	5	8	0	0	3	
8	1	2	2	0	0	10	
	2	4	2	0	4	0	
	3	5	2	0	2	0	
9	1	5	0	9	4	0	
	2	6	7	0	2	0	
	3	7	4	0	2	0	
10	1	2	0	9	0	2	
	2	5	2	0	0	1	
	3	5	0	5	0	1	
11	1	5	0	6	6	0	
	2	7	0	6	5	0	
	3	8	0	4	5	0	
12	1	3	8	0	0	4	
	2	5	8	0	0	3	
	3	6	5	0	2	0	
13	1	3	9	0	0	4	
	2	4	0	5	3	0	
	3	5	0	4	3	0	
14	1	7	0	4	0	6	
	2	7	0	2	2	0	
	3	8	7	0	1	0	
15	1	2	0	8	0	4	
	2	4	7	0	7	0	
	3	5	7	0	0	2	
16	1	2	10	0	10	0	
	2	5	0	6	5	0	
	3	10	7	0	0	7	
17	1	1	7	0	10	0	
	2	2	7	0	6	0	
	3	4	3	0	2	0	
18	1	5	8	0	9	0	
	2	7	0	8	0	3	
	3	9	0	6	0	1	
19	1	4	0	3	8	0	
	2	5	0	3	7	0	
	3	7	1	0	0	4	
20	1	4	0	2	0	8	
	2	6	0	1	0	6	
	3	9	2	0	0	2	
21	1	4	7	0	6	0	
	2	6	0	7	4	0	
	3	10	5	0	0	3	
22	1	2	0	9	10	0	
	2	8	0	8	0	6	
	3	9	7	0	0	3	
23	1	1	0	2	2	0	
	2	5	5	0	0	6	
	3	6	5	0	0	5	
24	1	6	0	7	6	0	
	2	8	4	0	6	0	
	3	10	0	4	6	0	
25	1	2	6	0	0	4	
	2	2	0	10	2	0	
	3	5	4	0	0	3	
26	1	5	6	0	4	0	
	2	5	4	0	0	7	
	3	6	0	1	0	7	
27	1	3	0	8	4	0	
	2	5	5	0	2	0	
	3	10	0	4	0	6	
28	1	1	0	6	0	2	
	2	4	0	5	0	2	
	3	5	0	4	0	2	
29	1	8	0	8	0	1	
	2	8	0	7	8	0	
	3	10	5	0	0	1	
30	1	5	5	0	10	0	
	2	6	4	0	9	0	
	3	8	4	0	8	0	
31	1	4	6	0	0	10	
	2	7	0	1	0	7	
	3	10	4	0	0	6	
32	1	4	3	0	10	0	
	2	5	2	0	0	5	
	3	9	0	7	1	0	
33	1	5	0	8	0	5	
	2	5	7	0	3	0	
	3	8	6	0	1	0	
34	1	6	1	0	9	0	
	2	6	0	3	0	4	
	3	9	0	2	9	0	
35	1	1	0	4	8	0	
	2	7	4	0	8	0	
	3	10	0	3	5	0	
36	1	1	0	7	0	7	
	2	5	5	0	6	0	
	3	9	5	0	0	3	
37	1	4	9	0	0	8	
	2	6	8	0	0	5	
	3	9	8	0	3	0	
38	1	1	0	10	0	10	
	2	2	0	9	0	9	
	3	5	0	9	0	8	
39	1	3	0	6	5	0	
	2	4	0	5	4	0	
	3	6	6	0	3	0	
40	1	7	7	0	0	9	
	2	8	0	7	3	0	
	3	8	5	0	0	4	
41	1	5	0	10	6	0	
	2	7	9	0	5	0	
	3	8	0	10	3	0	
42	1	3	6	0	0	5	
	2	7	0	8	5	0	
	3	8	0	5	4	0	
43	1	6	0	7	0	4	
	2	6	0	5	8	0	
	3	7	0	3	0	1	
44	1	2	0	4	4	0	
	2	7	7	0	0	1	
	3	10	6	0	0	1	
45	1	1	6	0	0	9	
	2	8	5	0	4	0	
	3	9	4	0	0	8	
46	1	1	9	0	0	6	
	2	1	0	8	0	5	
	3	8	0	7	0	3	
47	1	4	6	0	8	0	
	2	4	0	7	0	3	
	3	9	0	6	0	2	
48	1	3	0	6	0	4	
	2	4	0	2	3	0	
	3	10	4	0	3	0	
49	1	7	0	5	6	0	
	2	8	0	5	5	0	
	3	9	0	2	2	0	
50	1	1	4	0	0	8	
	2	7	0	4	0	7	
	3	10	0	2	0	5	
51	1	4	9	0	0	5	
	2	9	0	8	4	0	
	3	10	2	0	3	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	17	16	86	75

************************************************************************
