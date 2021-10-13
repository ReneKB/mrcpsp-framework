jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	2	20	28	21	20	15	12	15	13	
	2	20	17	24	16	11	13	12	14	11	
	3	26	14	23	4	4	11	12	12	9	
3	1	4	25	27	8	18	22	25	16	16	
	2	8	18	25	7	13	20	23	12	9	
	3	28	8	23	1	9	19	19	6	5	
4	1	5	4	17	14	7	22	16	29	21	
	2	12	4	13	9	5	11	15	16	15	
	3	24	2	6	5	5	2	15	13	9	
5	1	1	24	23	25	15	23	24	17	17	
	2	14	21	17	24	15	18	18	14	16	
	3	29	20	5	23	11	16	11	13	15	
6	1	5	26	15	21	10	22	13	16	11	
	2	18	21	15	13	8	21	7	14	8	
	3	26	15	9	10	5	19	4	13	6	
7	1	3	18	8	21	13	22	13	24	25	
	2	10	17	7	18	12	19	11	20	23	
	3	25	17	4	16	11	17	6	11	20	
8	1	5	29	20	23	24	16	22	25	25	
	2	7	17	18	14	23	12	19	24	20	
	3	14	7	13	12	22	12	15	24	18	
9	1	7	21	13	25	13	22	14	21	16	
	2	11	17	8	18	12	16	7	16	11	
	3	25	16	4	12	9	9	2	9	4	
10	1	6	7	8	27	16	24	21	27	24	
	2	23	4	8	25	16	21	19	25	20	
	3	24	3	6	24	16	10	19	24	18	
11	1	7	11	26	24	11	23	22	19	4	
	2	12	10	16	16	8	15	20	19	4	
	3	24	8	10	9	8	14	18	18	3	
12	1	17	15	5	19	28	10	24	14	24	
	2	18	10	5	13	21	10	18	11	13	
	3	24	6	5	6	17	8	16	6	3	
13	1	21	21	27	19	23	27	16	16	13	
	2	26	21	20	13	23	24	10	13	11	
	3	29	20	16	12	23	24	2	10	6	
14	1	12	23	23	24	23	21	21	20	9	
	2	18	18	20	17	17	16	18	10	6	
	3	25	11	18	16	5	14	13	4	4	
15	1	14	20	27	27	24	23	3	15	27	
	2	18	17	16	27	20	19	3	15	23	
	3	24	13	15	26	14	11	3	15	21	
16	1	2	5	24	5	13	26	10	7	28	
	2	25	4	16	5	10	20	9	6	21	
	3	26	1	1	5	6	11	7	5	16	
17	1	8	13	29	23	13	14	10	19	26	
	2	21	6	26	16	12	11	7	16	25	
	3	30	2	24	7	8	10	5	9	22	
18	1	1	25	8	26	23	28	19	14	13	
	2	3	23	7	24	20	28	19	12	9	
	3	21	22	2	22	14	26	18	11	6	
19	1	16	26	21	28	6	29	12	19	8	
	2	25	11	21	26	5	16	8	18	5	
	3	28	2	16	26	5	9	5	16	3	
20	1	23	10	8	27	20	26	21	23	29	
	2	26	10	4	26	10	20	18	15	24	
	3	29	10	2	26	6	17	16	11	21	
21	1	5	18	21	12	20	22	25	10	22	
	2	9	13	21	9	16	19	19	10	19	
	3	19	11	21	4	13	16	15	7	18	
22	1	12	19	29	13	16	20	25	15	8	
	2	13	9	19	10	12	17	14	14	8	
	3	26	5	18	8	9	13	10	9	8	
23	1	9	14	23	26	25	14	23	22	16	
	2	14	5	19	18	18	13	22	22	13	
	3	21	4	19	17	10	12	21	15	10	
24	1	1	18	9	9	26	13	24	26	26	
	2	12	17	8	9	19	12	12	21	18	
	3	18	14	6	9	7	9	9	15	16	
25	1	21	12	17	12	27	24	14	28	19	
	2	22	9	14	11	21	13	14	25	17	
	3	23	5	11	9	19	1	14	24	11	
26	1	3	19	22	29	26	8	14	13	21	
	2	6	18	18	29	18	8	13	12	15	
	3	26	17	13	29	9	6	12	11	10	
