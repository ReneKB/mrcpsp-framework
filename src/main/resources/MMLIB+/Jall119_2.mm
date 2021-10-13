jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 7 8 10 11 
2	6	9		20 19 18 17 16 15 12 9 5 
3	6	6		17 16 14 13 12 6 
4	6	8		31 30 24 23 21 20 18 12 
5	6	11		38 35 31 30 29 27 26 24 23 22 21 
6	6	6		31 23 22 21 20 18 
7	6	5		51 35 25 24 12 
8	6	9		51 35 33 29 28 27 26 22 21 
9	6	7		35 33 30 29 27 22 21 
10	6	5		31 30 27 25 20 
11	6	4		29 23 22 18 
12	6	7		49 38 33 29 28 27 22 
13	6	5		35 34 30 25 23 
14	6	7		51 50 38 35 32 29 24 
15	6	6		51 50 38 29 25 22 
16	6	5		50 38 25 24 23 
17	6	5		50 49 36 33 22 
18	6	4		51 46 27 25 
19	6	8		51 50 49 48 44 36 32 31 
20	6	7		49 48 38 36 35 32 29 
21	6	4		47 46 44 25 
22	6	7		48 47 46 44 39 34 32 
23	6	7		48 47 46 45 39 33 32 
24	6	7		49 48 47 46 37 36 34 
25	6	6		49 48 45 40 36 32 
26	6	6		49 46 44 40 36 32 
27	6	9		50 48 47 45 44 42 40 39 37 
28	6	8		48 47 46 44 42 41 40 36 
29	6	6		46 44 43 41 39 34 
30	6	7		51 50 47 44 40 39 37 
31	6	7		47 46 45 42 41 40 39 
32	6	3		43 42 37 
33	6	3		44 40 37 
34	6	3		45 42 40 
35	6	3		43 40 39 
36	6	2		43 39 
37	6	1		41 
38	6	1		39 
39	6	1		52 
40	6	1		52 
41	6	1		52 
42	6	1		52 
43	6	1		52 
44	6	1		52 
45	6	1		52 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	1	19	8	7	14	
	2	3	19	8	7	12	
	3	5	17	6	6	9	
	4	10	17	5	6	5	
	5	13	15	4	4	3	
	6	18	14	4	4	3	
3	1	1	11	11	16	5	
	2	2	10	11	12	4	
	3	15	10	9	11	4	
	4	16	10	8	9	3	
	5	17	10	7	5	3	
	6	18	10	6	3	3	
4	1	3	18	12	5	17	
	2	5	12	11	4	15	
	3	12	9	9	3	11	
	4	13	8	5	2	10	
	5	16	4	3	1	5	
	6	19	1	3	1	2	
5	1	1	20	12	8	18	
	2	3	18	11	6	14	
	3	4	17	11	6	12	
	4	7	16	11	4	11	
	5	14	16	11	2	9	
	6	19	15	11	1	7	
6	1	3	11	14	13	17	
	2	4	9	13	11	16	
	3	8	8	13	11	15	
	4	12	5	12	9	13	
	5	13	3	12	8	12	
	6	14	2	12	8	12	
7	1	11	10	15	5	19	
	2	14	9	15	5	17	
	3	15	6	15	5	12	
	4	16	5	15	5	10	
	5	17	3	15	5	7	
	6	20	1	15	5	4	
8	1	3	20	16	16	7	
	2	4	19	13	16	7	
	3	10	19	13	14	7	
	4	15	19	12	12	7	
	5	16	19	10	7	6	
	6	19	19	9	5	6	
9	1	4	17	17	15	16	
	2	10	17	16	13	16	
	3	11	17	14	13	16	
	4	16	17	14	12	16	
	5	17	17	12	11	16	
	6	20	17	11	10	16	
10	1	2	16	15	5	16	
	2	6	15	14	5	13	
	3	9	15	13	4	10	
	4	15	14	12	4	8	
	5	18	14	10	3	4	
	6	19	14	10	2	2	
11	1	3	12	10	18	12	
	2	8	9	10	18	9	
	3	11	8	9	18	8	
	4	15	7	9	18	8	
	5	18	7	9	18	6	
	6	20	6	8	18	5	
