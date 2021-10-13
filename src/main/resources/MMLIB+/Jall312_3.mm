jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 8 9 10 17 
2	9	3		22 7 6 
3	9	9		41 32 29 22 20 19 16 14 13 
4	9	13		41 35 33 32 30 29 27 25 22 20 19 18 16 
5	9	7		41 28 27 26 24 12 11 
6	9	6		35 26 20 16 15 11 
7	9	8		32 31 30 28 27 26 18 12 
8	9	8		41 31 29 23 21 18 14 13 
9	9	10		41 33 32 31 30 29 24 23 22 21 
10	9	4		35 31 23 13 
11	9	6		33 32 31 30 25 18 
12	9	7		50 35 33 29 25 23 21 
13	9	7		50 38 37 33 30 26 25 
14	9	7		51 40 38 37 34 28 27 
15	9	6		50 41 38 31 29 25 
16	9	4		31 28 24 23 
17	9	7		50 49 40 38 36 35 31 
18	9	8		51 50 49 48 47 40 38 36 
19	9	2		40 23 
20	9	8		50 49 48 47 40 39 38 37 
21	9	7		51 49 48 47 38 37 36 
22	9	3		47 40 28 
23	9	6		49 48 47 38 37 36 
24	9	6		50 49 48 47 39 34 
25	9	6		49 48 47 45 40 39 
26	9	4		51 47 36 34 
27	9	6		49 48 47 46 45 39 
28	9	5		50 49 48 45 36 
29	9	4		49 48 39 37 
30	9	4		48 47 46 36 
31	9	3		47 37 34 
32	9	6		49 48 47 45 43 42 
33	9	3		48 47 39 
34	9	4		46 45 43 42 
35	9	4		48 47 46 43 
36	9	1		39 
37	9	3		46 45 43 
38	9	3		46 45 43 
39	9	2		43 42 
40	9	2		46 42 
41	9	2		45 42 
42	9	1		44 
43	9	1		52 
44	9	1		52 
45	9	1		52 
46	9	1		52 
47	9	1		52 
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
2	1	2	2	1	3	4	27	16	20	26	
	2	5	2	1	2	4	25	15	20	24	
	3	9	2	1	2	3	22	15	20	22	
	4	12	2	1	2	3	19	15	20	20	
	5	13	2	1	2	3	17	15	20	20	
	6	16	2	1	1	2	15	15	20	18	
	7	22	2	1	1	2	12	15	20	16	
	8	23	2	1	1	1	10	15	20	15	
	9	24	2	1	1	1	8	15	20	15	
3	1	1	2	3	5	3	17	24	17	25	
	2	6	1	3	4	3	16	23	16	24	
	3	8	1	3	4	3	13	23	15	23	
	4	11	1	2	4	2	13	21	15	22	
	5	12	1	2	4	2	11	19	14	22	
	6	14	1	2	4	2	9	19	14	21	
	7	23	1	1	4	2	8	18	13	20	
	8	26	1	1	4	1	5	17	13	20	
	9	27	1	1	4	1	4	16	13	19	
4	1	5	4	5	4	3	27	29	13	17	
	2	6	4	4	3	3	26	28	13	16	
	3	14	4	4	3	3	26	26	13	15	
	4	15	4	3	3	3	26	25	13	14	
	5	17	4	3	3	2	25	23	12	14	
	6	19	4	3	2	2	25	22	12	13	
	7	20	4	2	2	2	25	22	12	13	
	8	27	4	2	2	1	24	21	12	12	
	9	29	4	2	2	1	24	19	12	12	
5	1	7	2	3	1	4	16	26	18	13	
	2	8	2	3	1	4	15	23	18	11	
	3	9	2	3	1	4	12	23	17	10	
	4	10	2	3	1	4	11	18	15	9	
	5	13	2	2	1	3	10	17	13	8	
	6	16	1	2	1	3	8	14	12	7	
	7	17	1	2	1	3	6	11	12	6	
	8	20	1	1	1	2	5	7	10	6	
	9	23	1	1	1	2	5	5	9	5	
