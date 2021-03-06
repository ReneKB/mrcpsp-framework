jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	11		2 3 4 6 7 9 10 12 13 16 20 
2	3	6		30 27 23 22 8 5 
3	3	8		30 28 27 26 25 19 18 17 
4	3	6		35 30 24 23 22 19 
5	3	4		25 21 15 14 
6	3	6		30 28 26 25 24 19 
7	3	3		33 15 11 
8	3	7		39 35 32 29 28 25 24 
9	3	5		35 29 28 24 22 
10	3	5		39 38 26 24 22 
11	3	4		35 28 26 19 
12	3	4		30 28 25 19 
13	3	7		39 38 31 29 28 27 24 
14	3	8		50 42 39 35 33 32 29 28 
15	3	6		42 39 38 32 29 26 
16	3	6		42 39 32 28 26 25 
17	3	5		41 39 37 31 24 
18	3	5		42 35 32 31 29 
19	3	7		51 50 42 39 38 32 29 
20	3	9		49 42 41 40 38 37 36 33 31 
21	3	7		51 43 42 40 37 31 28 
22	3	5		51 43 34 32 25 
23	3	5		51 50 48 39 28 
24	3	6		50 47 42 40 34 33 
25	3	6		49 41 40 37 36 31 
26	3	4		51 49 41 31 
27	3	5		51 48 42 40 37 
28	3	3		47 41 34 
29	3	3		43 40 34 
30	3	4		50 48 42 36 
31	3	6		50 48 47 46 45 44 
32	3	4		48 46 45 37 
33	3	4		51 45 44 43 
34	3	2		49 36 
35	3	2		41 38 
36	3	3		46 45 44 
37	3	2		47 44 
38	3	2		45 44 
39	3	1		40 
40	3	1		45 
41	3	1		44 
42	3	1		46 
43	3	1		46 
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
2	1	1	5	7	7	0	
	2	2	4	3	0	7	
	3	3	3	1	0	5	
3	1	1	10	6	0	5	
	2	2	7	5	0	3	
	3	8	4	5	4	0	
4	1	2	10	6	0	7	
	2	4	9	3	6	0	
	3	7	9	3	5	0	
5	1	1	4	8	0	8	
	2	4	4	7	3	0	
	3	9	4	6	3	0	
6	1	4	7	9	0	6	
	2	5	5	8	6	0	
	3	9	5	7	4	0	
7	1	6	9	5	0	10	
	2	9	7	4	0	9	
	3	9	3	4	4	0	
8	1	2	2	10	6	0	
	2	6	2	7	0	4	
	3	9	2	6	3	0	
9	1	1	2	7	0	4	
	2	3	1	6	0	4	
	3	7	1	3	0	2	
10	1	1	4	7	9	0	
	2	8	3	7	0	6	
	3	10	2	7	0	5	
11	1	3	3	7	0	3	
	2	3	3	7	4	0	
	3	10	1	7	0	1	
12	1	4	8	6	0	6	
	2	7	6	6	0	6	
	3	9	5	5	0	6	
13	1	6	4	8	0	9	
	2	7	2	5	0	8	
	3	8	1	5	0	6	
14	1	4	8	6	0	4	
	2	7	7	5	5	0	
	3	8	7	4	4	0	
15	1	3	5	6	0	8	
	2	4	4	4	6	0	
	3	4	4	4	0	6	
16	1	5	6	7	0	8	
	2	5	6	5	8	0	
	3	6	6	4	8	0	
17	1	2	9	8	0	3	
	2	8	7	4	3	0	
	3	10	4	4	0	2	
18	1	3	8	1	8	0	
	2	7	7	1	0	2	
	3	10	7	1	0	1	
19	1	2	10	4	4	0	
	2	3	6	3	0	4	
	3	9	5	2	0	3	
20	1	9	3	6	0	2	
	2	10	2	5	0	1	
	3	10	1	2	6	0	
21	1	1	10	8	0	7	
	2	3	7	4	0	6	
	3	9	4	3	0	5	
22	1	1	9	7	5	0	
	2	4	9	5	0	3	
	3	8	9	3	0	3	
23	1	5	9	10	6	0	
	2	6	9	8	5	0	
	3	7	7	8	0	2	
24	1	3	9	7	6	0	
	2	8	9	5	6	0	
	3	9	7	4	2	0	
25	1	2	10	7	7	0	
	2	2	10	5	0	7	
	3	4	10	5	5	0	
26	1	3	8	3	0	4	
	2	5	7	3	0	3	
	3	9	7	3	3	0	
27	1	3	9	9	0	6	
	2	4	7	6	0	5	
	3	7	6	3	0	5	
28	1	1	8	7	0	7	
	2	4	6	4	4	0	
	3	7	4	2	0	4	
29	1	1	7	7	0	2	
	2	1	5	6	2	0	
	3	6	5	4	2	0	
30	1	2	10	1	9	0	
	2	9	10	1	8	0	
	3	10	10	1	7	0	
31	1	3	10	3	0	8	
	2	6	10	2	7	0	
	3	9	10	2	0	6	
32	1	1	6	3	0	7	
	2	6	6	3	3	0	
	3	10	6	3	2	0	
33	1	6	3	10	0	6	
	2	7	3	9	0	6	
	3	10	2	8	4	0	
34	1	2	7	9	0	8	
	2	5	6	8	5	0	
	3	8	6	7	5	0	
35	1	1	6	9	10	0	
	2	4	5	8	9	0	
	3	7	5	8	0	1	
36	1	1	10	8	0	8	
	2	3	9	6	0	6	
	3	8	8	5	0	4	
37	1	2	3	8	9	0	
	2	5	2	4	8	0	
	3	7	2	3	0	4	
38	1	2	10	8	6	0	
	2	2	9	8	0	6	
	3	4	8	8	0	5	
39	1	2	8	10	3	0	
	2	3	7	5	3	0	
	3	6	7	3	0	8	
40	1	4	7	2	4	0	
	2	5	7	1	0	4	
	3	6	6	1	4	0	
41	1	1	9	3	0	5	
	2	5	8	2	5	0	
	3	10	8	2	0	5	
42	1	2	3	8	0	6	
	2	7	3	8	8	0	
	3	9	3	7	6	0	
43	1	1	10	7	7	0	
	2	3	8	6	0	7	
	3	7	6	3	0	5	
44	1	1	6	3	0	8	
	2	1	3	3	10	0	
	3	10	2	2	10	0	
45	1	4	9	3	0	8	
	2	5	9	3	0	7	
	3	7	9	3	0	6	
46	1	5	3	8	10	0	
	2	6	2	5	7	0	
	3	7	1	3	0	3	
47	1	2	2	9	0	9	
	2	4	1	8	6	0	
	3	7	1	8	0	3	
48	1	3	3	6	7	0	
	2	3	3	6	0	2	
	3	10	2	4	0	1	
49	1	1	8	4	5	0	
	2	3	4	4	5	0	
	3	6	4	4	0	7	
50	1	5	4	10	2	0	
	2	5	4	10	0	7	
	3	6	3	10	2	0	
51	1	1	9	5	0	4	
	2	4	8	2	0	4	
	3	9	8	2	0	3	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	71	70	125	154

************************************************************************