12	1	1	19	17	14	7	
	2	3	18	16	13	6	
	3	6	18	14	9	6	
	4	7	18	13	9	5	
	5	8	17	13	6	5	
	6	12	17	12	3	4	
13	1	2	12	16	4	13	
	2	7	12	13	3	10	
	3	8	8	13	3	8	
	4	10	6	12	3	6	
	5	15	5	8	2	6	
	6	20	3	8	2	4	
14	1	5	8	12	15	12	
	2	6	8	11	14	10	
	3	9	7	8	14	6	
	4	11	7	8	14	5	
	5	12	6	6	13	4	
	6	20	6	3	13	1	
15	1	7	5	14	9	20	
	2	9	4	14	7	19	
	3	13	4	13	7	19	
	4	15	4	12	6	18	
	5	16	4	11	2	17	
	6	18	4	10	2	17	
16	1	1	19	3	19	15	
	2	2	19	3	19	13	
	3	3	18	3	19	13	
	4	10	18	3	19	12	
	5	11	18	2	19	11	
	6	19	17	2	19	11	
17	1	5	15	19	2	12	
	2	6	14	19	1	10	
	3	9	14	19	1	7	
	4	10	14	18	1	6	
	5	17	13	18	1	6	
	6	20	12	17	1	3	
18	1	3	11	15	7	13	
	2	5	9	15	7	10	
	3	7	8	14	6	9	
	4	15	8	12	4	9	
	5	17	6	11	4	7	
	6	20	6	11	3	6	
19	1	2	19	10	12	19	
	2	6	18	8	11	17	
	3	8	18	6	10	13	
	4	13	17	5	9	11	
	5	15	16	3	8	10	
	6	20	16	3	8	9	
20	1	2	4	20	16	16	
	2	8	4	20	15	12	
	3	9	4	20	13	11	
	4	10	3	20	12	10	
	5	11	3	20	8	7	
	6	20	2	20	6	6	
21	1	5	15	14	5	12	
	2	8	15	10	5	9	
	3	10	14	10	5	9	
	4	12	14	7	5	7	
	5	13	13	6	4	4	
	6	16	13	4	4	3	
22	1	2	17	19	16	12	
	2	6	14	17	16	11	
	3	8	13	14	16	10	
	4	13	10	13	16	10	
	5	17	9	10	16	8	
	6	19	8	10	16	8	
23	1	3	6	18	11	19	
	2	5	6	16	10	16	
	3	10	4	15	10	16	
	4	16	3	14	10	13	
	5	17	2	14	10	10	
	6	20	2	13	10	9	
24	1	1	12	9	13	18	
	2	2	11	8	12	18	
	3	14	7	8	10	17	
	4	15	5	8	7	17	
	5	18	5	8	5	17	
	6	19	2	8	4	16	
25	1	2	15	16	18	12	
	2	7	14	16	18	11	
	3	9	14	16	16	9	
	4	13	11	16	13	9	
	5	16	11	16	11	7	
	6	17	9	16	9	6	
26	1	6	17	7	15	8	
	2	9	15	7	15	8	
	3	12	15	7	15	7	
	4	13	14	7	15	8	
	5	17	11	7	15	8	
	6	19	10	7	15	8	
27	1	1	14	15	12	13	
	2	5	13	14	11	13	
	3	6	12	14	11	13	
	4	10	10	14	11	13	
	5	11	7	12	11	13	
	6	15	6	12	11	13	
28	1	6	11	5	19	5	
	2	12	11	4	19	4	
	3	15	7	4	18	4	
	4	16	6	4	16	4	
	5	18	4	4	15	3	
	6	19	2	4	15	3	
29	1	2	15	4	12	13	
	2	5	14	4	9	12	
	3	9	13	3	9	12	
	4	11	10	3	8	11	
	5	12	8	2	7	11	
	6	13	8	2	6	11	
30	1	1	2	19	14	19	
	2	2	2	17	13	19	
	3	3	2	15	10	18	
	4	4	2	12	9	16	
	5	5	2	10	4	16	
	6	11	2	6	3	15	
31	1	3	4	14	10	7	
	2	4	3	12	9	7	
	3	8	3	11	9	7	
	4	16	3	11	9	6	
	5	18	1	9	8	7	
	6	19	1	8	8	7	