6	1	3	3	4	2	3	17	26	18	8	
	2	5	3	4	1	3	17	24	17	8	
	3	13	3	4	1	3	16	24	17	8	
	4	14	3	4	1	3	13	22	17	8	
	5	17	3	4	1	3	13	22	17	7	
	6	20	3	4	1	3	10	22	17	8	
	7	23	3	4	1	3	9	20	17	8	
	8	26	3	4	1	3	7	20	17	8	
	9	29	3	4	1	3	6	19	17	8	
7	1	1	4	5	3	5	28	15	3	10	
	2	4	4	4	3	5	28	14	3	10	
	3	5	4	4	3	5	28	14	3	9	
	4	9	4	4	3	5	28	14	3	8	
	5	11	3	4	2	5	28	13	3	8	
	6	15	3	4	2	5	28	13	3	7	
	7	16	3	4	2	5	28	13	3	6	
	8	19	2	4	2	5	28	13	3	6	
	9	24	2	4	2	5	28	13	3	5	
8	1	8	4	5	5	4	24	6	24	24	
	2	13	4	5	4	4	22	6	22	24	
	3	17	4	5	4	3	22	5	21	24	
	4	19	3	5	4	3	20	5	20	24	
	5	20	3	5	4	3	19	4	17	23	
	6	21	2	5	4	2	18	4	16	23	
	7	25	2	5	4	1	17	4	15	23	
	8	26	1	5	4	1	17	3	15	22	
	9	29	1	5	4	1	15	3	13	22	
9	1	3	1	2	5	1	10	12	13	14	
	2	4	1	2	4	1	9	11	12	13	
	3	5	1	2	4	1	7	10	12	13	
	4	9	1	2	3	1	7	9	11	11	
	5	12	1	1	2	1	6	8	11	10	
	6	18	1	1	2	1	5	8	10	9	
	7	23	1	1	2	1	5	7	10	7	
	8	24	1	1	1	1	3	6	9	5	
	9	26	1	1	1	1	3	6	9	4	
10	1	5	5	5	3	2	22	14	7	19	
	2	6	4	4	2	2	21	12	7	16	
	3	9	4	4	2	2	20	11	7	15	
	4	11	3	3	2	2	19	9	7	15	
	5	12	3	3	2	2	19	8	7	14	
	6	21	2	2	2	2	17	8	6	11	
	7	22	2	1	2	2	16	7	6	11	
	8	23	1	1	2	2	16	6	6	9	
	9	27	1	1	2	2	15	4	6	8	
11	1	6	2	1	3	1	1	23	19	25	
	2	11	2	1	3	1	1	23	18	25	
	3	12	2	1	3	1	1	22	16	21	
	4	13	2	1	2	1	1	22	15	19	
	5	14	2	1	2	1	1	21	14	16	
	6	15	2	1	2	1	1	20	13	13	
	7	16	2	1	1	1	1	20	11	11	
	8	24	2	1	1	1	1	19	10	9	
	9	28	2	1	1	1	1	18	8	6	
12	1	1	4	3	4	1	25	28	13	15	
	2	12	4	3	3	1	23	23	13	15	
	3	13	4	3	3	1	22	23	13	13	
	4	14	4	3	3	1	20	20	13	12	
	5	21	3	3	3	1	18	17	12	12	
	6	23	3	3	2	1	18	14	12	11	
	7	24	3	3	2	1	17	11	12	10	
	8	27	3	3	2	1	15	7	11	10	
	9	29	3	3	2	1	14	7	11	9	
