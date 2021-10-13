jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 3 4 5 6 
2	6	4		12 10 8 7 
3	6	4		12 11 10 9 
4	6	4		18 13 12 11 
5	6	2		11 9 
6	6	2		11 8 
7	6	4		18 15 13 11 
8	6	6		20 18 17 15 14 13 
9	6	6		20 18 17 15 14 13 
10	6	4		18 17 15 13 
11	6	5		22 20 17 16 14 
12	6	4		22 20 15 14 
13	6	3		22 21 16 
14	6	4		26 24 21 19 
15	6	1		16 
16	6	5		28 26 25 23 19 
17	6	7		33 31 29 27 26 24 23 
18	6	6		38 33 29 26 24 23 
19	6	7		36 35 33 31 30 29 27 
20	6	5		35 29 27 26 24 
21	6	4		29 28 27 23 
22	6	4		38 33 28 26 
23	6	4		37 36 35 30 
24	6	4		37 36 34 28 
25	6	5		39 38 36 34 32 
26	6	4		44 39 36 34 
27	6	3		38 37 32 
28	6	3		44 39 32 
29	6	5		44 43 40 39 37 
30	6	3		44 42 34 
31	6	2		42 34 
32	6	4		43 42 41 40 
33	6	4		44 43 41 40 
34	6	4		51 45 41 40 
35	6	3		49 43 39 
36	6	3		43 42 40 
37	6	6		51 50 49 48 47 46 
38	6	4		51 50 48 44 
39	6	3		51 45 42 
40	6	4		49 48 47 46 
41	6	4		50 48 47 46 
42	6	3		48 47 46 
43	6	2		47 45 
44	6	1		45 
45	6	1		46 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	1	30	16	7	7	21	23	21	12	
	2	3	25	15	7	6	21	22	17	11	
	3	11	22	13	5	6	20	21	14	11	
	4	15	18	12	5	6	18	21	14	10	
	5	19	15	11	4	6	18	20	9	9	
	6	21	14	9	3	6	17	20	9	9	
3	1	4	25	15	6	23	11	17	14	14	
	2	18	24	13	6	22	10	14	13	13	
	3	19	24	11	6	21	7	13	12	11	
	4	23	24	9	6	20	5	10	12	10	
	5	25	23	8	6	18	3	7	10	8	
	6	29	23	6	6	16	3	6	9	6	
4	1	8	26	24	13	29	27	12	26	27	
	2	12	25	24	13	27	23	10	22	24	
	3	18	24	24	12	27	19	9	20	20	
	4	19	24	24	12	26	11	8	18	18	
	5	28	24	23	11	24	11	7	16	16	
	6	30	23	23	10	23	5	5	13	14	
5	1	1	28	26	20	23	26	27	17	14	
	2	2	23	23	17	20	25	23	14	14	
	3	3	16	22	15	18	21	22	10	13	
	4	14	13	18	12	16	16	20	9	12	
	5	16	8	18	12	15	15	20	7	11	
	6	26	3	16	10	14	11	17	4	11	
6	1	1	30	28	16	20	29	25	12	12	
	2	4	30	27	15	20	28	25	10	11	
	3	14	30	26	13	18	28	25	8	10	
	4	18	30	26	13	17	28	25	7	10	
	5	19	30	25	10	17	27	25	5	10	
	6	29	30	24	9	15	26	25	4	9	
7	1	4	10	24	17	11	27	24	11	27	
	2	18	8	24	16	10	21	23	11	27	
	3	19	8	21	16	10	16	23	11	24	
	4	21	7	17	15	10	15	23	10	22	
	5	22	6	14	15	10	9	23	10	21	
	6	24	6	10	14	10	7	23	10	17	
8	1	7	9	8	25	25	26	21	4	15	
	2	18	7	8	24	24	25	20	3	13	
	3	21	6	8	24	24	25	19	3	13	
	4	26	5	8	23	24	25	18	3	9	
	5	29	4	7	23	23	25	18	3	7	
	6	30	2	7	23	22	25	16	3	3	
9	1	1	29	28	11	25	20	16	13	17	
	2	6	28	25	9	24	19	15	13	16	
	3	7	26	23	7	21	19	15	13	16	
	4	16	25	17	6	21	18	15	13	16	
	5	17	25	16	4	20	17	14	13	16	
	6	27	24	12	4	17	16	14	13	16	
10	1	11	22	30	25	7	19	14	9	14	
	2	13	17	27	17	6	15	14	8	12	
	3	17	13	25	16	5	15	14	8	11	
	4	23	10	23	9	5	10	13	7	10	
	5	24	8	21	5	4	7	13	7	9	
	6	29	4	21	3	4	5	13	6	9	
