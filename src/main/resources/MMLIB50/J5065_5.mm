jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 7 9 11 14 15 
2	3	5		23 17 16 12 10 
3	3	6		23 21 19 17 16 10 
4	3	2		20 8 
5	3	7		31 27 25 24 23 20 13 
6	3	9		38 36 33 32 25 24 22 20 16 
7	3	8		51 36 28 27 23 22 21 19 
8	3	7		36 32 28 22 21 18 16 
9	3	6		32 22 21 20 18 16 
10	3	11		51 39 38 36 33 32 31 26 25 24 20 
11	3	9		51 39 33 31 27 26 25 24 20 
12	3	6		51 37 32 28 22 21 
13	3	7		51 37 36 32 29 28 21 
14	3	8		51 39 38 37 35 32 26 20 
15	3	6		51 36 31 30 25 24 
16	3	7		51 39 37 35 29 27 26 
17	3	8		48 46 39 37 33 32 30 28 
18	3	4		50 49 26 25 
19	3	4		50 48 38 24 
20	3	5		48 46 30 29 28 
21	3	5		39 38 35 33 26 
22	3	5		49 47 41 31 30 
23	3	3		35 32 26 
24	3	5		46 43 37 34 29 
25	3	5		48 47 46 37 35 
26	3	6		48 46 45 43 40 34 
27	3	7		49 48 46 43 42 41 40 
28	3	4		50 45 40 34 
29	3	5		49 45 42 41 40 
30	3	5		45 44 43 42 40 
31	3	5		50 48 46 44 40 
32	3	4		43 42 41 40 
33	3	4		44 42 41 40 
34	3	3		47 44 41 
35	3	3		45 43 40 
36	3	3		43 42 40 
37	3	2		42 41 
38	3	2		44 42 
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
2	1	5	4	0	0	7	
	2	7	4	0	4	0	
	3	9	4	0	3	0	
3	1	3	7	0	5	0	
	2	4	0	7	4	0	
	3	8	5	0	3	0	
4	1	8	10	0	0	9	
	2	9	0	3	0	6	
	3	10	0	1	10	0	
5	1	1	9	0	0	8	
	2	2	8	0	6	0	
	3	5	8	0	5	0	
6	1	3	3	0	0	6	
	2	5	0	8	2	0	
	3	6	2	0	0	6	
7	1	2	7	0	9	0	
	2	5	0	6	0	4	
	3	9	5	0	3	0	
8	1	5	0	10	0	9	
	2	6	5	0	0	8	
	3	8	0	9	0	7	
9	1	1	8	0	1	0	
	2	1	0	3	1	0	
	3	7	6	0	0	7	
10	1	7	4	0	0	6	
	2	8	3	0	0	6	
	3	9	0	4	2	0	
11	1	1	0	6	0	8	
	2	1	4	0	7	0	
	3	8	0	3	6	0	
12	1	3	0	5	0	4	
	2	3	3	0	0	3	
	3	10	2	0	5	0	
13	1	2	0	6	0	8	
	2	5	0	4	4	0	
	3	7	9	0	0	6	
14	1	1	5	0	0	9	
	2	3	4	0	0	8	
	3	6	4	0	0	6	
15	1	1	8	0	9	0	
	2	2	7	0	5	0	
	3	6	0	2	0	6	
16	1	6	7	0	0	7	
	2	7	6	0	6	0	
	3	7	0	3	5	0	
17	1	5	6	0	0	4	
	2	7	0	9	1	0	
	3	10	1	0	1	0	
18	1	2	0	4	0	7	
	2	9	0	2	0	4	
	3	10	0	2	0	2	
19	1	5	8	0	0	4	
	2	10	8	0	2	0	
	3	10	0	5	2	0	
20	1	1	0	4	0	5	
	2	7	7	0	1	0	
	3	10	0	4	0	3	
21	1	7	0	9	8	0	
	2	8	8	0	0	6	
	3	9	8	0	0	5	
22	1	1	5	0	0	6	
	2	7	0	5	5	0	
	3	8	0	4	4	0	
23	1	2	5	0	0	7	
	2	3	5	0	0	6	
	3	7	0	5	0	6	
24	1	5	0	5	3	0	
	2	7	3	0	3	0	
	3	9	2	0	3	0	
25	1	4	0	9	6	0	
	2	7	0	9	0	6	
	3	10	0	9	0	5	
26	1	1	4	0	3	0	
	2	5	0	2	3	0	
	3	8	1	0	0	2	
27	1	2	8	0	0	5	
	2	4	6	0	7	0	
	3	5	2	0	6	0	
28	1	2	0	7	7	0	
	2	4	1	0	0	5	
	3	8	1	0	0	4	
29	1	2	0	8	0	1	
	2	6	3	0	0	1	
	3	10	2	0	5	0	
30	1	4	0	9	10	0	
	2	6	2	0	8	0	
	3	10	0	9	8	0	
31	1	1	0	9	6	0	
	2	4	2	0	5	0	
	3	10	1	0	0	5	
32	1	8	9	0	5	0	
	2	8	0	4	5	0	
	3	10	0	4	3	0	
33	1	2	7	0	0	9	
	2	2	0	5	2	0	
	3	3	0	4	2	0	
34	1	4	0	4	7	0	
	2	7	0	3	0	4	
	3	9	7	0	4	0	
35	1	1	0	9	3	0	
	2	5	0	7	0	4	
	3	7	1	0	3	0	
36	1	7	7	0	4	0	
	2	8	7	0	0	4	
	3	10	0	3	0	4	
37	1	2	4	0	0	6	
	2	6	4	0	4	0	
	3	9	2	0	4	0	
38	1	4	9	0	0	9	
	2	6	8	0	0	4	
	3	10	0	7	1	0	
39	1	1	10	0	4	0	
	2	6	9	0	2	0	
	3	8	9	0	1	0	
40	1	1	7	0	6	0	
	2	4	0	5	0	4	
	3	9	0	5	0	2	
41	1	3	0	7	0	4	
	2	5	3	0	4	0	
	3	8	2	0	2	0	
42	1	5	9	0	0	7	
	2	9	5	0	0	6	
	3	10	0	5	2	0	
43	1	3	9	0	2	0	
	2	4	8	0	0	2	
	3	6	7	0	2	0	
44	1	1	7	0	0	4	
	2	8	0	6	0	3	
	3	8	4	0	1	0	
45	1	3	8	0	6	0	
	2	7	6	0	6	0	
	3	9	0	7	5	0	
46	1	4	0	4	7	0	
	2	8	3	0	6	0	
	3	10	0	2	5	0	
47	1	1	10	0	0	5	
	2	5	0	6	6	0	
	3	10	0	6	0	3	
48	1	2	0	9	0	7	
	2	9	3	0	7	0	
	3	9	0	7	0	5	
49	1	2	0	5	0	3	
	2	6	0	5	0	2	
	3	10	0	5	6	0	
50	1	7	0	5	8	0	
	2	7	0	3	0	5	
	3	9	4	0	2	0	
51	1	1	0	10	0	7	
	2	6	5	0	0	7	
	3	10	0	10	0	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	51	52	171	190

************************************************************************