13	1	3	4	3	4	4	16	30	22	28	
	2	7	3	3	3	3	16	25	17	25	
	3	10	3	3	3	3	14	23	15	24	
	4	11	3	2	2	2	11	22	13	23	
	5	13	3	2	2	2	11	16	11	22	
	6	14	3	2	2	2	9	14	9	20	
	7	18	3	1	1	2	7	14	8	18	
	8	23	3	1	1	1	7	8	7	18	
	9	25	3	1	1	1	4	7	5	17	
14	1	3	5	5	5	3	26	22	7	30	
	2	6	4	4	5	3	25	19	6	27	
	3	7	3	4	5	3	21	18	6	27	
	4	21	3	3	5	2	20	16	5	25	
	5	22	2	2	5	2	19	13	5	24	
	6	24	2	2	5	2	16	12	5	23	
	7	26	2	1	5	2	13	11	5	22	
	8	28	1	1	5	1	11	7	4	20	
	9	29	1	1	5	1	11	6	4	19	
15	1	8	5	3	4	1	24	21	6	6	
	2	14	4	3	4	1	21	18	6	6	
	3	15	4	3	4	1	18	16	6	5	
	4	18	4	3	4	1	16	15	6	4	
	5	24	4	2	3	1	16	13	6	3	
	6	25	3	2	3	1	12	10	6	3	
	7	27	3	2	2	1	8	8	6	2	
	8	28	3	2	2	1	7	8	6	1	
	9	29	3	2	2	1	4	6	6	1	
16	1	6	5	5	4	5	9	17	26	17	
	2	7	4	4	4	4	9	16	25	16	
	3	8	3	4	3	4	9	16	21	16	
	4	9	3	4	3	4	9	16	16	15	
	5	20	2	3	3	3	9	16	14	15	
	6	21	2	3	2	3	8	15	12	14	
	7	23	2	3	1	3	8	15	10	14	
	8	25	1	2	1	2	8	15	5	13	
	9	26	1	2	1	2	8	15	4	13	
17	1	2	2	3	3	5	13	28	24	18	
	2	14	2	3	2	4	12	23	20	16	
	3	15	2	3	2	4	11	21	18	15	
	4	17	2	3	2	4	10	19	15	15	
	5	19	2	3	2	4	10	15	13	14	
	6	23	2	3	1	3	10	12	12	12	
	7	27	2	3	1	3	8	9	10	11	
	8	28	2	3	1	3	8	6	5	11	
	9	29	2	3	1	3	7	4	2	10	
18	1	1	4	2	1	2	20	13	12	18	
	2	2	3	1	1	2	17	12	11	17	
	3	13	3	1	1	2	16	11	10	16	
	4	14	3	1	1	2	13	10	8	16	
	5	15	3	1	1	2	11	9	7	15	
	6	21	2	1	1	2	9	7	7	15	
	7	23	2	1	1	2	7	6	5	14	
	8	28	2	1	1	2	5	5	4	14	
	9	29	2	1	1	2	2	3	4	14	
19	1	1	2	2	3	5	4	28	20	19	
	2	8	1	2	3	5	4	27	19	15	
	3	9	1	2	3	5	4	27	17	14	
	4	10	1	2	3	5	4	26	17	13	
	5	11	1	2	3	5	4	26	15	10	
	6	12	1	2	3	5	4	26	14	9	
	7	13	1	2	3	5	4	25	14	6	
	8	15	1	2	3	5	4	25	13	5	
	9	17	1	2	3	5	4	25	12	1	
20	1	5	2	3	5	3	23	29	29	19	
	2	6	2	2	5	3	20	25	28	18	
	3	7	2	2	5	3	17	25	26	17	
	4	10	2	2	5	3	17	22	25	17	
	5	16	2	1	5	3	15	21	24	16	
	6	18	2	1	5	3	12	19	24	15	
	7	21	2	1	5	3	10	17	23	14	
	8	22	2	1	5	3	8	16	22	14	
	9	27	2	1	5	3	5	15	20	13	
