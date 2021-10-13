jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 3 4 6 11 
2	9	4		13 9 8 7 
3	9	4		19 13 12 5 
4	9	3		19 12 5 
5	9	1		7 
6	9	1		7 
7	9	5		18 17 16 15 14 
8	9	2		16 10 
9	9	5		21 19 18 16 15 
10	9	4		21 18 17 15 
11	9	4		23 21 18 16 
12	9	4		27 21 17 16 
13	9	2		18 16 
14	9	4		28 23 21 20 
15	9	4		27 24 23 22 
16	9	3		28 22 20 
17	9	2		33 20 
18	9	4		30 27 26 24 
19	9	5		33 31 27 26 25 
20	9	3		30 26 24 
21	9	3		31 25 22 
22	9	6		41 40 38 33 29 26 
23	9	3		31 30 25 
24	9	2		31 25 
25	9	5		41 40 38 32 29 
26	9	3		37 34 32 
27	9	3		37 35 32 
28	9	3		39 34 33 
29	9	5		43 39 37 36 35 
30	9	2		37 32 
31	9	4		43 39 36 35 
32	9	4		48 43 39 36 
33	9	3		48 43 36 
34	9	2		44 35 
35	9	5		51 48 47 46 42 
36	9	4		51 47 44 42 
37	9	5		51 50 47 46 45 
38	9	4		51 50 46 45 
39	9	3		51 45 44 
40	9	3		47 45 44 
41	9	3		47 46 45 
42	9	2		50 45 
43	9	2		50 46 
44	9	2		50 49 
45	9	1		49 
46	9	1		49 
47	9	1		49 
48	9	1		49 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	7	4	2	23	26	13	16	
	2	9	4	1	22	25	12	13	
	3	14	3	1	22	25	10	12	
	4	15	3	1	22	25	10	11	
	5	16	3	1	21	23	9	9	
	6	18	2	1	20	23	7	9	
	7	19	2	1	20	23	6	7	
	8	20	1	1	19	22	5	6	
	9	28	1	1	18	21	5	4	
3	1	1	4	3	15	23	17	25	
	2	2	4	3	15	21	14	23	
	3	4	4	3	15	18	13	21	
	4	12	4	3	15	15	13	20	
	5	14	4	3	15	15	12	16	
	6	18	4	3	15	11	9	14	
	7	20	4	3	15	9	9	11	
	8	25	4	3	15	7	8	9	
	9	26	4	3	15	6	7	7	
4	1	3	4	5	18	12	10	18	
	2	7	3	4	16	11	10	15	
	3	12	3	4	16	11	10	14	
	4	13	2	3	15	11	10	11	
	5	17	2	2	15	11	9	11	
	6	18	2	2	14	11	9	8	
	7	19	1	2	14	11	9	6	
	8	22	1	1	13	11	8	4	
	9	28	1	1	12	11	8	2	
5	1	3	4	4	5	28	20	19	
	2	6	4	4	5	27	19	18	
	3	7	4	4	5	25	19	18	
	4	13	3	4	5	24	19	18	
	5	17	3	4	5	24	18	18	
	6	18	3	4	5	23	18	17	
	7	19	3	4	5	22	17	17	
	8	21	2	4	5	21	17	17	
	9	30	2	4	5	21	17	16	
6	1	12	5	2	23	22	4	3	
	2	15	4	2	20	20	4	2	
	3	16	4	2	18	19	4	2	
	4	17	4	2	17	18	4	2	
	5	18	4	2	15	16	3	2	
	6	19	3	2	11	15	3	1	
	7	20	3	2	8	15	3	1	
	8	25	3	2	7	13	2	1	
	9	30	3	2	4	13	2	1	
7	1	5	3	2	25	9	23	20	
	2	8	3	2	22	8	23	19	
	3	10	3	2	21	8	21	18	
	4	12	3	2	20	7	20	18	
	5	14	2	2	19	6	19	17	
	6	24	2	2	16	6	19	17	
	7	25	2	2	16	6	17	17	
	8	27	2	2	14	5	16	16	
	9	29	2	2	12	5	16	16	
8	1	3	5	4	25	20	26	15	
	2	7	4	4	24	20	22	14	
	3	11	4	4	23	19	19	12	
	4	14	4	3	21	17	18	11	
	5	16	3	3	20	17	14	11	
	6	19	3	3	18	17	12	9	
	7	20	3	2	16	15	9	8	
	8	22	3	2	13	14	6	6	
	9	23	3	2	13	14	2	5	
