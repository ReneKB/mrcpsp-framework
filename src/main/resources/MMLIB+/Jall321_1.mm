jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 7 10 14 
2	9	4		21 12 9 8 
3	9	3		15 11 8 
4	9	8		21 20 19 18 17 16 15 13 
5	9	5		21 20 18 16 12 
6	9	3		21 15 8 
7	9	6		21 20 19 18 17 16 
8	9	5		20 19 18 17 16 
9	9	5		20 18 17 16 15 
10	9	5		21 20 19 18 15 
11	9	5		25 22 21 20 17 
12	9	3		17 15 13 
13	9	5		28 25 24 23 22 
14	9	2		25 17 
15	9	4		28 25 24 22 
16	9	4		28 24 23 22 
17	9	4		28 26 24 23 
18	9	3		25 24 23 
19	9	3		25 24 23 
20	9	4		31 27 26 24 
21	9	4		31 28 26 24 
22	9	4		34 31 27 26 
23	9	3		32 31 27 
24	9	4		34 32 30 29 
25	9	1		26 
26	9	4		43 36 33 32 
27	9	3		43 30 29 
28	9	3		33 30 29 
29	9	4		40 39 36 35 
30	9	6		50 42 40 39 38 37 
31	9	5		50 43 40 39 37 
32	9	3		40 38 35 
33	9	6		50 46 45 42 41 39 
34	9	5		50 43 42 40 37 
35	9	4		50 45 42 37 
36	9	5		51 49 45 42 41 
37	9	3		49 46 41 
38	9	3		49 45 41 
39	9	3		51 49 47 
40	9	2		49 48 
41	9	1		44 
42	9	1		44 
43	9	1		45 
44	9	1		48 
45	9	1		48 
46	9	1		48 
47	9	1		48 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	10	29	19	19	23	30	27	6	19	
	2	14	28	17	17	22	27	25	5	16	
	3	16	24	17	17	21	26	25	5	15	
	4	17	22	14	15	21	25	24	5	15	
	5	18	21	14	15	21	22	23	4	14	
	6	19	19	12	14	20	20	22	4	11	
	7	22	17	11	13	19	20	21	4	10	
	8	28	16	9	11	19	19	20	4	9	
	9	29	15	9	11	19	16	19	4	8	
3	1	3	13	12	11	26	15	21	25	18	
	2	5	13	11	9	21	14	20	25	17	
	3	6	13	11	9	20	14	18	25	16	
	4	12	13	10	8	18	14	17	24	16	
	5	14	13	10	6	15	13	16	24	14	
	6	15	13	10	5	12	13	16	23	14	
	7	18	13	10	4	10	13	15	23	14	
	8	20	13	9	4	4	13	13	22	12	
	9	28	13	9	3	3	13	13	22	12	
4	1	2	22	28	28	25	25	18	25	26	
	2	4	20	26	28	23	25	17	23	26	
	3	6	19	25	28	23	25	16	20	23	
	4	10	18	24	28	20	25	14	17	21	
	5	11	15	21	28	18	25	14	14	18	
	6	17	15	19	28	17	25	12	14	14	
	7	20	14	19	28	16	25	12	11	12	
	8	23	12	17	28	15	25	10	7	10	
	9	29	10	16	28	13	25	9	4	9	
5	1	10	21	10	18	29	21	14	28	28	
	2	11	19	10	16	25	21	13	25	24	
	3	14	19	10	16	24	21	12	21	24	
	4	17	18	9	14	20	21	11	18	22	
	5	19	16	9	11	18	21	10	16	20	
	6	23	15	8	10	14	21	10	15	18	
	7	28	15	7	10	9	21	10	11	18	
	8	29	14	7	7	6	21	8	9	14	
	9	30	13	7	7	3	21	8	6	14	
6	1	1	21	24	25	24	29	22	21	20	
	2	4	20	23	20	24	27	21	19	17	
	3	9	20	22	17	24	23	21	16	16	
	4	14	20	21	17	23	23	21	15	12	
	5	15	20	21	13	23	20	20	15	12	
	6	20	20	21	12	23	17	20	13	9	
	7	21	20	20	10	23	13	20	12	8	
	8	28	20	20	5	22	11	20	9	5	
	9	30	20	19	3	22	10	20	9	5	