32	1	1	8	17	7	18	
	2	2	8	15	7	15	
	3	4	8	12	7	12	
	4	11	8	10	6	11	
	5	15	8	7	6	10	
	6	20	8	1	6	6	
33	1	1	10	17	11	12	
	2	6	8	16	11	9	
	3	12	8	15	11	7	
	4	16	6	15	10	7	
	5	17	6	14	10	4	
	6	18	4	14	10	1	
34	1	1	4	7	6	6	
	2	7	3	6	6	6	
	3	8	3	5	4	5	
	4	10	3	5	3	4	
	5	11	2	4	3	3	
	6	16	2	4	2	2	
35	1	1	12	12	19	17	
	2	3	10	9	17	17	
	3	4	9	8	16	15	
	4	14	7	7	14	14	
	5	17	4	6	12	13	
	6	20	3	5	11	12	
36	1	2	18	8	4	18	
	2	5	17	7	3	16	
	3	6	16	7	3	14	
	4	15	14	7	3	10	
	5	16	12	6	3	9	
	6	17	12	6	3	6	
37	1	1	8	5	18	9	
	2	4	6	5	18	8	
	3	5	5	5	16	8	
	4	12	4	5	15	8	
	5	17	3	5	13	8	
	6	19	3	5	12	8	
38	1	5	15	2	13	5	
	2	12	14	2	13	5	
	3	13	14	2	13	4	
	4	14	14	2	12	3	
	5	17	13	1	12	2	
	6	20	13	1	12	1	
39	1	8	16	14	10	19	
	2	15	14	13	9	14	
	3	16	14	13	7	14	
	4	17	13	13	5	10	
	5	19	13	13	3	8	
	6	20	12	13	3	4	
40	1	2	18	20	5	19	
	2	5	16	16	4	19	
	3	7	15	14	4	18	
	4	9	12	13	3	17	
	5	19	12	10	2	16	
	6	20	9	9	2	16	
41	1	3	18	14	6	13	
	2	4	16	14	5	11	
	3	5	14	14	4	11	
	4	11	11	14	2	10	
	5	12	8	14	2	6	
	6	18	6	14	1	5	
42	1	1	9	8	16	14	
	2	2	7	7	15	14	
	3	4	7	5	15	13	
	4	7	6	4	12	12	
	5	15	4	3	10	10	
	6	20	2	2	9	10	
43	1	1	13	14	17	18	
	2	9	12	12	17	17	
	3	13	12	11	15	16	
	4	15	11	10	12	16	
	5	16	11	10	9	15	
	6	19	10	9	8	15	
44	1	2	19	17	9	11	
	2	3	19	16	8	11	
	3	12	18	13	8	11	
	4	15	18	13	8	10	
	5	16	17	12	8	11	
	6	20	17	10	8	11	
45	1	6	20	9	14	10	
	2	8	15	6	13	10	
	3	10	14	6	12	10	
	4	13	10	4	11	10	
	5	14	9	4	9	10	
	6	20	6	2	9	10	
46	1	5	6	17	14	8	
	2	6	6	17	14	6	
	3	13	4	15	12	5	
	4	15	4	14	11	5	
	5	17	3	14	9	3	
	6	20	1	13	7	2	
47	1	8	12	18	13	8	
	2	14	11	16	12	8	
	3	15	9	16	10	6	
	4	17	6	15	5	6	
	5	18	4	15	3	5	
	6	20	2	14	2	3	
48	1	1	16	10	17	12	
	2	8	14	10	14	12	
	3	13	13	8	13	11	
	4	14	9	7	9	11	
	5	15	7	5	6	11	
	6	16	7	2	3	10	
49	1	1	15	17	14	7	
	2	2	15	15	14	6	
	3	10	9	13	14	5	
	4	12	8	13	13	4	
	5	14	3	11	13	3	
	6	15	2	11	12	3	
50	1	9	18	12	17	19	
	2	10	18	12	15	18	
	3	11	18	12	15	17	
	4	11	18	12	14	18	
	5	12	18	12	12	17	
	6	16	18	12	11	17	
51	1	5	18	12	11	13	
	2	12	17	11	10	12	
	3	15	17	10	10	9	
	4	16	15	8	9	8	
	5	18	15	6	9	3	
	6	19	14	5	9	1	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	56	54	473	513

************************************************************************