11	1	7	15	4	9	22	22	15	29	27	
	2	8	12	4	7	21	20	14	24	23	
	3	12	10	4	6	21	19	13	23	22	
	4	13	9	4	5	20	16	12	21	19	
	5	14	5	4	3	20	11	11	16	17	
	6	24	4	4	2	20	9	10	15	13	
12	1	2	21	10	23	8	25	20	29	11	
	2	15	15	8	18	7	24	17	25	11	
	3	18	12	6	17	7	18	12	23	10	
	4	19	11	4	14	6	13	12	23	10	
	5	20	5	3	9	6	12	6	21	10	
	6	22	2	1	5	6	9	5	18	9	
13	1	3	17	22	26	25	23	24	24	15	
	2	4	16	20	21	20	21	23	22	14	
	3	5	16	19	17	16	21	20	18	12	
	4	6	15	18	16	13	20	18	17	10	
	5	7	14	17	12	13	18	16	15	7	
	6	24	13	17	9	10	18	16	11	6	
14	1	4	23	14	26	20	9	25	23	18	
	2	5	23	13	24	17	8	22	23	17	
	3	9	22	12	21	15	6	21	18	16	
	4	11	21	12	21	13	5	20	13	14	
	5	14	21	10	19	5	5	19	9	13	
	6	24	20	10	17	4	4	16	9	12	
15	1	1	22	9	28	29	20	23	15	19	
	2	4	21	8	27	21	20	23	15	18	
	3	6	17	7	24	17	14	19	15	16	
	4	11	14	7	22	16	14	18	14	15	
	5	15	12	5	19	10	11	15	14	15	
	6	22	10	5	17	6	8	14	14	13	
16	1	1	20	24	11	28	30	18	20	29	
	2	2	16	23	9	27	25	16	17	26	
	3	6	11	21	9	26	23	15	15	23	
	4	22	9	20	7	26	21	13	14	17	
	5	23	7	19	3	26	19	13	12	17	
	6	26	5	17	1	25	16	10	11	14	
17	1	3	23	6	8	29	19	27	5	26	
	2	10	22	6	7	23	19	25	3	25	
	3	11	19	6	6	21	19	22	3	25	
	4	15	18	6	6	18	18	20	2	24	
	5	25	14	6	5	12	18	20	2	24	
	6	27	13	6	5	11	17	18	1	23	
18	1	5	4	2	26	24	20	27	30	27	
	2	6	3	2	26	22	20	25	30	26	
	3	20	3	2	26	16	20	21	30	26	
	4	21	2	2	26	13	20	19	30	25	
	5	22	1	2	26	9	20	16	30	25	
	6	28	1	2	26	8	20	14	30	25	
19	1	8	11	6	27	21	20	22	23	23	
	2	9	11	6	25	20	20	21	22	20	
	3	17	11	6	20	17	20	21	22	17	
	4	19	11	5	15	16	20	19	21	13	
	5	27	11	5	14	15	20	18	21	5	
	6	30	11	4	8	12	20	18	20	4	
20	1	9	27	6	14	28	24	20	20	26	
	2	17	26	6	14	24	20	18	17	24	
	3	21	24	6	14	23	14	12	13	21	
	4	22	22	5	13	21	13	12	10	20	
	5	28	21	5	13	17	6	8	7	17	
	6	29	18	4	12	15	3	3	2	17	
21	1	1	26	27	20	15	22	15	3	7	
	2	6	26	26	17	13	20	13	2	7	
	3	11	26	23	15	9	15	12	2	7	
	4	21	26	23	11	7	12	9	2	7	
	5	26	26	21	9	6	7	7	2	7	
	6	29	26	20	6	4	5	5	2	7	
22	1	5	28	27	17	25	15	17	29	21	
	2	6	26	27	13	22	11	16	29	18	
	3	21	26	21	9	18	11	12	29	17	
	4	27	22	19	9	16	8	11	29	14	
	5	28	22	16	5	12	6	8	28	12	
	6	30	18	13	1	11	6	5	28	8	
23	1	2	14	13	20	2	27	30	13	23	
	2	3	10	12	18	2	25	29	11	21	
	3	7	8	9	18	2	25	29	11	18	
	4	14	8	7	16	2	24	29	10	12	
	5	15	5	6	14	2	23	29	8	10	
	6	28	4	4	14	2	21	29	8	6	
24	1	1	22	28	24	9	27	26	3	27	
	2	2	17	23	22	6	27	20	3	27	
	3	6	14	19	22	5	27	18	3	26	
	4	7	10	15	21	5	27	12	3	26	
	5	11	7	14	21	2	27	12	3	26	
	6	18	4	8	20	2	27	8	3	25	