7	1	4	19	25	21	10	21	22	25	9	
	2	5	19	24	20	9	18	22	25	8	
	3	6	15	23	20	9	17	20	25	8	
	4	7	14	21	20	8	17	17	25	8	
	5	8	12	20	19	7	15	16	25	8	
	6	10	12	20	19	7	13	14	25	8	
	7	16	9	18	19	6	11	12	25	8	
	8	20	7	18	19	5	11	9	25	8	
	9	26	5	17	19	5	8	7	25	8	
8	1	5	3	21	20	27	14	12	14	19	
	2	7	2	17	17	26	13	11	14	18	
	3	9	2	17	17	22	13	11	14	17	
	4	11	2	15	15	18	11	11	14	15	
	5	13	2	14	14	16	11	11	14	13	
	6	15	2	12	13	15	9	11	14	13	
	7	27	2	10	12	10	8	11	14	11	
	8	29	2	10	12	8	7	11	14	9	
	9	30	2	8	11	6	6	11	14	7	
9	1	12	27	10	27	11	14	24	22	14	
	2	14	25	9	25	10	12	23	20	12	
	3	15	23	9	23	9	11	19	17	11	
	4	16	23	9	18	9	9	19	16	10	
	5	21	21	9	17	8	9	15	15	8	
	6	22	19	8	13	7	7	15	13	8	
	7	24	19	8	11	7	5	13	13	6	
	8	26	17	8	9	7	5	10	10	6	
	9	27	17	8	5	6	3	7	9	5	
10	1	1	5	11	14	29	29	22	30	12	
	2	10	5	10	11	23	26	21	26	11	
	3	14	5	8	11	22	24	20	24	10	
	4	16	4	7	9	20	24	19	21	10	
	5	17	4	6	8	16	21	17	20	8	
	6	18	3	6	8	14	20	16	18	7	
	7	19	2	5	7	11	19	15	15	4	
	8	24	2	3	5	5	16	14	14	3	
	9	26	2	3	4	4	16	13	11	3	
11	1	3	28	9	10	29	22	17	21	6	
	2	12	27	8	10	28	17	17	20	6	
	3	13	27	8	10	27	15	16	20	6	
	4	15	26	8	10	27	14	15	20	6	
	5	18	25	7	10	26	12	14	20	5	
	6	19	25	7	10	25	9	14	20	5	
	7	20	25	6	10	25	8	13	20	5	
	8	28	24	5	10	23	3	12	20	4	
	9	29	24	5	10	23	2	12	20	4	
12	1	1	23	20	23	13	10	7	19	26	
	2	13	20	16	20	12	9	6	19	22	
	3	19	20	14	18	10	8	5	19	21	
	4	24	19	13	18	9	6	5	18	20	
	5	25	17	12	16	9	6	4	18	17	
	6	27	16	10	14	9	5	3	18	14	
	7	28	13	7	10	7	4	3	18	12	
	8	29	12	4	9	7	3	3	17	10	
	9	30	10	2	6	6	3	2	17	9	
13	1	10	28	3	9	12	26	16	26	12	
	2	12	28	3	7	12	23	15	25	12	
	3	15	28	3	7	12	22	14	22	11	
	4	21	28	3	5	12	22	14	20	10	
	5	22	27	3	5	12	20	13	19	10	
	6	25	27	3	5	12	19	13	15	10	
	7	28	27	3	4	12	18	12	12	9	
	8	29	26	3	3	12	16	12	9	9	
	9	30	26	3	2	12	15	12	8	8	
14	1	4	24	26	16	15	30	29	28	20	
	2	12	24	23	16	14	28	29	23	19	
	3	13	24	22	14	14	26	29	20	16	
	4	16	24	21	14	14	25	29	18	15	
	5	19	24	19	13	14	24	29	16	12	
	6	21	24	17	11	13	23	29	11	9	
	7	22	24	17	11	13	22	29	8	5	
	8	24	24	14	9	13	22	29	5	4	
	9	25	24	13	9	13	20	29	3	2	
15	1	7	14	9	22	24	30	28	23	3	
	2	10	14	8	22	24	29	27	23	3	
	3	13	14	7	19	24	29	25	21	3	
	4	14	14	5	19	24	29	25	21	3	
	5	15	14	4	17	24	28	23	20	3	
	6	17	13	4	15	23	28	22	19	3	
	7	24	13	3	13	23	28	20	17	3	
	8	25	13	2	13	23	27	19	17	3	
	9	27	13	1	12	23	27	18	16	3	
