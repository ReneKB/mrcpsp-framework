jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 7 8 9 
2	3	3		13 11 6 
3	3	2		10 5 
4	3	2		13 5 
5	3	5		22 18 14 12 11 
6	3	3		15 12 10 
7	3	3		16 11 10 
8	3	6		22 21 19 18 16 14 
9	3	2		16 11 
10	3	5		22 21 19 18 14 
11	3	4		21 20 19 15 
12	3	4		21 19 17 16 
13	3	4		23 20 19 18 
14	3	4		32 30 23 20 
15	3	2		23 17 
16	3	4		30 26 25 24 
17	3	4		30 27 26 24 
18	3	4		32 28 26 25 
19	3	4		36 32 27 24 
20	3	3		28 26 25 
21	3	3		28 27 26 
22	3	3		34 27 26 
23	3	5		46 37 36 31 29 
24	3	3		46 35 28 
25	3	2		34 27 
26	3	6		46 37 36 35 33 31 
27	3	6		46 40 37 35 33 31 
28	3	3		45 31 29 
29	3	3		40 34 33 
30	3	4		44 41 38 37 
31	3	4		47 44 39 38 
32	3	4		45 44 41 38 
33	3	4		47 44 41 39 
34	3	3		47 44 38 
35	3	3		47 44 38 
36	3	3		47 40 38 
37	3	5		51 50 47 45 43 
38	3	3		51 43 42 
39	3	3		51 50 43 
40	3	3		51 50 43 
41	3	4		51 50 49 48 
42	3	3		50 49 48 
43	3	2		49 48 
44	3	2		49 48 
45	3	2		49 48 
46	3	2		49 48 
47	3	1		48 
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
2	1	5	2	7	4	9	
	2	6	2	6	4	9	
	3	10	1	6	3	9	
3	1	4	7	5	8	5	
	2	8	5	5	8	4	
	3	9	5	3	7	3	
4	1	6	5	7	7	4	
	2	7	3	5	6	2	
	3	9	3	4	5	1	
5	1	1	6	3	9	6	
	2	4	5	3	7	5	
	3	5	4	3	6	4	
6	1	2	8	8	9	4	
	2	6	8	6	5	3	
	3	7	8	4	4	2	
7	1	5	4	5	8	9	
	2	7	3	5	8	9	
	3	10	3	5	8	8	
8	1	4	8	3	10	10	
	2	5	4	3	6	8	
	3	9	4	2	6	6	
9	1	1	7	8	10	8	
	2	7	5	7	10	6	
	3	8	2	6	10	5	
10	1	1	8	10	6	10	
	2	7	7	10	5	4	
	3	10	6	10	4	1	
11	1	2	9	8	2	9	
	2	3	8	8	1	7	
	3	4	8	8	1	3	
12	1	1	6	3	3	9	
	2	7	5	2	2	8	
	3	10	5	2	2	6	
13	1	1	6	8	8	7	
	2	3	6	6	6	5	
	3	10	6	6	6	4	
14	1	3	6	4	5	9	
	2	6	5	3	4	6	
	3	7	4	2	4	4	
15	1	2	4	6	8	4	
	2	4	4	5	7	4	
	3	10	4	4	5	4	
16	1	3	4	8	4	4	
	2	9	4	7	3	4	
	3	10	4	6	3	4	
17	1	3	4	9	2	4	
	2	4	4	9	2	3	
	3	8	3	9	1	2	
18	1	1	9	5	4	8	
	2	4	9	3	3	8	
	3	5	9	1	1	8	
19	1	3	6	8	8	6	
	2	4	4	8	8	3	
	3	9	4	8	8	2	
20	1	1	2	3	4	8	
	2	2	1	1	4	6	
	3	9	1	1	4	5	
21	1	1	10	6	7	6	
	2	7	8	5	4	4	
	3	10	6	3	2	4	
22	1	3	6	6	8	5	
	2	6	3	4	6	4	
	3	9	3	4	6	3	
23	1	1	7	5	7	4	
	2	4	7	5	6	3	
	3	9	7	1	6	2	
24	1	5	6	4	6	2	
	2	6	5	2	4	1	
	3	7	2	1	1	1	
25	1	3	8	2	8	5	
	2	5	7	2	8	2	
	3	7	6	2	7	1	
26	1	4	8	2	6	6	
	2	5	6	1	6	6	
	3	7	6	1	5	6	
27	1	2	4	7	8	8	
	2	9	4	7	8	7	
	3	10	2	6	8	6	
28	1	2	7	9	6	3	
	2	4	5	6	5	2	
	3	5	4	4	1	1	
29	1	3	6	7	7	9	
	2	4	5	6	7	9	
	3	5	4	6	7	9	
30	1	2	7	7	2	8	
	2	4	5	6	1	7	
	3	5	2	6	1	6	
31	1	7	5	8	8	9	
	2	9	5	8	8	8	
	3	10	4	8	8	7	
32	1	3	9	10	3	2	
	2	5	8	6	2	2	
	3	7	8	3	2	2	
33	1	6	3	9	9	4	
	2	7	3	7	9	3	
	3	8	2	5	9	3	
34	1	3	5	4	8	5	
	2	6	4	3	7	5	
	3	9	4	3	7	4	
35	1	1	5	6	3	6	
	2	4	5	5	3	6	
	3	7	5	4	2	3	
36	1	1	8	10	7	9	
	2	5	5	4	4	9	
	3	10	1	3	3	9	
37	1	4	9	8	10	9	
	2	5	7	5	4	8	
	3	8	5	3	2	8	
38	1	3	6	7	6	3	
	2	9	6	6	6	3	
	3	10	4	6	6	3	
39	1	1	10	8	5	8	
	2	3	8	7	5	6	
	3	4	6	3	3	6	
40	1	1	9	2	9	7	
	2	2	7	1	7	3	
	3	4	5	1	6	1	
41	1	1	6	6	8	10	
	2	5	5	6	7	8	
	3	8	2	5	6	6	
42	1	4	9	3	5	9	
	2	6	9	2	4	8	
	3	10	9	1	3	6	
43	1	4	2	8	5	4	
	2	5	2	7	5	3	
	3	7	2	7	4	2	
44	1	2	9	8	6	5	
	2	9	8	5	6	4	
	3	10	8	4	3	3	
45	1	4	10	4	3	7	
	2	5	8	3	3	7	
	3	6	6	2	3	6	
46	1	3	10	8	4	3	
	2	8	8	4	2	2	
	3	9	8	2	2	1	
47	1	1	7	6	8	10	
	2	6	7	6	5	7	
	3	10	7	2	3	7	
48	1	3	8	6	5	7	
	2	8	5	3	4	5	
	3	10	3	2	4	3	
49	1	8	3	8	7	6	
	2	9	2	4	6	6	
	3	10	1	2	5	6	
50	1	4	7	6	2	7	
	2	5	7	4	2	6	
	3	6	6	1	2	5	
51	1	2	7	6	6	7	
	2	3	5	4	5	5	
	3	7	3	2	4	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	17	17	288	298

************************************************************************