25	1	5	22	12	6	24	23	24	21	27	
	2	10	18	12	6	24	21	21	18	27	
	3	14	15	12	6	23	21	19	16	25	
	4	16	11	12	6	22	19	11	14	22	
	5	18	9	12	6	20	19	5	10	20	
	6	24	3	12	6	20	18	5	7	19	
26	1	6	19	22	27	13	24	22	25	30	
	2	9	19	21	23	10	20	22	19	24	
	3	18	16	19	22	8	15	20	16	15	
	4	20	12	19	19	6	13	16	11	10	
	5	24	9	17	19	4	12	15	7	9	
	6	27	7	16	15	2	8	13	5	3	
27	1	2	25	16	23	23	20	23	26	5	
	2	3	21	16	21	17	16	23	25	4	
	3	8	13	16	16	15	15	17	25	4	
	4	18	10	16	14	13	12	16	23	4	
	5	26	7	16	12	8	11	11	22	3	
	6	29	2	16	8	5	7	10	21	3	
28	1	4	21	25	20	14	5	14	17	30	
	2	6	17	20	15	10	4	14	11	22	
	3	9	17	19	12	9	4	12	11	22	
	4	16	13	15	10	7	4	9	9	15	
	5	20	11	14	6	5	3	7	4	13	
	6	23	10	9	5	3	3	4	3	8	
29	1	8	6	10	20	22	7	25	17	18	
	2	12	5	9	20	20	6	23	16	14	
	3	14	4	9	19	20	6	23	14	13	
	4	20	4	8	17	18	5	21	12	11	
	5	23	2	6	17	13	2	21	8	10	
	6	24	2	6	15	12	1	20	8	8	
30	1	5	20	26	19	17	14	8	23	19	
	2	9	20	23	16	15	13	8	22	19	
	3	11	17	23	14	15	13	8	19	19	
	4	18	15	22	13	13	12	8	18	18	
	5	20	14	21	10	13	11	7	15	17	
	6	25	12	20	4	11	11	7	12	17	
31	1	2	21	24	26	24	3	16	26	7	
	2	4	18	23	24	23	2	16	20	7	
	3	13	16	23	24	23	2	15	17	7	
	4	20	16	21	23	23	2	15	11	7	
	5	22	13	19	21	23	1	13	9	7	
	6	29	9	18	20	23	1	13	6	7	
32	1	13	23	19	15	27	27	27	23	25	
	2	14	22	19	12	23	26	25	22	24	
	3	17	22	15	12	21	25	23	20	23	
	4	18	22	13	9	16	24	23	20	21	
	5	25	20	11	7	8	23	21	18	19	
	6	28	20	9	6	7	22	19	18	18	
33	1	2	12	2	25	20	26	9	28	13	
	2	9	12	2	18	16	23	7	28	13	
	3	10	12	2	14	16	18	7	28	13	
	4	13	12	2	11	13	14	5	28	12	
	5	23	12	2	8	9	11	3	28	12	
	6	24	12	2	6	8	3	2	28	12	
34	1	14	21	10	15	16	18	13	14	29	
	2	15	20	8	14	14	18	11	14	25	
	3	16	16	5	14	11	14	11	14	24	
	4	17	13	4	14	10	9	10	14	23	
	5	18	8	2	14	9	9	9	14	20	
	6	22	7	1	14	8	4	7	14	18	
35	1	3	26	9	14	26	5	19	15	17	
	2	4	21	6	14	25	4	16	13	12	
	3	14	17	6	14	25	3	15	11	10	
	4	15	17	5	14	24	3	11	8	8	
	5	19	10	2	14	23	2	8	3	4	
	6	23	5	1	14	23	2	6	1	4	
36	1	2	20	25	22	16	25	4	16	29	
	2	3	16	22	20	11	25	4	14	27	
	3	5	15	21	15	10	24	4	13	25	
	4	13	12	14	8	6	24	4	12	24	
	5	25	10	8	4	6	23	4	12	22	
	6	29	8	6	4	3	23	4	10	19	
37	1	5	26	4	23	27	28	2	6	28	
	2	8	25	4	21	26	26	2	4	25	
	3	18	18	4	21	26	24	2	3	23	
	4	21	15	3	20	23	19	2	2	18	
	5	25	12	3	19	23	18	2	2	14	
	6	29	7	2	18	21	13	2	1	13	