16	1	1	26	17	16	30	22	8	24	27	
	2	3	26	17	13	29	21	8	23	26	
	3	6	23	16	12	28	20	7	21	25	
	4	7	21	15	11	27	19	6	20	23	
	5	9	17	14	9	26	17	5	17	22	
	6	12	16	12	8	25	17	5	15	21	
	7	19	11	12	7	24	15	4	13	20	
	8	20	11	11	5	23	14	3	12	18	
	9	22	8	10	3	23	14	2	10	16	
17	1	9	23	28	16	14	17	22	24	26	
	2	10	21	23	16	14	15	21	21	24	
	3	15	20	22	16	12	14	21	20	22	
	4	16	17	20	15	10	13	20	20	20	
	5	17	16	15	14	10	12	20	18	18	
	6	19	16	12	14	9	11	20	17	15	
	7	20	14	10	14	8	10	20	16	15	
	8	21	13	6	13	5	10	19	16	11	
	9	29	11	3	13	5	8	19	14	10	
18	1	2	15	25	21	25	11	23	17	19	
	2	5	14	21	18	24	9	23	16	17	
	3	15	14	20	18	24	9	21	15	16	
	4	17	13	17	16	23	8	19	11	14	
	5	18	13	16	16	23	8	19	10	12	
	6	21	13	15	15	22	7	16	7	12	
	7	23	12	12	14	21	7	15	6	11	
	8	25	11	10	12	21	7	14	5	9	
	9	27	11	10	12	20	6	12	3	8	
19	1	9	20	14	21	3	29	27	4	17	
	2	10	19	14	18	3	28	25	4	16	
	3	11	18	11	16	3	28	22	3	15	
	4	14	17	10	15	3	28	20	3	15	
	5	15	15	9	13	3	27	19	2	13	
	6	20	12	8	11	3	27	16	2	11	
	7	28	11	6	9	3	27	12	2	9	
	8	29	8	3	8	3	27	9	1	8	
	9	30	8	2	6	3	27	7	1	7	
20	1	5	20	15	21	20	19	25	21	6	
	2	9	18	14	20	19	17	23	21	6	
	3	13	16	14	18	18	16	20	20	6	
	4	14	15	11	17	16	14	18	20	6	
	5	20	13	10	16	16	11	14	20	5	
	6	27	9	9	16	14	8	11	19	5	
	7	28	8	7	14	13	8	10	19	5	
	8	29	5	7	13	13	6	7	18	4	
	9	30	1	6	13	12	2	4	18	4	
21	1	9	22	22	22	25	24	21	15	19	
	2	18	20	21	22	22	22	20	14	18	
	3	19	18	20	22	22	20	20	13	17	
	4	21	18	20	22	19	18	19	12	13	
	5	22	16	20	22	15	14	19	9	12	
	6	23	15	19	22	13	12	19	9	11	
	7	24	14	18	22	11	9	19	8	10	
	8	28	14	18	22	9	7	18	5	6	
	9	30	12	18	22	5	7	18	4	5	
22	1	5	19	21	26	27	12	25	22	24	
	2	6	16	19	23	24	12	24	20	24	
	3	9	14	19	23	23	12	23	20	24	
	4	13	14	18	21	22	11	22	19	24	
	5	14	12	17	20	19	10	21	19	24	
	6	15	11	15	18	18	10	19	18	24	
	7	16	8	14	17	17	10	18	18	24	
	8	29	6	13	16	15	9	18	16	24	
	9	30	5	12	13	15	9	17	16	24	
23	1	3	26	9	29	15	17	22	26	1	
	2	7	25	8	25	14	16	19	25	1	
	3	8	23	8	24	13	16	18	25	1	
	4	12	22	6	23	11	14	15	24	1	
	5	15	20	5	22	11	13	14	23	1	
	6	20	20	5	19	11	10	13	23	1	
	7	23	19	4	18	9	8	10	23	1	
	8	24	17	3	17	9	8	7	22	1	
	9	28	16	2	15	8	6	6	22	1	
24	1	2	3	15	24	16	18	20	7	29	
	2	7	3	15	23	16	17	17	7	25	
	3	10	3	15	22	14	17	17	7	23	
	4	11	3	15	22	12	17	16	7	23	
	5	13	3	15	22	10	17	13	7	21	
	6	14	3	15	21	8	16	12	7	17	
	7	15	3	15	21	6	16	10	7	15	
	8	18	3	15	20	3	16	10	7	14	
	9	25	3	15	20	2	16	8	7	12	