9	1	3	5	1	26	21	24	30	
	2	6	4	1	26	18	23	27	
	3	9	3	1	26	18	23	22	
	4	10	3	1	26	15	21	22	
	5	11	2	1	26	13	20	17	
	6	12	2	1	26	11	19	16	
	7	13	1	1	26	10	18	13	
	8	21	1	1	26	8	17	9	
	9	25	1	1	26	5	16	8	
10	1	5	5	2	25	23	3	11	
	2	9	4	2	21	23	2	11	
	3	15	4	2	19	22	2	11	
	4	16	3	2	17	22	2	11	
	5	17	2	2	12	22	1	11	
	6	18	2	2	9	21	1	11	
	7	20	2	2	9	21	1	10	
	8	26	1	2	4	20	1	11	
	9	30	1	2	3	20	1	11	
11	1	5	3	3	20	29	17	11	
	2	7	3	3	18	29	13	11	
	3	10	3	3	18	29	12	11	
	4	11	3	2	17	28	9	11	
	5	17	2	2	16	28	9	11	
	6	20	2	2	16	28	6	11	
	7	23	2	2	15	27	5	11	
	8	27	2	1	15	27	4	11	
	9	30	2	1	14	27	1	11	
12	1	2	2	4	5	20	21	7	
	2	3	2	4	5	16	21	6	
	3	10	2	3	5	16	20	6	
	4	13	2	3	4	14	20	6	
	5	16	2	3	3	12	18	5	
	6	24	2	2	3	11	18	5	
	7	27	2	2	2	8	18	4	
	8	28	2	1	2	8	16	4	
	9	29	2	1	2	6	16	4	
13	1	1	3	3	2	28	30	24	
	2	4	3	3	2	27	29	24	
	3	10	3	3	2	25	29	24	
	4	15	2	3	2	24	28	24	
	5	21	2	2	2	24	28	23	
	6	23	2	2	2	23	28	23	
	7	26	1	2	2	22	28	22	
	8	27	1	1	2	22	27	22	
	9	28	1	1	2	21	27	22	
14	1	1	4	2	21	4	22	26	
	2	2	4	2	18	4	19	24	
	3	4	4	2	18	4	18	21	
	4	5	4	2	16	4	16	19	
	5	6	3	2	13	4	15	16	
	6	10	3	2	13	3	14	11	
	7	22	3	2	12	3	14	10	
	8	23	3	2	9	3	12	7	
	9	24	3	2	8	3	11	2	
15	1	2	2	3	4	24	9	28	
	2	3	2	3	4	24	9	26	
	3	6	2	3	4	24	8	20	
	4	8	2	3	4	23	6	19	
	5	16	2	2	4	23	5	15	
	6	17	2	2	4	22	5	11	
	7	18	2	2	4	21	3	10	
	8	19	2	2	4	21	3	7	
	9	20	2	2	4	21	1	2	
16	1	6	1	3	17	23	26	28	
	2	10	1	3	17	21	23	27	
	3	11	1	3	17	20	23	27	
	4	15	1	3	17	17	20	26	
	5	19	1	3	16	16	16	23	
	6	20	1	3	16	13	12	23	
	7	24	1	3	15	13	10	21	
	8	28	1	3	15	10	5	19	
	9	29	1	3	15	9	3	19	
17	1	1	1	5	9	28	19	15	
	2	6	1	4	7	26	17	13	
	3	7	1	4	7	24	17	13	
	4	13	1	4	6	22	14	11	
	5	14	1	4	6	21	12	9	
	6	19	1	4	5	19	12	8	
	7	21	1	4	5	18	10	5	
	8	22	1	4	5	16	7	2	
	9	23	1	4	4	13	6	1	
18	1	7	3	4	11	16	27	22	
	2	8	3	3	11	16	25	21	
	3	9	3	3	11	15	23	20	
	4	10	3	2	11	14	22	17	
	5	11	3	2	11	13	21	14	
	6	13	3	2	11	11	17	12	
	7	14	3	2	11	10	16	9	
	8	15	3	1	11	9	13	7	
	9	24	3	1	11	9	12	6	
19	1	1	2	4	10	22	12	23	
	2	2	2	4	9	21	11	21	
	3	4	2	4	8	20	10	20	
	4	5	2	4	8	19	9	20	
	5	10	2	4	7	19	7	18	
	6	13	2	3	7	19	5	16	
	7	15	2	3	6	18	5	14	
	8	16	2	3	6	17	3	13	
	9	27	2	3	5	17	1	12	