21	1	3	3	1	4	2	28	26	23	20	
	2	4	2	1	4	2	28	24	22	18	
	3	11	2	1	4	2	28	23	22	16	
	4	16	2	1	4	2	28	19	21	16	
	5	18	2	1	4	2	27	16	20	13	
	6	20	2	1	4	2	27	15	20	12	
	7	24	2	1	4	2	27	12	19	12	
	8	25	2	1	4	2	27	9	19	10	
	9	30	2	1	4	2	27	5	19	10	
22	1	4	5	4	5	5	24	14	20	10	
	2	9	4	3	4	4	23	13	20	9	
	3	10	3	3	4	4	23	12	19	9	
	4	11	3	3	3	4	22	12	19	8	
	5	12	3	3	3	4	22	11	18	7	
	6	20	2	2	2	4	21	10	17	7	
	7	22	2	2	2	4	21	8	17	7	
	8	25	1	2	1	4	20	7	16	6	
	9	26	1	2	1	4	20	7	16	5	
23	1	7	5	3	4	3	13	14	18	4	
	2	9	5	2	3	3	12	14	16	4	
	3	14	5	2	3	3	12	11	15	4	
	4	18	5	2	3	3	11	10	12	4	
	5	24	5	2	3	3	10	9	10	4	
	6	25	5	2	3	3	7	6	9	4	
	7	26	5	2	3	3	7	5	7	4	
	8	27	5	2	3	3	5	3	6	4	
	9	29	5	2	3	3	4	3	5	4	
24	1	12	2	3	5	5	9	15	10	21	
	2	13	1	2	4	5	9	13	8	20	
	3	14	1	2	4	5	9	12	7	19	
	4	17	1	2	4	5	9	11	6	19	
	5	18	1	2	4	5	8	10	6	19	
	6	19	1	2	3	5	8	8	5	18	
	7	21	1	2	3	5	8	8	3	18	
	8	23	1	2	3	5	8	6	3	17	
	9	28	1	2	3	5	8	6	1	17	
25	1	1	4	3	4	1	18	14	17	11	
	2	11	3	2	3	1	17	12	15	10	
	3	13	3	2	3	1	17	12	15	9	
	4	15	3	2	3	1	17	11	14	9	
	5	16	3	1	2	1	17	10	14	9	
	6	17	2	1	2	1	16	10	14	9	
	7	18	2	1	2	1	16	10	13	9	
	8	26	2	1	2	1	16	8	13	8	
	9	29	2	1	2	1	16	8	12	8	
26	1	3	4	3	3	5	26	18	16	15	
	2	5	4	3	3	5	25	17	15	12	
	3	6	3	3	3	5	25	17	13	11	
	4	7	3	3	3	5	23	17	12	10	
	5	13	2	3	3	5	23	16	11	9	
	6	14	2	3	2	5	21	16	10	9	
	7	15	1	3	2	5	20	15	9	8	
	8	19	1	3	2	5	19	15	8	6	
	9	29	1	3	2	5	19	15	7	5	
27	1	1	3	5	4	4	28	17	14	27	
	2	3	3	4	3	4	27	17	12	25	
	3	8	3	4	3	4	27	15	11	23	
	4	11	3	4	3	4	27	15	10	22	
	5	14	2	4	3	3	26	14	10	22	
	6	23	2	4	3	3	26	12	10	21	
	7	24	2	4	3	3	26	11	9	19	
	8	29	1	4	3	2	26	11	7	18	
	9	30	1	4	3	2	26	9	7	17	
28	1	6	4	4	5	3	4	23	21	16	
	2	11	3	3	4	2	4	20	21	16	
	3	13	3	3	4	2	4	18	21	14	
	4	16	3	3	3	2	4	15	21	14	
	5	17	2	3	3	1	4	15	21	12	
	6	18	2	3	3	1	4	11	21	10	
	7	21	1	3	2	1	4	9	21	10	
	8	24	1	3	2	1	4	8	21	8	
	9	25	1	3	2	1	4	4	21	8	