25	1	10	19	11	28	26	11	3	10	23	
	2	17	16	10	23	25	10	3	10	23	
	3	18	16	9	22	24	8	3	9	22	
	4	19	14	9	17	21	7	3	8	22	
	5	20	12	7	13	21	7	3	8	21	
	6	22	12	7	11	19	6	3	7	21	
	7	23	9	6	9	17	6	3	7	21	
	8	25	8	4	4	16	5	3	6	20	
	9	27	7	4	2	14	4	3	6	20	
26	1	1	18	26	20	8	11	22	27	13	
	2	3	17	25	20	7	11	19	26	12	
	3	10	16	25	18	7	9	17	24	12	
	4	11	16	25	18	6	9	15	23	12	
	5	17	15	25	17	4	8	12	20	11	
	6	18	15	25	16	4	7	12	20	10	
	7	21	15	25	16	2	5	8	17	10	
	8	29	14	25	14	1	5	6	17	10	
	9	30	14	25	14	1	3	5	16	9	
27	1	7	27	24	29	20	25	26	18	26	
	2	8	27	21	24	18	25	23	18	25	
	3	10	26	20	22	18	20	23	17	24	
	4	12	26	20	20	16	20	19	15	23	
	5	13	26	17	15	15	17	18	14	22	
	6	14	25	17	15	15	12	17	14	22	
	7	22	25	15	9	13	11	15	13	21	
	8	25	24	13	9	12	8	12	11	20	
	9	28	24	12	6	11	6	11	11	20	
28	1	9	18	28	23	10	25	10	22	25	
	2	12	17	27	21	8	24	8	20	23	
	3	13	13	26	20	8	24	7	18	21	
	4	19	12	25	20	8	24	6	16	18	
	5	22	9	24	18	7	24	5	14	16	
	6	23	9	24	17	6	24	4	11	15	
	7	25	6	23	17	6	24	3	8	14	
	8	28	5	21	15	4	24	3	8	11	
	9	29	3	21	15	4	24	2	6	10	
29	1	5	13	29	19	17	11	9	9	9	
	2	7	12	26	17	16	10	8	8	9	
	3	12	10	24	15	15	9	8	8	8	
	4	14	10	21	13	15	9	8	6	7	
	5	17	9	18	13	14	8	8	6	5	
	6	18	8	15	11	14	6	8	4	4	
	7	24	7	14	10	12	5	8	4	3	
	8	26	6	13	8	11	5	8	2	2	
	9	27	6	9	6	11	4	8	2	2	
30	1	1	21	21	26	24	23	26	28	24	
	2	2	18	21	22	20	23	23	26	23	
	3	3	18	21	20	20	22	22	24	22	
	4	4	17	20	19	18	22	21	23	21	
	5	7	15	20	17	14	22	20	21	20	
	6	10	14	19	16	14	21	19	19	19	
	7	16	13	18	13	10	20	16	19	19	
	8	20	13	18	12	10	20	16	17	18	
	9	24	11	18	10	8	20	13	14	17	
31	1	2	17	24	8	19	21	29	12	13	
	2	3	16	21	7	18	21	28	11	11	
	3	7	12	21	7	18	20	28	10	11	
	4	11	10	19	7	18	17	28	10	10	
	5	12	10	16	7	18	16	28	9	9	
	6	18	8	14	7	17	16	28	9	9	
	7	22	5	13	7	17	15	28	7	9	
	8	23	3	11	7	17	13	28	7	8	
	9	24	3	8	7	17	11	28	6	7	
32	1	6	17	16	9	21	24	18	7	11	
	2	7	15	12	8	19	23	17	7	10	
	3	9	15	12	8	19	23	16	7	10	
	4	11	15	10	7	18	23	15	7	9	
	5	17	14	8	7	17	23	15	7	9	
	6	20	13	6	7	15	22	15	6	8	
	7	21	12	6	6	15	22	14	6	7	
	8	24	11	3	6	14	22	13	6	7	
	9	27	11	2	6	13	22	13	6	7	
33	1	12	17	28	22	14	9	18	30	18	
	2	13	16	27	20	13	8	17	29	17	
	3	15	16	26	18	11	8	17	28	17	
	4	19	15	26	16	11	7	17	26	16	
	5	20	14	26	15	10	7	16	26	16	
	6	21	14	25	12	8	7	15	25	16	
	7	22	13	25	12	7	7	15	24	15	
	8	27	13	24	10	7	6	15	23	14	
	9	28	13	24	7	6	6	14	22	14	
