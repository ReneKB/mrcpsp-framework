jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	11		2 3 4 5 6 7 8 11 12 13 14 
2	3	8		26 25 23 21 19 18 16 9 
3	3	7		25 24 23 21 19 15 9 
4	3	6		26 25 19 17 16 9 
5	3	7		29 25 24 22 21 15 10 
6	3	6		29 26 25 22 15 10 
7	3	4		25 17 15 9 
8	3	5		30 27 25 24 9 
9	3	7		33 32 31 29 28 22 20 
10	3	7		33 32 31 30 28 27 20 
11	3	4		34 31 30 15 
12	3	10		39 36 35 34 32 31 30 29 28 24 
13	3	6		33 31 30 28 23 20 
14	3	2		31 15 
15	3	7		42 39 36 33 32 28 27 
16	3	5		36 32 28 27 24 
17	3	11		51 42 40 38 37 35 34 33 31 30 29 
18	3	10		51 42 40 39 38 37 36 35 31 29 
19	3	10		50 42 40 39 37 36 35 34 31 30 
20	3	10		50 49 42 41 40 39 37 36 35 34 
21	3	7		51 50 48 39 37 35 30 
22	3	9		50 49 48 47 45 40 37 36 35 
23	3	8		51 49 48 47 46 41 40 35 
24	3	5		48 46 42 38 33 
25	3	5		45 40 39 38 36 
26	3	6		49 48 47 45 36 35 
27	3	5		48 41 40 37 35 
28	3	5		51 47 46 45 38 
29	3	6		50 47 46 45 44 43 
30	3	5		49 47 46 45 44 
31	3	4		48 46 43 41 
32	3	4		48 47 43 40 
33	3	3		50 43 41 
34	3	3		48 45 44 
35	3	2		44 43 
36	3	2		46 43 
37	3	2		46 43 
38	3	2		49 43 
39	3	2		47 44 
40	3	1		44 
41	3	1		45 
42	3	1		44 
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
2	1	2	0	7	0	9	
	2	3	8	0	0	8	
	3	10	6	0	0	8	
3	1	8	6	0	6	0	
	2	9	6	0	0	4	
	3	9	0	3	0	4	
4	1	1	0	7	0	8	
	2	2	7	0	5	0	
	3	6	0	1	3	0	
5	1	6	3	0	0	9	
	2	8	0	8	0	9	
	3	9	3	0	4	0	
6	1	1	8	0	8	0	
	2	3	8	0	0	8	
	3	10	0	5	8	0	
7	1	4	8	0	7	0	
	2	6	7	0	5	0	
	3	10	0	5	0	3	
8	1	1	0	4	8	0	
	2	1	0	3	0	3	
	3	3	0	3	0	2	
9	1	6	6	0	7	0	
	2	8	4	0	7	0	
	3	10	3	0	0	4	
10	1	2	5	0	6	0	
	2	3	0	3	5	0	
	3	4	4	0	3	0	
11	1	1	10	0	0	7	
	2	2	0	3	7	0	
	3	9	4	0	1	0	
12	1	2	6	0	0	6	
	2	4	5	0	3	0	
	3	10	4	0	0	6	
13	1	1	9	0	0	5	
	2	3	8	0	3	0	
	3	9	0	6	1	0	
14	1	2	7	0	0	5	
	2	3	0	6	8	0	
	3	3	0	5	0	2	
15	1	1	6	0	10	0	
	2	2	5	0	10	0	
	3	9	5	0	0	4	
16	1	1	0	8	10	0	
	2	5	6	0	0	7	
	3	6	4	0	0	6	
17	1	1	0	7	10	0	
	2	2	0	4	0	7	
	3	6	3	0	0	7	
18	1	5	0	3	9	0	
	2	5	7	0	0	7	
	3	6	0	1	0	7	
19	1	3	0	7	8	0	
	2	5	6	0	0	5	
	3	6	6	0	6	0	
20	1	3	0	9	6	0	
	2	6	3	0	0	2	
	3	9	2	0	0	2	
21	1	2	0	9	0	3	
	2	3	0	6	0	2	
	3	10	0	4	0	2	
22	1	5	8	0	0	6	
	2	5	0	6	0	5	
	3	6	4	0	0	5	
23	1	2	7	0	0	5	
	2	8	0	6	0	5	
	3	10	0	2	1	0	
24	1	4	9	0	0	9	
	2	9	8	0	0	5	
	3	10	0	4	0	4	
25	1	4	8	0	4	0	
	2	7	0	8	4	0	
	3	8	5	0	4	0	
26	1	3	3	0	9	0	
	2	4	0	9	0	2	
	3	4	3	0	0	1	
27	1	6	0	8	5	0	
	2	6	4	0	3	0	
	3	10	2	0	3	0	
28	1	6	0	9	6	0	
	2	7	0	8	0	9	
	3	10	6	0	5	0	
29	1	8	6	0	3	0	
	2	9	5	0	2	0	
	3	9	0	4	0	4	
30	1	2	7	0	4	0	
	2	3	6	0	4	0	
	3	4	3	0	4	0	
31	1	4	5	0	0	6	
	2	5	0	6	5	0	
	3	8	1	0	5	0	
32	1	4	9	0	0	6	
	2	5	0	8	0	6	
	3	9	8	0	0	5	
33	1	3	2	0	9	0	
	2	6	0	3	0	6	
	3	7	0	3	9	0	
34	1	2	9	0	0	7	
	2	4	7	0	6	0	
	3	6	7	0	0	6	
35	1	5	0	7	0	4	
	2	5	8	0	0	2	
	3	10	0	7	0	2	
36	1	2	0	5	0	3	
	2	3	6	0	0	1	
	3	5	6	0	4	0	
37	1	6	9	0	0	6	
	2	7	5	0	0	5	
	3	9	3	0	0	3	
38	1	6	0	8	0	8	
	2	7	4	0	0	4	
	3	10	0	7	3	0	
39	1	1	6	0	5	0	
	2	4	4	0	0	3	
	3	6	0	4	4	0	
40	1	3	0	10	0	4	
	2	7	0	5	0	4	
	3	7	6	0	3	0	
41	1	3	0	7	7	0	
	2	7	0	5	6	0	
	3	8	6	0	0	9	
42	1	2	2	0	0	5	
	2	6	2	0	0	4	
	3	9	2	0	0	3	
43	1	3	9	0	10	0	
	2	5	9	0	0	5	
	3	6	9	0	0	3	
44	1	1	0	10	3	0	
	2	2	0	10	0	4	
	3	4	2	0	2	0	
45	1	3	10	0	0	10	
	2	7	9	0	0	7	
	3	10	8	0	0	7	
46	1	2	4	0	0	4	
	2	3	3	0	0	2	
	3	4	0	7	0	1	
47	1	1	0	6	9	0	
	2	7	8	0	5	0	
	3	10	8	0	0	5	
48	1	3	0	6	8	0	
	2	7	0	5	0	6	
	3	10	0	4	8	0	
49	1	3	8	0	0	5	
	2	8	0	6	0	4	
	3	9	0	4	0	3	
50	1	4	4	0	0	8	
	2	7	4	0	0	6	
	3	8	4	0	3	0	
51	1	1	0	6	0	8	
	2	4	9	0	7	0	
	3	10	0	4	5	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	25	24	126	153

************************************************************************