29	1	5	4	3	4	5	20	10	17	16	
	2	16	3	3	4	4	19	10	14	15	
	3	17	3	3	4	4	16	10	13	13	
	4	20	3	3	4	4	16	10	12	11	
	5	22	3	2	3	4	14	9	10	9	
	6	24	2	2	3	4	13	9	9	8	
	7	26	2	1	2	4	11	8	9	6	
	8	27	2	1	2	4	9	8	6	6	
	9	30	2	1	2	4	9	8	5	4	
30	1	10	4	5	3	4	24	27	19	23	
	2	15	3	5	2	4	23	26	18	22	
	3	16	3	5	2	3	22	25	17	21	
	4	17	3	5	2	3	20	24	16	21	
	5	18	3	5	1	3	19	24	14	20	
	6	19	3	5	1	2	18	23	12	20	
	7	24	3	5	1	1	18	22	12	19	
	8	25	3	5	1	1	16	22	9	18	
	9	26	3	5	1	1	16	21	9	18	
31	1	2	3	2	3	3	22	25	9	19	
	2	5	3	2	3	3	20	25	7	18	
	3	7	3	2	3	3	18	25	7	18	
	4	8	3	2	3	3	15	25	7	18	
	5	10	3	2	3	3	14	25	6	17	
	6	14	2	1	3	3	13	25	6	16	
	7	18	2	1	3	3	10	25	5	16	
	8	26	2	1	3	3	8	25	5	16	
	9	30	2	1	3	3	8	25	4	15	
32	1	1	5	2	5	5	29	26	25	3	
	2	2	4	1	5	4	29	21	23	3	
	3	15	4	1	5	4	29	20	20	3	
	4	18	4	1	5	4	29	17	20	2	
	5	19	3	1	5	4	28	14	18	2	
	6	24	3	1	5	4	28	13	16	2	
	7	28	3	1	5	4	28	9	13	2	
	8	29	3	1	5	4	28	8	12	1	
	9	30	3	1	5	4	28	4	10	1	
33	1	3	4	4	5	3	27	28	25	13	
	2	4	4	3	5	3	23	28	24	13	
	3	9	4	3	5	3	21	27	22	13	
	4	11	4	3	5	3	18	27	21	13	
	5	17	4	2	5	2	16	27	21	13	
	6	18	4	2	5	2	15	26	20	13	
	7	21	4	2	5	2	12	26	18	13	
	8	22	4	1	5	2	9	25	18	13	
	9	25	4	1	5	2	8	25	16	13	
34	1	4	2	2	1	4	18	17	28	12	
	2	6	2	2	1	4	14	15	25	12	
	3	9	2	2	1	4	13	15	21	12	
	4	17	2	2	1	4	11	14	21	11	
	5	21	2	2	1	4	11	13	18	11	
	6	22	2	1	1	4	10	11	14	11	
	7	23	2	1	1	4	7	11	12	11	
	8	27	2	1	1	4	7	10	11	10	
	9	29	2	1	1	4	5	9	9	10	
35	1	1	1	3	3	4	27	12	16	4	
	2	5	1	3	3	4	24	9	13	3	
	3	10	1	3	3	4	23	9	13	3	
	4	11	1	3	3	3	22	8	11	3	
	5	17	1	2	2	3	18	7	9	3	
	6	20	1	2	2	3	17	4	8	3	
	7	21	1	2	2	2	15	3	6	3	
	8	22	1	1	2	2	13	3	5	3	
	9	30	1	1	2	2	12	1	4	3	
36	1	7	1	2	4	4	12	10	23	23	
	2	8	1	2	4	4	10	10	21	22	
	3	9	1	2	4	3	10	9	19	21	
	4	11	1	2	4	3	10	8	19	19	
	5	20	1	2	4	3	9	6	16	18	
	6	21	1	2	4	2	8	6	15	18	
	7	23	1	2	4	2	7	4	13	16	
	8	24	1	2	4	1	6	3	10	15	
	9	30	1	2	4	1	6	3	10	14	
