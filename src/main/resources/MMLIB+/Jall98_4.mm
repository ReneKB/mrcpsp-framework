jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	13		2 3 4 5 7 8 9 10 13 14 15 18 22 
2	3	6		27 23 21 19 12 6 
3	3	5		30 29 27 17 11 
4	3	5		34 29 24 16 12 
5	3	5		30 24 23 20 12 
6	3	4		30 29 28 11 
7	3	4		34 30 27 11 
8	3	4		30 19 17 12 
9	3	7		41 39 34 33 28 24 20 
10	3	6		39 30 29 27 24 20 
11	3	5		41 33 26 24 20 
12	3	8		41 35 33 32 31 28 26 25 
13	3	8		41 34 33 32 31 30 29 26 
14	3	10		50 49 41 38 35 34 32 30 28 26 
15	3	7		50 41 39 38 34 31 24 
16	3	3		32 26 20 
17	3	9		51 49 41 39 38 35 34 33 31 
18	3	4		50 39 25 24 
19	3	7		49 40 39 38 35 33 32 
20	3	6		51 50 37 35 31 25 
21	3	8		50 49 47 41 38 36 34 31 
22	3	8		50 49 47 41 39 38 36 34 
23	3	5		50 41 37 36 25 
24	3	6		51 49 47 40 35 32 
25	3	7		49 48 47 46 44 40 38 
26	3	4		40 39 37 36 
27	3	7		50 49 47 45 44 43 37 
28	3	5		51 47 46 40 36 
29	3	5		49 47 43 38 35 
30	3	4		48 47 40 36 
31	3	5		48 45 44 42 40 
32	3	4		48 44 43 37 
33	3	4		50 47 45 43 
34	3	2		44 37 
35	3	1		36 
36	3	3		45 44 42 
37	3	2		46 42 
38	3	2		45 42 
39	3	2		48 43 
40	3	1		43 
41	3	1		43 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	1	4	3	3	4	10	26	16	11	
	2	8	4	2	3	4	7	11	13	8	
	3	24	2	2	2	3	5	11	4	6	
3	1	4	3	4	5	1	5	7	11	17	
	2	11	3	4	4	1	3	6	9	9	
	3	25	3	4	2	1	3	6	6	4	
4	1	7	5	3	4	1	10	11	18	25	
	2	12	4	3	2	1	6	11	11	20	
	3	24	4	3	1	1	5	11	5	14	
5	1	9	3	3	4	4	21	15	23	23	
	2	28	3	3	4	2	20	12	20	20	
	3	29	2	1	2	2	16	12	19	12	
6	1	8	4	5	5	4	22	5	16	18	
	2	12	4	5	5	3	20	5	12	13	
	3	28	4	5	5	3	13	5	10	5	
7	1	2	2	2	4	2	12	23	10	28	
	2	15	2	2	3	2	7	11	8	21	
	3	21	2	2	3	2	3	6	7	9	
8	1	18	4	4	3	4	21	15	8	22	
	2	20	2	4	3	3	14	11	7	20	
	3	26	2	4	3	3	11	9	7	15	
9	1	2	3	4	3	3	17	1	5	4	
	2	23	2	3	1	2	14	1	5	4	
	3	29	2	3	1	1	13	1	5	2	
10	1	13	3	5	1	3	13	20	20	22	
	2	19	2	3	1	3	8	20	20	21	
	3	28	2	1	1	3	3	20	10	20	
11	1	27	2	2	5	3	14	2	25	18	
	2	28	2	1	4	3	10	2	25	9	
	3	29	2	1	3	2	7	2	17	4	
12	1	1	3	1	4	2	22	22	24	23	
	2	4	1	1	3	2	14	22	16	17	
	3	27	1	1	1	2	11	13	6	14	
13	1	2	3	3	4	1	16	26	20	18	
	2	9	3	2	4	1	7	22	18	10	
	3	14	3	2	3	1	7	16	17	7	
14	1	9	3	1	1	2	22	14	14	3	
	2	23	1	1	1	2	19	11	11	2	
	3	25	1	1	1	2	19	4	6	2	
15	1	3	2	5	1	3	23	30	12	24	
	2	11	2	3	1	3	14	23	11	18	
	3	18	2	3	1	1	9	10	10	15	
16	1	3	2	5	3	4	6	30	25	19	
	2	14	1	5	2	3	5	29	25	16	
	3	15	1	5	2	3	3	28	25	12	
17	1	4	3	1	5	4	21	23	24	6	
	2	18	3	1	3	4	19	15	19	3	
	3	29	3	1	3	4	16	9	18	3	
18	1	1	4	5	1	2	13	15	21	29	
	2	15	4	4	1	2	10	12	8	27	
	3	17	4	4	1	1	9	10	5	24	
19	1	6	1	3	4	5	20	8	18	29	
	2	11	1	3	3	3	20	5	13	27	
	3	19	1	2	3	2	17	5	9	26	
20	1	17	4	1	5	5	24	21	23	17	
	2	18	4	1	4	4	22	10	20	17	
	3	23	4	1	4	3	19	9	20	17	
21	1	15	4	2	3	4	10	8	21	12	
	2	16	4	1	1	4	9	7	19	12	
	3	18	2	1	1	2	8	6	19	6	