34	1	2	26	9	18	29	18	26	29	28	
	2	3	26	8	18	29	18	25	26	26	
	3	4	26	8	18	28	18	24	26	25	
	4	8	26	7	18	27	18	24	23	23	
	5	9	26	6	17	27	18	23	21	23	
	6	12	26	5	17	26	18	23	21	21	
	7	24	26	3	17	26	18	22	19	21	
	8	25	26	2	16	24	18	22	17	20	
	9	29	26	2	16	24	18	22	15	19	
35	1	5	14	14	25	27	29	29	19	18	
	2	6	13	14	24	26	27	25	19	14	
	3	12	13	14	22	26	25	20	18	12	
	4	13	13	14	20	26	24	20	18	11	
	5	17	13	14	18	25	22	16	17	10	
	6	18	13	14	18	25	20	14	16	7	
	7	19	13	14	16	25	18	10	16	7	
	8	21	13	14	14	25	18	8	15	3	
	9	24	13	14	13	25	15	4	14	2	
36	1	2	16	13	16	18	11	14	28	28	
	2	4	14	13	14	17	11	13	23	26	
	3	11	13	11	13	16	11	13	21	24	
	4	20	12	10	12	15	11	13	20	23	
	5	21	11	8	11	15	11	12	18	20	
	6	24	10	8	8	13	11	12	15	19	
	7	28	9	6	8	12	11	11	12	18	
	8	29	8	6	6	12	11	10	11	16	
	9	30	7	5	6	11	11	10	10	15	
37	1	2	19	15	24	13	7	13	27	10	
	2	3	17	13	23	11	5	10	26	10	
	3	7	14	12	22	9	5	9	24	10	
	4	10	14	11	18	8	5	8	24	10	
	5	15	12	10	15	6	4	7	22	10	
	6	23	11	10	13	5	3	6	21	10	
	7	24	10	8	12	5	3	5	20	10	
	8	25	7	7	8	2	2	4	18	10	
	9	26	7	7	7	2	2	2	16	10	
38	1	4	22	20	20	23	19	29	26	21	
	2	5	21	19	18	22	16	29	23	19	
	3	6	18	19	17	21	15	28	22	18	
	4	7	16	17	16	21	14	26	19	16	
	5	8	15	17	12	19	13	26	19	16	
	6	12	12	15	11	19	10	25	16	14	
	7	16	11	14	9	17	9	24	14	12	
	8	24	7	13	7	16	8	23	13	12	
	9	26	7	12	6	16	6	23	11	10	
39	1	8	14	8	22	17	18	27	26	24	
	2	9	12	6	21	15	17	25	22	23	
	3	15	11	6	21	13	17	23	21	21	
	4	17	11	5	20	10	17	20	18	19	
	5	21	10	5	20	8	17	20	16	18	
	6	27	9	5	19	7	17	17	13	14	
	7	28	7	4	19	6	17	17	9	14	
	8	29	6	3	19	5	17	16	7	12	
	9	30	6	3	18	2	17	13	5	10	
40	1	4	15	28	15	22	8	25	21	13	
	2	6	14	24	15	20	6	25	20	12	
	3	8	14	24	13	19	6	25	20	12	
	4	9	14	23	12	17	5	25	20	12	
	5	15	13	20	12	17	5	25	19	12	
	6	17	13	20	11	15	5	25	18	11	
	7	27	12	18	11	15	4	25	18	11	
	8	28	12	15	10	13	4	25	17	11	
	9	29	12	14	9	13	3	25	16	11	
41	1	2	13	23	16	19	13	19	27	24	
	2	11	12	23	15	16	12	17	27	23	
	3	12	12	22	15	15	11	14	23	19	
	4	14	11	21	15	13	10	13	18	17	
	5	15	11	21	15	13	9	13	18	16	
	6	25	10	21	15	11	8	11	15	14	
	7	26	9	20	15	10	8	10	11	12	
	8	29	9	19	15	8	7	8	9	10	
	9	30	9	19	15	7	6	6	5	7	
42	1	4	21	18	30	26	28	30	20	17	
	2	6	19	15	29	26	27	26	19	17	
	3	10	19	14	28	26	27	24	19	13	
	4	14	16	12	28	26	27	19	18	13	
	5	19	15	9	27	26	26	17	18	9	
	6	23	15	7	27	26	26	14	17	8	
	7	25	13	5	26	26	25	12	17	7	
	8	28	11	3	25	26	25	8	16	3	
	9	29	11	2	25	26	24	8	16	3	
