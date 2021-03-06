jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 4 5 6 7 8 12 
2	3	2		9 3 
3	3	4		15 13 11 10 
4	3	4		15 13 11 10 
5	3	3		15 13 10 
6	3	5		20 18 16 15 13 
7	3	4		19 18 16 13 
8	3	7		24 22 20 19 18 17 16 
9	3	2		20 11 
10	3	6		24 22 20 19 18 16 
11	3	3		22 18 14 
12	3	3		22 20 14 
13	3	2		22 14 
14	3	5		26 24 23 21 17 
15	3	3		27 22 19 
16	3	4		28 27 25 21 
17	3	5		31 29 28 27 25 
18	3	3		27 26 21 
19	3	5		33 31 29 26 25 
20	3	2		23 21 
21	3	5		43 33 31 30 29 
22	3	4		34 33 32 26 
23	3	3		43 30 29 
24	3	5		43 40 35 33 30 
25	3	6		43 41 37 36 35 34 
26	3	5		43 41 40 35 30 
27	3	4		43 41 34 30 
28	3	4		40 33 32 30 
29	3	4		36 35 34 32 
30	3	4		45 39 37 36 
31	3	4		41 39 38 36 
32	3	4		51 45 41 38 
33	3	4		51 45 41 38 
34	3	3		40 39 38 
35	3	3		51 45 38 
36	3	4		51 48 44 42 
37	3	1		38 
38	3	3		50 48 42 
39	3	5		51 49 48 47 46 
40	3	4		50 48 47 46 
41	3	3		48 46 44 
42	3	3		49 47 46 
43	3	3		49 47 46 
44	3	1		47 
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
2	1	2	10	0	4	3	
	2	6	0	5	4	2	
	3	9	0	1	4	1	
3	1	5	5	0	9	3	
	2	8	3	0	7	3	
	3	10	0	3	5	2	
4	1	3	0	6	3	5	
	2	4	0	6	3	4	
	3	6	0	5	3	3	
5	1	1	0	6	1	4	
	2	4	0	3	1	3	
	3	9	0	1	1	2	
6	1	8	0	4	7	9	
	2	9	5	0	6	5	
	3	9	0	2	3	5	
7	1	3	0	5	3	9	
	2	6	0	4	3	6	
	3	9	0	3	3	2	
8	1	3	0	4	8	9	
	2	6	8	0	7	8	
	3	6	0	3	6	6	
9	1	4	10	0	8	2	
	2	5	6	0	4	2	
	3	6	3	0	3	2	
10	1	1	8	0	4	8	
	2	2	7	0	4	6	
	3	6	0	4	4	6	
11	1	1	0	9	3	9	
	2	3	0	5	2	9	
	3	7	4	0	2	9	
12	1	3	0	8	9	5	
	2	4	0	6	8	5	
	3	6	6	0	6	1	
13	1	1	0	8	8	8	
	2	2	7	0	5	5	
	3	3	6	0	3	4	
14	1	1	5	0	3	7	
	2	2	3	0	1	5	
	3	9	2	0	1	5	
15	1	4	5	0	9	5	
	2	5	4	0	9	3	
	3	7	0	9	9	2	
16	1	1	4	0	4	3	
	2	5	3	0	3	3	
	3	6	0	1	2	3	
17	1	3	0	6	10	9	
	2	6	4	0	4	5	
	3	7	3	0	3	3	
18	1	1	10	0	9	6	
	2	6	0	9	8	6	
	3	9	0	9	8	5	
19	1	1	0	4	9	5	
	2	1	1	0	7	5	
	3	5	1	0	5	4	
20	1	3	9	0	7	7	
	2	3	0	2	6	6	
	3	4	0	2	3	2	
21	1	5	0	10	8	5	
	2	7	6	0	8	5	
	3	9	4	0	7	5	
22	1	3	0	8	7	3	
	2	3	3	0	5	3	
	3	10	3	0	4	3	
23	1	1	0	6	7	7	
	2	2	0	5	5	7	
	3	10	0	5	4	6	
24	1	1	0	1	3	7	
	2	2	6	0	2	6	
	3	7	0	1	2	6	
25	1	2	0	5	3	10	
	2	7	3	0	2	6	
	3	7	0	4	1	4	
26	1	2	9	0	7	6	
	2	7	4	0	7	6	
	3	8	0	7	4	4	
27	1	2	0	6	7	4	
	2	7	5	0	3	3	
	3	10	0	3	1	3	
28	1	2	0	8	3	8	
	2	10	5	0	2	5	
	3	10	0	4	2	1	
29	1	3	0	8	4	7	
	2	4	0	6	4	6	
	3	9	1	0	4	6	
30	1	7	4	0	9	8	
	2	9	3	0	7	6	
	3	9	0	8	5	6	
31	1	1	7	0	3	6	
	2	3	5	0	2	3	
	3	10	0	7	2	2	
32	1	6	0	8	6	9	
	2	7	8	0	5	8	
	3	10	8	0	3	8	
33	1	1	0	8	8	6	
	2	2	0	8	7	5	
	3	2	1	0	3	5	
34	1	4	0	5	7	8	
	2	5	0	3	5	5	
	3	6	2	0	2	4	
35	1	6	6	0	8	9	
	2	8	0	2	8	8	
	3	10	3	0	6	7	
36	1	5	9	0	2	7	
	2	5	0	5	2	6	
	3	7	0	5	2	4	
37	1	1	9	0	7	8	
	2	2	8	0	6	8	
	3	5	8	0	6	6	
38	1	1	9	0	5	7	
	2	5	0	3	5	7	
	3	10	9	0	5	6	
39	1	1	2	0	5	9	
	2	4	0	8	5	7	
	3	7	0	8	2	4	
40	1	6	10	0	10	9	
	2	7	0	8	7	9	
	3	9	0	7	5	9	
41	1	1	7	0	4	8	
	2	3	6	0	3	7	
	3	5	0	7	3	6	
42	1	3	3	0	7	8	
	2	3	0	2	6	8	
	3	9	0	2	4	8	
43	1	1	0	9	9	6	
	2	6	5	0	8	5	
	3	10	5	0	6	5	
44	1	4	0	6	10	3	
	2	8	0	5	6	3	
	3	9	7	0	5	3	
45	1	4	6	0	6	7	
	2	6	0	2	6	7	
	3	6	6	0	5	4	
46	1	1	8	0	9	6	
	2	7	0	8	7	6	
	3	8	7	0	3	4	
47	1	1	0	10	6	8	
	2	7	4	0	5	8	
	3	9	0	10	5	5	
48	1	4	7	0	7	4	
	2	5	7	0	5	4	
	3	10	7	0	5	2	
49	1	5	4	0	6	3	
	2	10	4	0	3	3	
	3	10	0	6	1	3	
50	1	1	0	8	6	9	
	2	2	7	0	4	7	
	3	3	7	0	3	7	
51	1	1	8	0	5	5	
	2	4	0	4	3	2	
	3	4	1	0	2	2	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	18	17	217	243

************************************************************************