22	1	6	4	2	5	2	11	12	24	22	
	2	24	4	1	5	2	9	11	24	14	
	3	27	4	1	5	2	8	11	24	11	
23	1	1	3	4	3	4	18	18	27	19	
	2	11	2	4	3	4	17	13	21	12	
	3	22	2	4	1	4	16	12	19	2	
24	1	15	2	5	4	5	19	25	15	5	
	2	20	1	4	4	5	16	19	12	2	
	3	24	1	4	4	5	10	12	2	1	
25	1	5	3	4	4	5	15	22	24	24	
	2	18	2	4	2	3	8	21	20	23	
	3	21	1	4	1	1	6	20	19	20	
26	1	13	4	1	4	4	27	7	25	22	
	2	16	3	1	2	2	24	4	17	20	
	3	26	3	1	1	1	21	4	7	3	
27	1	12	4	4	3	2	27	25	24	29	
	2	25	4	2	2	2	27	23	23	29	
	3	29	4	1	1	1	23	21	21	28	
28	1	13	4	3	3	2	23	21	21	6	
	2	19	3	3	2	2	20	17	19	6	
	3	29	3	1	2	1	16	17	19	4	
29	1	13	4	3	3	3	20	4	21	24	
	2	19	3	3	1	3	18	4	14	19	
	3	21	3	3	1	3	17	4	8	14	
30	1	20	1	4	5	5	23	28	25	18	
	2	29	1	3	2	4	16	27	15	15	
	3	30	1	3	1	4	11	25	15	13	
31	1	3	3	1	5	4	21	11	26	25	
	2	21	3	1	5	2	15	8	24	14	
	3	23	3	1	5	1	10	8	21	12	
32	1	1	4	5	4	2	26	20	26	19	
	2	9	3	5	2	1	21	16	24	19	
	3	11	3	5	2	1	17	15	22	15	
33	1	6	3	3	5	3	28	26	23	30	
	2	21	3	3	4	2	25	20	17	27	
	3	25	1	2	3	2	24	16	13	26	
34	1	3	3	3	3	4	20	28	10	21	
	2	15	3	3	2	3	15	22	10	18	
	3	29	3	3	2	3	13	11	9	14	
35	1	19	4	3	2	4	23	28	22	25	
	2	28	4	3	2	4	19	26	21	18	
	3	29	2	3	1	4	15	26	10	18	
36	1	13	3	4	2	3	28	26	8	22	
	2	14	3	3	2	2	13	23	8	18	
	3	15	3	3	2	1	8	22	7	16	
37	1	1	5	4	2	2	17	16	28	6	
	2	6	4	4	1	2	13	8	28	4	
	3	7	4	4	1	1	6	7	28	2	
38	1	2	1	3	3	1	25	20	22	16	
	2	5	1	2	3	1	22	17	20	14	
	3	19	1	2	2	1	17	9	15	14	
39	1	3	5	1	1	4	4	24	23	15	
	2	5	3	1	1	4	3	20	20	13	
	3	6	3	1	1	4	3	17	15	9	
40	1	16	5	4	4	1	25	17	12	19	
	2	20	4	4	4	1	20	15	6	19	
	3	29	4	4	2	1	12	14	5	17	
41	1	7	4	4	4	3	12	13	11	23	
	2	16	3	4	3	2	8	13	11	23	
	3	30	1	4	3	2	7	13	11	23	
42	1	9	5	5	4	2	14	18	26	4	
	2	14	2	2	3	1	11	17	25	3	
	3	18	2	1	2	1	8	16	23	1	
43	1	2	5	4	3	1	27	29	11	22	
	2	6	3	3	2	1	24	27	10	18	
	3	15	3	3	1	1	23	25	6	17	
44	1	20	2	2	1	4	23	5	12	3	
	2	24	1	2	1	4	22	4	10	1	
	3	25	1	2	1	4	22	1	2	1	
45	1	1	4	4	4	3	21	26	20	20	
	2	3	4	3	4	2	17	22	16	15	
	3	30	4	2	2	2	8	13	12	12	
46	1	9	3	4	3	2	18	27	7	24	
	2	20	2	4	2	2	12	16	5	18	
	3	23	2	4	2	1	11	8	4	15	
47	1	3	4	3	5	3	21	16	10	22	
	2	9	3	2	3	2	10	16	10	20	
	3	18	1	2	3	2	9	9	10	15	
48	1	13	1	3	4	5	23	14	22	18	
	2	21	1	2	4	3	19	8	19	14	
	3	25	1	2	4	3	16	7	12	2	
49	1	17	4	2	3	1	6	28	18	17	
	2	20	4	2	3	1	5	25	18	16	
	3	28	4	2	2	1	4	25	14	14	
50	1	1	5	2	1	1	15	25	24	19	
	2	13	3	1	1	1	14	25	21	14	
	3	19	3	1	1	1	11	25	20	11	
51	1	14	5	4	2	3	14	22	21	20	
	2	20	4	3	2	2	10	19	14	17	
	3	26	4	2	2	2	7	18	13	9	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	33	34	33	26	746	773	786	751

************************************************************************