20	1	2	4	4	18	12	10	17	
	2	6	4	4	16	11	10	16	
	3	10	4	4	15	10	10	16	
	4	12	4	4	15	9	10	16	
	5	14	3	4	14	9	10	16	
	6	15	3	4	13	9	10	16	
	7	16	3	4	12	8	10	16	
	8	16	3	4	11	6	10	17	
	9	17	3	4	11	6	10	16	
21	1	4	5	5	29	15	18	16	
	2	5	5	5	27	13	15	15	
	3	6	5	5	27	12	15	14	
	4	7	5	5	26	12	13	12	
	5	8	5	5	25	11	10	10	
	6	13	5	5	23	8	9	9	
	7	15	5	5	22	7	9	9	
	8	27	5	5	22	7	6	7	
	9	30	5	5	21	6	5	6	
22	1	6	5	4	27	26	30	19	
	2	14	4	4	24	26	24	17	
	3	15	4	4	23	26	20	14	
	4	18	4	4	22	26	19	13	
	5	21	4	4	17	26	16	9	
	6	25	4	4	14	26	14	9	
	7	26	4	4	14	26	10	7	
	8	27	4	4	11	26	8	5	
	9	28	4	4	7	26	2	3	
23	1	7	3	3	10	27	29	9	
	2	9	3	3	9	26	24	9	
	3	11	3	3	9	25	24	8	
	4	12	3	3	9	24	18	7	
	5	13	3	3	8	24	18	6	
	6	14	3	3	8	23	12	6	
	7	20	3	3	8	22	12	6	
	8	21	3	3	8	22	8	4	
	9	24	3	3	8	21	6	4	
24	1	1	4	4	24	5	16	24	
	2	2	4	4	24	4	15	23	
	3	6	4	4	23	4	13	21	
	4	12	3	4	23	4	11	18	
	5	14	3	4	21	4	9	16	
	6	19	3	4	21	4	9	14	
	7	25	3	4	21	4	6	9	
	8	28	2	4	20	4	5	8	
	9	30	2	4	19	4	3	5	
25	1	1	4	2	15	4	18	15	
	2	10	3	1	12	4	17	13	
	3	12	3	1	10	4	17	13	
	4	14	3	1	10	4	15	11	
	5	18	2	1	7	4	12	9	
	6	24	2	1	7	4	11	7	
	7	25	1	1	4	4	11	4	
	8	27	1	1	3	4	9	3	
	9	30	1	1	3	4	7	1	
26	1	3	5	5	12	8	26	23	
	2	4	4	4	11	6	26	23	
	3	7	4	4	11	6	22	23	
	4	8	4	4	11	6	21	22	
	5	12	4	4	11	5	16	22	
	6	14	4	4	11	4	16	22	
	7	24	4	4	11	4	14	21	
	8	26	4	4	11	3	9	21	
	9	27	4	4	11	3	7	21	
27	1	9	2	3	23	28	8	28	
	2	12	1	3	19	27	7	27	
	3	16	1	3	18	24	7	21	
	4	18	1	3	15	22	7	19	
	5	22	1	2	14	21	7	16	
	6	26	1	2	12	19	7	15	
	7	28	1	2	10	18	7	10	
	8	29	1	2	8	15	7	10	
	9	30	1	2	7	13	7	5	
28	1	2	4	4	23	27	7	29	
	2	5	4	4	20	24	7	28	
	3	6	3	4	19	22	6	28	
	4	8	3	4	17	20	6	28	
	5	11	2	4	13	19	6	28	
	6	15	2	3	13	19	5	28	
	7	16	1	3	9	16	4	28	
	8	21	1	3	8	16	4	28	
	9	29	1	3	5	13	4	28	
29	1	1	3	5	15	7	28	9	
	2	2	3	4	15	6	28	9	
	3	3	3	4	14	6	26	9	
	4	4	3	4	13	6	25	8	
	5	5	2	3	12	6	25	7	
	6	6	2	3	10	6	24	7	
	7	7	1	3	10	6	22	6	
	8	9	1	3	8	6	21	6	
	9	10	1	3	7	6	21	6	