27	1	6	19	12	27	23	27	18	19	28	
	2	22	13	9	21	16	22	15	15	25	
	3	29	12	8	12	12	16	15	13	22	
28	1	18	25	7	19	23	28	23	19	11	
	2	19	22	6	18	18	22	22	14	10	
	3	20	18	6	18	15	15	21	11	8	
29	1	4	20	10	17	26	18	19	13	17	
	2	5	18	8	15	24	14	18	7	13	
	3	29	15	4	14	24	10	18	4	9	
30	1	4	27	14	16	17	23	23	28	14	
	2	25	24	10	15	10	21	20	24	14	
	3	29	22	7	8	5	20	10	23	14	
31	1	3	10	18	19	11	23	7	26	24	
	2	6	5	17	13	9	10	4	24	15	
	3	13	5	17	9	7	1	3	22	13	
32	1	6	27	16	24	13	14	24	15	28	
	2	7	18	10	24	11	12	22	8	15	
	3	27	5	10	23	10	9	21	5	11	
33	1	8	18	9	26	22	19	13	22	21	
	2	9	12	8	25	19	19	12	17	18	
	3	26	9	7	24	10	19	3	16	17	
34	1	1	17	16	25	30	20	18	25	18	
	2	9	15	16	21	19	17	14	25	7	
	3	28	12	15	16	14	13	9	25	5	
35	1	19	5	20	8	15	20	26	19	20	
	2	25	4	11	8	10	20	25	15	15	
	3	26	2	6	6	7	18	22	14	11	
36	1	6	23	27	19	12	8	25	24	24	
	2	7	21	26	14	10	7	21	17	24	
	3	24	20	25	10	5	6	17	17	24	
37	1	6	15	25	24	19	29	11	7	20	
	2	20	9	25	16	17	26	11	5	18	
	3	30	5	25	16	6	25	6	5	11	
38	1	23	21	30	11	27	15	18	27	7	
	2	27	19	28	4	26	14	17	26	6	
	3	29	14	28	3	26	12	4	26	5	
39	1	2	27	22	22	21	17	8	20	14	
	2	8	23	14	20	12	14	8	16	13	
	3	17	15	10	19	3	14	6	7	8	
40	1	25	26	25	17	22	21	26	22	27	
	2	26	18	24	14	11	20	25	13	23	
	3	28	14	21	11	5	18	25	7	13	
41	1	13	17	19	21	29	23	25	25	16	
	2	15	17	12	19	28	16	22	25	15	
	3	22	17	1	19	28	10	12	23	8	
42	1	14	14	12	20	8	18	8	23	13	
	2	24	7	11	16	6	18	7	21	13	
	3	27	2	5	8	5	18	7	18	10	
43	1	10	12	17	13	25	11	25	26	11	
	2	11	11	9	11	20	5	15	26	11	
	3	14	11	6	10	8	4	14	25	7	
44	1	19	13	21	22	16	12	21	23	25	
	2	28	11	18	15	12	11	17	22	20	
	3	30	6	11	6	4	6	10	18	8	
45	1	6	17	19	29	15	21	6	22	23	
	2	9	16	19	24	15	21	6	21	15	
	3	30	10	13	24	10	17	6	19	11	
46	1	1	24	29	22	22	5	21	29	27	
	2	10	16	26	22	20	5	18	23	11	
	3	30	6	24	17	16	4	16	21	8	
47	1	7	12	19	12	20	18	19	25	19	
	2	15	9	9	10	19	18	16	21	19	
	3	26	5	5	4	19	18	15	16	19	
48	1	2	12	21	7	24	13	23	16	10	
	2	3	11	15	7	22	12	16	15	10	
	3	17	8	12	7	18	12	9	12	6	
49	1	16	6	30	21	11	26	21	10	20	
	2	19	5	27	12	11	21	21	7	13	
	3	28	5	24	6	11	17	20	4	7	
50	1	1	17	17	17	21	16	4	19	18	
	2	5	16	12	7	17	14	3	16	15	
	3	6	15	11	7	10	14	3	9	11	
51	1	6	3	10	12	22	22	18	16	18	
	2	11	3	10	6	15	13	10	15	18	
	3	16	1	10	4	10	9	8	13	11	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	52	52	55	52	726	663	760	652

************************************************************************
