jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	12		2 3 4 5 6 7 9 10 12 13 15 18 
2	3	7		29 26 23 21 19 17 8 
3	3	5		34 32 23 19 11 
4	3	5		28 24 23 20 14 
5	3	4		23 17 16 14 
6	3	5		26 25 23 19 17 
7	3	4		31 20 19 16 
8	3	5		38 34 31 25 16 
9	3	3		38 26 16 
10	3	9		51 38 37 34 32 28 27 25 23 
11	3	7		36 31 28 27 25 24 21 
12	3	8		43 38 36 33 30 27 26 24 
13	3	8		34 33 32 31 30 28 27 24 
14	3	6		38 36 32 31 29 21 
15	3	5		51 34 27 25 22 
16	3	9		43 40 36 33 32 30 28 27 24 
17	3	7		51 43 33 32 31 28 27 
18	3	7		51 36 35 34 33 30 28 
19	3	7		43 42 40 38 37 28 27 
20	3	5		50 36 34 30 27 
21	3	6		51 50 43 35 33 30 
22	3	5		50 49 36 33 32 
23	3	5		48 43 41 36 31 
24	3	7		51 50 45 42 41 39 37 
25	3	5		50 48 40 39 30 
26	3	5		50 48 41 39 31 
27	3	3		48 41 35 
28	3	5		50 49 46 45 39 
29	3	2		40 39 
30	3	4		47 45 42 41 
31	3	3		49 44 40 
32	3	3		42 41 39 
33	3	2		45 37 
34	3	2		43 40 
35	3	4		49 47 46 45 
36	3	2		42 39 
37	3	3		48 46 44 
38	3	1		39 
39	3	2		47 44 
40	3	2		46 45 
41	3	1		44 
42	3	1		44 
43	3	1		44 
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
2	1	1	0	6	4	0	
	2	1	4	0	4	0	
	3	2	0	3	3	0	
3	1	2	3	0	5	0	
	2	3	3	0	4	0	
	3	10	1	0	3	0	
4	1	2	0	5	0	5	
	2	8	0	5	0	4	
	3	9	0	5	2	0	
5	1	1	7	0	0	4	
	2	1	0	1	0	3	
	3	4	0	1	5	0	
6	1	3	6	0	0	4	
	2	8	0	4	5	0	
	3	8	6	0	5	0	
7	1	8	4	0	9	0	
	2	9	0	3	9	0	
	3	9	2	0	0	3	
8	1	1	0	8	8	0	
	2	3	0	7	5	0	
	3	3	0	7	0	4	
9	1	2	0	6	9	0	
	2	7	0	4	9	0	
	3	8	0	2	8	0	
10	1	7	4	0	0	5	
	2	8	0	5	4	0	
	3	8	2	0	1	0	
11	1	2	3	0	7	0	
	2	5	1	0	0	4	
	3	10	1	0	6	0	
12	1	1	6	0	6	0	
	2	5	0	4	4	0	
	3	5	5	0	0	2	
13	1	2	0	4	0	7	
	2	7	6	0	6	0	
	3	8	4	0	5	0	
14	1	1	3	0	0	7	
	2	1	0	3	5	0	
	3	9	0	2	0	6	
15	1	3	8	0	1	0	
	2	3	0	6	2	0	
	3	7	0	6	1	0	
16	1	4	9	0	8	0	
	2	6	0	4	0	1	
	3	8	5	0	7	0	
17	1	2	9	0	4	0	
	2	7	8	0	0	9	
	3	9	6	0	0	9	
18	1	2	4	0	0	5	
	2	7	0	4	4	0	
	3	9	0	1	0	4	
19	1	2	4	0	8	0	
	2	7	0	6	0	7	
	3	9	0	3	0	6	
20	1	1	0	9	6	0	
	2	5	6	0	0	2	
	3	5	6	0	6	0	
21	1	2	8	0	0	6	
	2	5	0	6	0	5	
	3	9	5	0	5	0	
22	1	5	0	9	7	0	
	2	6	6	0	5	0	
	3	7	0	8	0	3	
23	1	4	6	0	10	0	
	2	6	0	3	9	0	
	3	9	4	0	9	0	
24	1	2	0	4	0	9	
	2	7	0	4	0	5	
	3	9	0	4	2	0	
25	1	2	0	3	0	8	
	2	7	0	3	7	0	
	3	8	0	2	7	0	
26	1	2	8	0	5	0	
	2	3	0	8	0	7	
	3	8	0	7	1	0	
27	1	3	0	2	8	0	
	2	4	7	0	0	6	
	3	6	4	0	7	0	
28	1	4	4	0	4	0	
	2	4	0	3	0	8	
	3	10	3	0	3	0	
29	1	4	8	0	8	0	
	2	5	8	0	6	0	
	3	9	0	2	0	2	
30	1	2	0	1	6	0	
	2	5	10	0	0	6	
	3	7	0	1	5	0	
31	1	1	0	3	9	0	
	2	4	0	3	0	5	
	3	10	0	3	0	4	
32	1	4	0	9	8	0	
	2	10	3	0	4	0	
	3	10	0	3	3	0	
33	1	2	0	10	4	0	
	2	3	8	0	0	3	
	3	4	0	3	2	0	
34	1	2	0	8	6	0	
	2	6	8	0	0	3	
	3	9	0	8	0	3	
35	1	2	0	6	7	0	
	2	3	0	5	4	0	
	3	7	0	5	3	0	
36	1	1	0	1	9	0	
	2	4	5	0	0	2	
	3	9	4	0	0	2	
37	1	2	7	0	0	5	
	2	6	0	5	0	3	
	3	7	3	0	0	2	
38	1	3	5	0	0	5	
	2	4	0	4	6	0	
	3	8	0	4	3	0	
39	1	7	0	9	6	0	
	2	7	8	0	4	0	
	3	8	7	0	3	0	
40	1	3	9	0	0	6	
	2	3	0	9	0	5	
	3	4	0	8	0	3	
41	1	8	0	9	0	7	
	2	9	3	0	0	7	
	3	10	2	0	0	4	
42	1	5	0	3	0	9	
	2	6	0	3	0	5	
	3	10	0	2	1	0	
43	1	1	0	7	0	7	
	2	5	2	0	2	0	
	3	8	1	0	0	3	
44	1	3	0	2	4	0	
	2	8	4	0	0	2	
	3	10	3	0	3	0	
45	1	7	8	0	0	4	
	2	7	0	5	4	0	
	3	8	0	3	2	0	
46	1	2	8	0	0	6	
	2	5	0	5	0	4	
	3	10	6	0	0	4	
47	1	4	0	6	5	0	
	2	5	0	5	3	0	
	3	6	0	5	2	0	
48	1	2	6	0	6	0	
	2	3	5	0	0	6	
	3	10	4	0	4	0	
49	1	2	5	0	0	7	
	2	3	0	4	0	4	
	3	4	0	4	0	2	
50	1	7	10	0	0	9	
	2	8	0	8	0	9	
	3	8	8	0	1	0	
51	1	1	9	0	7	0	
	2	2	0	5	0	4	
	3	8	4	0	0	3	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	43	39	198	164

************************************************************************