30	1	8	5	5	21	28	28	15	
	2	9	4	4	21	27	28	12	
	3	10	4	4	20	27	28	11	
	4	18	3	3	19	27	28	10	
	5	21	3	2	19	26	28	9	
	6	23	3	2	19	26	28	8	
	7	24	2	1	18	26	28	6	
	8	26	2	1	17	25	28	4	
	9	27	2	1	17	25	28	3	
31	1	7	2	4	18	26	21	26	
	2	8	2	4	17	25	18	26	
	3	10	2	4	15	25	15	25	
	4	11	2	3	15	25	13	23	
	5	13	2	3	14	24	12	21	
	6	14	2	2	13	24	9	21	
	7	16	2	1	11	24	8	20	
	8	19	2	1	11	23	7	18	
	9	21	2	1	10	23	5	17	
32	1	6	4	4	14	16	14	20	
	2	13	3	3	12	15	14	20	
	3	14	3	3	12	13	13	18	
	4	18	2	3	10	12	13	17	
	5	22	2	2	8	11	13	17	
	6	26	2	2	6	10	12	15	
	7	27	2	2	4	8	11	15	
	8	28	1	2	4	6	11	13	
	9	29	1	2	2	6	11	13	
33	1	3	4	4	16	26	17	29	
	2	4	3	3	16	24	17	28	
	3	6	3	3	14	24	17	25	
	4	7	3	3	12	24	17	24	
	5	9	3	2	11	23	17	22	
	6	13	3	2	11	23	17	21	
	7	18	3	1	10	22	17	19	
	8	19	3	1	7	21	17	19	
	9	22	3	1	7	21	17	17	
34	1	1	5	3	22	14	7	28	
	2	2	4	2	20	13	6	23	
	3	13	4	2	20	13	6	22	
	4	16	3	2	19	13	6	19	
	5	17	2	2	18	13	6	16	
	6	24	2	1	16	12	5	15	
	7	25	2	1	16	12	5	12	
	8	29	1	1	15	12	5	11	
	9	30	1	1	13	12	5	6	
35	1	10	4	4	21	28	16	29	
	2	14	4	3	20	27	15	29	
	3	15	4	3	19	27	15	29	
	4	20	3	3	18	26	15	29	
	5	23	3	3	18	26	14	28	
	6	24	2	3	16	26	14	28	
	7	25	1	3	16	26	13	28	
	8	28	1	3	15	25	13	28	
	9	29	1	3	14	25	13	28	
36	1	4	3	1	7	21	13	21	
	2	6	3	1	6	19	12	17	
	3	7	3	1	6	17	11	17	
	4	11	3	1	6	17	11	16	
	5	12	3	1	5	14	10	13	
	6	19	2	1	5	13	9	13	
	7	20	2	1	4	11	8	10	
	8	22	2	1	4	10	8	10	
	9	25	2	1	4	8	7	7	
37	1	4	3	3	18	19	4	17	
	2	15	3	3	18	18	3	17	
	3	16	3	3	18	17	3	15	
	4	19	3	3	17	15	3	13	
	5	22	3	3	16	12	2	13	
	6	23	3	2	16	12	2	11	
	7	24	3	2	16	8	2	9	
	8	25	3	2	15	6	1	8	
	9	30	3	2	15	5	1	7	
38	1	2	5	1	29	21	12	29	
	2	9	4	1	28	20	11	28	
	3	12	4	1	28	18	10	28	
	4	18	4	1	27	15	9	28	
	5	20	4	1	26	14	9	27	
	6	21	3	1	26	10	9	26	
	7	24	3	1	24	8	8	26	
	8	27	3	1	23	6	7	26	
	9	29	3	1	23	2	7	25	
39	1	8	2	5	24	17	13	27	
	2	9	1	4	24	16	12	27	
	3	10	1	4	21	16	11	27	
	4	14	1	4	21	14	11	27	
	5	15	1	4	18	14	10	27	
	6	16	1	4	17	14	10	27	
	7	19	1	4	15	12	9	27	
	8	20	1	4	13	12	8	27	
	9	29	1	4	12	11	7	27	
40	1	3	2	4	29	12	23	18	
	2	4	2	3	28	12	22	17	
	3	12	2	3	27	10	22	16	
	4	15	2	3	27	8	22	15	
	5	21	2	2	26	8	22	14	
	6	24	2	2	25	6	22	12	
	7	27	2	2	23	4	22	12	
	8	28	2	2	22	3	22	11	
	9	29	2	2	22	3	22	10	