37	1	14	3	4	4	4	22	18	17	22	
	2	15	3	4	4	4	21	17	15	21	
	3	16	3	4	3	4	20	17	15	20	
	4	17	3	3	3	3	18	17	13	19	
	5	18	3	3	3	2	18	17	13	16	
	6	19	2	2	2	2	17	16	12	15	
	7	20	2	2	1	2	14	16	11	13	
	8	29	2	1	1	1	13	16	9	13	
	9	30	2	1	1	1	12	16	9	12	
38	1	6	1	4	5	5	25	12	23	10	
	2	7	1	3	5	5	23	11	23	10	
	3	14	1	3	5	5	21	9	22	10	
	4	15	1	3	5	5	17	9	22	10	
	5	16	1	2	5	5	16	7	21	9	
	6	17	1	2	5	5	11	7	20	9	
	7	22	1	2	5	5	9	5	20	8	
	8	23	1	2	5	5	5	4	19	8	
	9	28	1	2	5	5	4	3	19	8	
39	1	4	2	3	4	4	19	25	9	24	
	2	5	2	3	4	4	17	23	9	22	
	3	8	2	3	4	4	16	23	8	21	
	4	13	2	2	4	4	14	22	6	21	
	5	16	2	2	4	4	11	21	5	20	
	6	17	2	2	4	4	8	19	5	20	
	7	19	2	2	4	4	5	19	4	18	
	8	21	2	1	4	4	4	18	2	18	
	9	26	2	1	4	4	1	16	1	17	
40	1	3	1	4	5	4	12	13	14	11	
	2	10	1	4	4	3	12	13	12	11	
	3	11	1	3	3	3	10	12	12	11	
	4	12	1	3	3	3	8	11	9	11	
	5	15	1	3	2	2	6	9	9	11	
	6	18	1	2	2	2	6	8	6	11	
	7	22	1	2	1	2	5	7	6	11	
	8	24	1	1	1	2	3	7	4	11	
	9	29	1	1	1	2	2	6	3	11	
41	1	2	5	4	3	4	28	19	21	8	
	2	5	4	4	3	4	26	19	19	7	
	3	7	4	3	3	4	23	17	18	7	
	4	10	4	3	3	4	17	17	16	6	
	5	14	4	2	3	4	17	15	13	6	
	6	15	4	2	2	3	13	15	13	5	
	7	16	4	1	2	3	11	13	10	4	
	8	17	4	1	2	3	8	13	9	4	
	9	24	4	1	2	3	3	12	6	4	
42	1	1	1	3	3	5	16	14	21	19	
	2	7	1	3	3	4	14	14	20	19	
	3	21	1	3	3	4	14	14	20	17	
	4	22	1	3	3	4	13	14	19	17	
	5	23	1	3	2	3	10	14	19	17	
	6	24	1	3	2	3	10	14	19	16	
	7	27	1	3	2	3	7	14	19	14	
	8	28	1	3	2	2	7	14	18	13	
	9	30	1	3	2	2	5	14	18	13	
43	1	3	4	5	5	4	10	20	24	21	
	2	13	4	4	4	3	10	18	23	18	
	3	14	4	3	4	3	10	16	22	17	
	4	15	3	3	4	3	9	13	20	15	
	5	16	3	3	4	3	9	12	18	14	
	6	17	2	2	4	2	9	10	18	14	
	7	21	2	1	4	2	9	7	15	13	
	8	22	1	1	4	2	8	4	14	11	
	9	25	1	1	4	2	8	4	14	9	