43	1	1	24	17	11	28	2	10	29	17	
	2	4	23	16	10	25	1	9	29	16	
	3	5	23	12	9	22	1	9	28	16	
	4	7	23	12	7	20	1	8	26	16	
	5	11	22	8	6	18	1	8	26	16	
	6	18	22	6	6	16	1	8	26	16	
	7	19	22	5	5	12	1	7	24	16	
	8	26	22	3	4	10	1	7	24	16	
	9	29	22	1	3	8	1	7	23	16	
44	1	5	29	30	29	13	12	12	28	6	
	2	7	29	27	28	12	11	12	23	4	
	3	10	29	22	27	11	10	12	21	4	
	4	18	29	19	25	11	9	12	18	3	
	5	21	29	19	25	10	8	12	14	3	
	6	23	29	16	24	10	7	12	11	3	
	7	25	29	14	22	9	6	12	10	2	
	8	28	29	11	22	8	6	12	6	2	
	9	29	29	8	21	7	5	12	4	1	
45	1	3	23	8	24	17	27	29	17	17	
	2	4	22	7	23	16	27	29	16	16	
	3	10	19	7	23	15	27	29	16	16	
	4	17	15	7	23	13	27	29	15	16	
	5	19	11	7	23	12	26	29	15	15	
	6	22	11	6	23	12	26	29	14	15	
	7	24	9	6	23	11	26	29	13	14	
	8	25	4	6	23	9	26	29	12	14	
	9	28	2	6	23	9	26	29	12	14	
46	1	1	18	20	19	14	19	21	20	10	
	2	2	17	19	18	13	17	20	19	10	
	3	3	17	18	16	13	16	20	19	9	
	4	4	17	16	15	12	13	20	19	7	
	5	7	17	16	15	11	11	19	18	7	
	6	19	17	13	13	11	9	18	18	7	
	7	24	17	12	13	11	9	18	18	6	
	8	25	17	11	12	10	5	16	17	5	
	9	29	17	10	10	10	5	16	17	4	
47	1	1	22	24	26	26	14	29	19	19	
	2	2	19	23	26	24	14	27	18	17	
	3	4	19	22	24	21	13	25	18	16	
	4	7	14	21	22	19	12	21	17	14	
	5	11	12	20	19	17	11	20	17	14	
	6	12	11	19	15	15	9	17	17	13	
	7	13	7	19	15	12	9	17	16	10	
	8	18	7	17	10	8	8	14	15	9	
	9	27	4	17	10	6	6	12	15	9	
48	1	3	30	16	26	21	14	17	9	18	
	2	6	29	14	25	21	14	14	8	17	
	3	7	29	14	25	21	14	13	7	17	
	4	8	29	10	24	21	14	12	6	17	
	5	9	29	9	24	21	14	12	5	16	
	6	10	29	7	24	21	13	10	5	16	
	7	19	29	6	23	21	13	9	4	16	
	8	25	29	4	23	21	13	9	2	16	
	9	27	29	1	22	21	13	7	2	16	
49	1	1	20	27	21	26	20	22	10	28	
	2	2	20	26	21	25	19	20	8	25	
	3	16	18	26	20	25	19	20	7	22	
	4	21	17	26	19	24	19	19	6	20	
	5	22	17	26	19	23	19	19	6	16	
	6	24	17	26	18	22	19	18	4	15	
	7	26	16	26	18	21	19	18	4	12	
	8	28	14	26	16	21	19	16	2	9	
	9	29	14	26	16	20	19	16	1	6	
50	1	1	19	27	17	26	13	28	29	10	
	2	5	18	24	17	26	12	27	25	10	
	3	6	16	22	15	25	12	27	23	9	
	4	8	16	21	13	24	12	27	21	9	
	5	19	15	19	13	22	11	27	20	9	
	6	22	13	15	11	22	11	26	19	8	
	7	26	12	11	10	20	11	26	17	7	
	8	27	11	8	7	20	10	26	14	7	
	9	30	11	7	7	19	10	26	12	7	
51	1	4	16	16	27	23	10	25	25	6	
	2	5	13	15	26	22	9	22	25	6	
	3	10	11	14	25	22	9	21	21	6	
	4	17	9	13	22	21	8	18	20	6	
	5	18	8	13	20	19	6	18	16	5	
	6	19	6	13	19	19	6	16	16	5	
	7	20	5	12	18	18	4	15	13	4	
	8	22	3	12	16	16	3	14	11	4	
	9	24	2	11	15	16	3	12	9	4	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	92	92	91	105	837	933	922	770

************************************************************************