41	1	9	5	3	10	26	26	11	
	2	21	4	3	9	26	24	11	
	3	22	4	3	9	26	24	10	
	4	23	4	3	8	26	24	9	
	5	25	3	3	6	25	23	6	
	6	26	3	3	6	25	22	6	
	7	27	3	3	4	25	21	3	
	8	28	2	3	4	24	20	3	
	9	29	2	3	3	24	20	1	
42	1	2	5	5	24	28	21	22	
	2	3	4	4	23	26	21	21	
	3	13	4	4	23	21	19	20	
	4	16	4	4	23	19	18	19	
	5	17	4	4	23	14	17	18	
	6	24	4	4	23	12	15	18	
	7	25	4	4	23	11	12	17	
	8	27	4	4	23	8	12	16	
	9	28	4	4	23	4	11	15	
43	1	1	5	4	22	19	13	29	
	2	2	4	4	20	18	12	26	
	3	15	4	4	18	17	11	22	
	4	17	3	4	17	17	9	22	
	5	20	3	4	15	16	8	17	
	6	21	3	4	14	15	8	17	
	7	23	3	4	13	15	7	15	
	8	24	2	4	12	13	6	11	
	9	30	2	4	10	13	5	8	
44	1	1	4	1	22	24	27	14	
	2	3	4	1	21	22	25	12	
	3	6	4	1	21	22	25	11	
	4	7	4	1	20	21	23	11	
	5	17	3	1	20	21	23	11	
	6	20	3	1	19	21	22	11	
	7	21	2	1	19	20	20	10	
	8	24	2	1	18	20	19	9	
	9	28	2	1	18	19	18	9	
45	1	8	2	2	9	13	28	28	
	2	12	2	2	8	13	24	28	
	3	13	2	2	7	11	23	28	
	4	14	2	2	7	10	21	28	
	5	17	1	2	6	10	20	28	
	6	20	1	2	5	8	16	27	
	7	25	1	2	5	8	14	27	
	8	26	1	2	4	6	12	27	
	9	28	1	2	4	5	12	27	
46	1	4	4	5	20	9	21	26	
	2	6	4	5	19	8	20	23	
	3	7	4	5	18	8	20	20	
	4	8	3	5	17	6	19	17	
	5	23	2	5	17	6	19	17	
	6	25	2	5	16	5	18	15	
	7	26	1	5	16	4	18	13	
	8	28	1	5	16	2	17	11	
	9	29	1	5	15	1	17	7	
47	1	8	1	2	15	18	23	21	
	2	10	1	2	13	17	23	21	
	3	15	1	2	12	16	20	20	
	4	17	1	2	11	15	19	20	
	5	18	1	2	10	14	17	20	
	6	19	1	2	9	14	15	19	
	7	27	1	2	8	13	12	19	
	8	28	1	2	7	12	9	18	
	9	30	1	2	5	12	7	18	
48	1	7	5	3	9	9	13	25	
	2	17	4	3	8	9	13	25	
	3	22	4	3	8	8	13	21	
	4	23	4	3	6	7	13	19	
	5	24	3	3	5	6	13	19	
	6	25	3	3	5	6	12	14	
	7	26	2	3	4	6	12	13	
	8	27	2	3	2	4	12	10	
	9	28	2	3	1	4	12	9	
49	1	2	5	4	25	11	26	11	
	2	3	4	4	24	10	25	9	
	3	6	4	4	21	9	25	8	
	4	10	4	4	18	7	24	7	
	5	11	4	4	15	7	23	7	
	6	16	4	3	15	7	23	6	
	7	17	4	3	12	5	23	5	
	8	23	4	3	8	4	22	4	
	9	29	4	3	6	4	22	4	
50	1	4	4	3	15	22	30	11	
	2	12	4	3	15	20	27	9	
	3	13	3	3	12	17	26	9	
	4	14	3	3	12	16	24	7	
	5	15	2	3	8	14	22	7	
	6	19	2	3	7	10	20	6	
	7	23	1	3	5	7	18	4	
	8	25	1	3	3	5	15	4	
	9	30	1	3	2	2	14	3	
51	1	1	4	2	27	20	20	23	
	2	5	3	1	27	20	17	18	
	3	6	3	1	24	18	15	15	
	4	10	3	1	23	17	15	14	
	5	14	3	1	21	17	12	13	
	6	23	2	1	18	16	9	9	
	7	24	2	1	17	14	9	8	
	8	29	2	1	13	13	5	4	
	9	30	2	1	12	13	4	3	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	26	26	703	775	709	759

************************************************************************