44	1	3	5	4	3	2	25	20	14	29	
	2	13	5	4	3	2	24	18	13	28	
	3	14	5	4	3	2	23	16	11	26	
	4	16	5	4	3	2	21	14	11	24	
	5	18	5	4	3	2	21	12	10	24	
	6	22	5	4	3	2	20	11	9	22	
	7	23	5	4	3	2	19	9	8	19	
	8	28	5	4	3	2	18	7	6	18	
	9	29	5	4	3	2	17	3	5	18	
45	1	6	1	4	4	2	10	24	14	27	
	2	7	1	4	3	2	9	22	13	25	
	3	8	1	4	3	2	8	21	12	21	
	4	11	1	4	3	2	7	20	11	18	
	5	15	1	3	2	2	6	18	11	17	
	6	16	1	3	2	2	6	15	10	12	
	7	22	1	3	2	2	5	12	10	12	
	8	28	1	2	1	2	4	11	9	8	
	9	30	1	2	1	2	3	9	8	6	
46	1	5	3	4	3	3	29	30	23	25	
	2	12	3	3	3	3	29	27	20	22	
	3	14	3	3	3	3	29	24	18	18	
	4	16	3	3	3	3	29	22	16	18	
	5	17	3	2	2	3	29	20	15	15	
	6	18	3	2	2	2	29	18	14	13	
	7	20	3	1	1	2	29	14	13	8	
	8	21	3	1	1	2	29	13	10	4	
	9	26	3	1	1	2	29	12	10	3	
47	1	2	5	5	1	2	4	21	22	26	
	2	6	4	4	1	2	4	20	22	26	
	3	9	3	4	1	2	4	20	20	26	
	4	14	3	4	1	2	4	20	18	26	
	5	17	2	4	1	2	4	20	18	26	
	6	18	2	3	1	1	4	19	15	26	
	7	21	2	3	1	1	4	19	13	26	
	8	24	1	3	1	1	4	19	12	26	
	9	28	1	3	1	1	4	19	11	26	
48	1	2	1	2	5	1	5	29	26	28	
	2	4	1	2	5	1	4	29	26	28	
	3	8	1	2	5	1	3	28	24	28	
	4	9	1	2	5	1	3	27	19	28	
	5	19	1	2	5	1	2	27	19	28	
	6	20	1	2	5	1	2	27	16	27	
	7	22	1	2	5	1	2	26	15	27	
	8	24	1	2	5	1	1	25	12	27	
	9	28	1	2	5	1	1	25	9	27	
49	1	3	4	2	5	4	29	15	21	23	
	2	4	4	1	4	3	28	14	18	22	
	3	5	4	1	4	3	28	13	17	20	
	4	6	4	1	3	2	28	11	15	19	
	5	9	3	1	3	2	27	10	10	18	
	6	12	3	1	3	2	27	7	10	17	
	7	26	2	1	2	1	27	5	8	16	
	8	29	2	1	2	1	27	4	4	15	
	9	30	2	1	2	1	27	4	3	14	
50	1	1	1	4	3	3	10	29	20	7	
	2	2	1	3	2	3	9	29	20	7	
	3	4	1	3	2	3	9	29	20	6	
	4	9	1	3	2	3	8	29	19	5	
	5	11	1	3	2	3	8	29	19	4	
	6	15	1	2	1	3	8	29	19	5	
	7	16	1	2	1	3	8	29	19	4	
	8	17	1	2	1	3	7	29	18	3	
	9	24	1	2	1	3	7	29	18	2	
51	1	1	4	4	1	2	29	10	24	7	
	2	2	3	4	1	2	26	10	22	5	
	3	6	3	4	1	2	23	10	20	5	
	4	7	3	4	1	2	23	10	19	5	
	5	10	3	4	1	2	20	9	19	4	
	6	11	3	4	1	2	18	9	17	3	
	7	23	3	4	1	2	16	9	15	3	
	8	26	3	4	1	2	16	8	13	3	
	9	30	3	4	1	2	14	8	12	2	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	26	21	25	24	843	886	798	788

************************************************************************