38	1	1	23	24	25	22	19	23	22	12	
	2	4	21	23	20	19	17	23	21	11	
	3	12	19	19	18	15	16	23	19	10	
	4	13	16	16	13	14	15	23	18	10	
	5	23	14	13	10	13	12	22	17	9	
	6	26	13	12	9	11	10	22	15	9	
39	1	1	5	26	25	20	24	18	11	18	
	2	3	4	23	25	16	23	18	10	17	
	3	5	4	19	19	12	23	14	10	17	
	4	18	4	15	18	9	23	14	10	16	
	5	19	4	12	11	5	23	10	10	15	
	6	26	4	8	9	3	23	10	10	15	
40	1	2	2	27	20	21	24	22	24	30	
	2	8	1	26	19	21	20	21	23	25	
	3	12	1	26	17	19	16	19	18	16	
	4	19	1	26	17	14	13	15	17	14	
	5	23	1	24	15	12	9	15	15	9	
	6	29	1	24	13	12	5	12	9	4	
41	1	1	27	25	23	19	15	20	20	19	
	2	3	25	19	20	18	14	20	16	16	
	3	4	24	15	15	18	14	18	12	13	
	4	17	24	11	13	17	14	17	9	9	
	5	19	22	7	11	17	14	17	4	5	
	6	20	22	6	7	16	14	16	3	5	
42	1	3	24	12	20	23	24	15	2	19	
	2	6	21	11	20	22	19	15	1	15	
	3	12	16	11	20	21	15	15	1	15	
	4	15	10	11	19	19	11	15	1	12	
	5	22	10	9	19	18	6	15	1	7	
	6	23	4	9	18	16	1	15	1	3	
43	1	8	26	25	17	14	11	24	2	22	
	2	11	22	20	15	13	9	21	2	20	
	3	12	20	18	14	11	8	18	2	19	
	4	13	18	15	13	9	7	17	2	19	
	5	15	13	5	13	4	7	13	2	17	
	6	28	11	3	11	4	6	12	2	16	
44	1	9	28	21	14	12	28	27	20	13	
	2	11	26	20	14	12	27	20	18	10	
	3	21	25	15	14	12	23	16	18	9	
	4	22	23	11	14	11	22	12	15	6	
	5	26	22	11	14	10	17	9	13	6	
	6	27	19	6	14	10	15	7	12	4	
45	1	1	12	29	24	29	24	22	25	27	
	2	8	12	28	20	23	23	20	23	26	
	3	17	12	28	20	23	21	20	20	26	
	4	20	12	26	19	19	18	16	18	24	
	5	24	12	26	17	13	17	16	18	24	
	6	25	12	25	15	12	15	13	15	23	
46	1	16	15	23	17	23	23	25	27	23	
	2	20	15	21	15	21	22	23	26	22	
	3	23	13	21	13	20	22	23	25	21	
	4	24	12	17	11	19	21	21	25	20	
	5	25	11	16	9	17	21	21	23	20	
	6	26	10	14	9	17	20	20	23	18	
47	1	13	15	28	28	27	22	27	26	7	
	2	20	13	27	28	27	21	24	24	7	
	3	22	12	26	26	25	18	20	22	5	
	4	27	11	25	25	23	15	19	20	3	
	5	28	10	24	24	21	10	17	16	2	
	6	29	9	24	24	18	6	16	16	2	
48	1	6	21	23	11	21	21	20	23	27	
	2	7	18	22	10	17	18	20	19	25	
	3	15	12	18	10	17	15	19	17	22	
	4	19	10	14	9	13	11	19	16	22	
	5	21	6	10	8	13	11	18	14	18	
	6	24	3	8	7	10	7	18	13	17	
49	1	3	21	25	30	21	23	27	20	21	
	2	4	19	23	25	16	19	25	18	19	
	3	13	17	19	22	14	17	23	16	18	
	4	24	11	16	16	10	11	21	14	17	
	5	25	11	11	13	7	11	20	12	15	
	6	26	8	9	12	5	5	17	11	15	
50	1	12	19	15	23	2	29	21	8	24	
	2	14	18	14	21	1	29	17	6	24	
	3	17	16	13	15	1	29	14	5	20	
	4	23	16	13	11	1	29	10	4	18	
	5	24	15	11	11	1	29	7	3	15	
	6	28	13	11	4	1	29	6	3	13	
51	1	13	21	27	13	16	21	23	17	21	
	2	14	15	26	9	14	21	20	13	19	
	3	16	13	23	7	13	21	18	10	18	
	4	17	12	22	7	13	20	15	10	18	
	5	18	9	18	3	11	19	11	6	15	
	6	23	4	17	3	10	19	4	3	13	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	90	82	102	94	702	709	609	689

************************************************************************
