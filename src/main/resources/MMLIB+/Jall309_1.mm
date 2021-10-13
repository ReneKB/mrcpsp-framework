jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 4 5 7 9 11 
2	9	5		21 16 8 6 3 
3	9	6		25 24 18 14 13 10 
4	9	5		34 22 20 12 10 
5	9	7		24 22 20 19 18 17 15 
6	9	5		24 22 20 15 12 
7	9	9		44 40 34 32 28 27 26 23 22 
8	9	8		35 34 33 32 31 29 26 20 
9	9	6		33 32 29 26 24 21 
10	9	5		31 27 26 23 17 
11	9	5		44 34 28 27 19 
12	9	5		38 27 25 23 18 
13	9	8		44 43 40 38 36 35 33 22 
14	9	6		43 38 32 31 30 27 
15	9	8		49 43 39 38 36 34 32 31 
16	9	7		50 44 39 38 35 31 27 
17	9	6		40 35 32 30 29 28 
18	9	6		44 43 40 33 32 30 
19	9	3		38 31 25 
20	9	6		44 43 42 38 36 30 
21	9	6		51 44 43 42 38 30 
22	9	3		51 30 29 
23	9	3		51 30 29 
24	9	4		39 36 34 31 
25	9	1		26 
26	9	5		48 46 43 42 30 
27	9	2		51 29 
28	9	5		48 42 38 37 36 
29	9	5		48 47 42 41 37 
30	9	4		50 49 47 39 
31	9	4		51 47 41 40 
32	9	4		50 48 47 37 
33	9	4		51 48 42 39 
34	9	4		51 48 47 42 
35	9	3		49 47 46 
36	9	2		46 41 
37	9	2		46 45 
38	9	2		46 45 
39	9	1		41 
40	9	1		42 
41	9	1		45 
42	9	1		45 
43	9	1		45 
44	9	1		45 
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
2	1	7	28	22	24	27	23	22	11	24	
	2	11	27	20	24	27	22	19	10	22	
	3	12	25	17	22	27	21	16	9	21	
	4	13	20	17	19	26	20	14	9	16	
	5	14	17	15	17	26	20	12	7	13	
	6	15	16	12	14	25	19	8	7	11	
	7	23	12	10	11	24	19	5	7	8	
	8	28	10	9	9	24	19	5	5	7	
	9	30	8	8	9	24	18	2	5	4	
3	1	4	3	26	28	24	26	25	21	17	
	2	8	3	25	27	20	26	24	19	16	
	3	16	3	24	27	18	25	23	19	16	
	4	25	3	22	27	17	25	22	19	16	
	5	26	3	22	26	14	23	22	18	16	
	6	27	3	21	26	12	23	22	18	16	
	7	28	3	20	26	11	22	21	17	16	
	8	29	3	19	26	10	21	20	17	16	
	9	30	3	18	26	8	21	20	16	16	
4	1	1	21	24	28	26	25	29	20	21	
	2	2	21	24	26	25	21	25	19	21	
	3	4	20	19	26	23	18	20	19	19	
	4	9	20	19	23	21	17	19	19	17	
	5	10	19	15	21	19	16	16	18	15	
	6	14	19	11	21	17	13	13	17	13	
	7	20	18	11	19	15	10	8	17	10	
	8	27	18	7	17	13	8	4	17	9	
	9	30	18	4	17	10	6	4	16	7	
5	1	4	23	29	19	27	11	20	25	13	
	2	6	21	27	15	23	10	17	24	13	
	3	8	20	24	15	22	10	16	24	13	
	4	10	19	23	12	20	9	14	23	12	
	5	15	19	21	10	18	9	12	23	12	
	6	24	19	20	9	17	9	11	22	11	
	7	25	17	19	5	13	8	11	21	11	
	8	27	16	18	5	13	8	9	21	10	
	9	30	16	16	2	11	8	6	20	10	
6	1	3	25	24	11	17	15	14	11	20	
	2	4	25	22	9	17	13	12	9	16	
	3	5	23	22	9	17	13	12	9	16	
	4	12	21	20	9	16	11	10	8	14	
	5	15	20	19	8	16	10	10	6	13	
	6	24	19	18	7	15	10	9	4	12	
	7	25	16	17	7	14	9	8	4	9	
	8	26	16	17	7	14	7	6	2	7	
	9	30	14	16	6	14	6	6	1	7	
7	1	4	27	15	23	26	21	11	2	14	
	2	8	26	14	23	25	19	10	1	12	
	3	9	26	14	22	25	19	10	1	12	
	4	10	24	14	20	25	19	8	1	11	
	5	11	24	14	19	25	17	8	1	11	
	6	13	22	14	19	25	17	6	1	11	
	7	14	22	14	18	25	16	6	1	10	
	8	21	21	14	16	25	15	4	1	9	
	9	25	20	14	16	25	15	4	1	9	
8	1	3	14	24	11	11	16	21	29	7	
	2	7	13	21	9	9	15	21	27	7	
	3	8	13	17	8	8	13	20	27	7	
	4	9	13	17	7	8	13	19	26	6	
	5	15	13	12	6	6	10	19	26	6	
	6	17	13	12	5	4	8	18	25	5	
	7	21	13	9	5	3	8	18	25	5	
	8	28	13	6	4	3	6	16	24	4	
	9	30	13	5	3	2	4	16	24	4	
9	1	3	29	27	24	24	15	9	7	11	
	2	9	23	27	22	23	14	9	6	11	
	3	11	23	27	22	19	12	9	6	11	
	4	12	20	27	21	18	11	9	6	11	
	5	13	16	27	19	13	10	8	5	11	
	6	14	14	27	18	9	9	8	4	11	
	7	23	13	27	17	7	8	7	4	11	
	8	24	9	27	15	3	7	7	3	11	
	9	30	8	27	15	3	7	7	3	11	
10	1	11	28	22	24	11	18	21	18	30	
	2	15	28	21	21	11	17	20	17	29	
	3	17	27	20	20	10	15	17	14	28	
	4	18	25	18	18	8	14	16	13	28	
	5	24	25	17	16	8	12	11	11	27	
	6	26	22	17	14	7	9	9	10	27	
	7	27	22	15	12	5	9	6	7	27	
	8	29	21	15	12	5	6	6	6	26	
	9	30	19	14	10	4	4	4	4	26	
11	1	3	7	18	26	20	21	24	28	20	
	2	7	6	17	23	18	18	21	28	20	
	3	9	6	16	22	17	16	20	27	20	
	4	13	5	16	19	16	13	18	26	20	
	5	18	5	14	18	12	10	15	26	20	
	6	19	5	13	15	10	9	13	25	20	
	7	20	4	13	12	8	5	10	25	20	
	8	23	4	11	9	5	4	9	25	20	
	9	25	4	11	8	3	2	6	24	20	
12	1	1	29	15	21	21	28	9	12	7	
	2	3	26	14	21	20	28	7	12	6	
	3	5	25	12	21	20	28	7	11	6	
	4	14	25	11	20	20	27	6	10	5	
	5	16	23	11	20	19	27	5	10	5	
	6	19	20	10	20	19	27	5	9	4	
	7	26	18	9	20	19	26	3	9	4	
	8	28	17	8	19	19	26	3	8	4	
	9	29	15	8	19	19	26	2	7	3	
13	1	5	28	12	9	22	8	29	13	17	
	2	10	23	11	8	20	8	24	13	17	
	3	13	20	11	8	18	7	23	12	15	
	4	17	19	10	8	17	7	21	12	14	
	5	19	15	8	7	15	6	20	11	14	
	6	20	12	8	7	13	6	18	10	13	
	7	23	8	7	7	11	5	14	10	11	
	8	24	7	6	7	8	5	12	10	10	
	9	30	2	4	7	7	4	12	9	10	
14	1	1	23	15	21	9	23	11	14	27	
	2	5	21	15	21	9	21	11	11	25	
	3	11	20	15	21	9	21	10	11	24	
	4	14	19	14	20	8	20	9	10	23	
	5	15	18	14	20	8	20	8	7	23	
	6	17	17	14	19	7	19	8	6	23	
	7	24	16	14	18	6	19	8	4	21	
	8	27	16	13	18	6	18	7	3	21	
	9	28	15	13	18	6	17	6	2	20	
15	1	2	21	18	19	26	20	18	10	20	
	2	3	20	18	18	26	17	15	8	19	
	3	12	20	18	18	26	14	13	8	18	
	4	14	19	18	17	26	13	12	8	14	
	5	15	18	18	17	26	12	11	6	13	
	6	16	18	18	17	25	11	10	6	12	
	7	20	18	18	16	25	9	8	5	10	
	8	23	17	18	16	25	7	6	4	9	
	9	28	17	18	16	25	5	3	4	7	
16	1	3	26	28	25	28	25	24	23	14	
	2	7	26	27	23	27	24	23	20	13	
	3	8	24	24	23	22	22	23	19	13	
	4	13	20	22	22	19	21	21	14	13	
	5	18	16	22	21	15	19	21	11	12	
	6	21	14	19	19	15	18	19	9	12	
	7	24	13	18	19	11	17	19	7	12	
	8	28	9	18	17	6	17	18	5	11	
	9	29	7	15	17	6	16	16	3	11	
17	1	1	29	4	14	20	27	25	18	10	
	2	5	29	4	14	20	22	24	17	8	
	3	8	29	4	14	19	21	22	14	7	
	4	19	29	4	14	18	17	17	13	7	
	5	21	29	3	14	17	15	13	10	5	
	6	26	29	3	14	16	13	10	9	5	
	7	27	29	2	14	15	7	8	7	3	
	8	29	29	2	14	14	6	6	6	3	
	9	30	29	2	14	13	2	3	3	2	
18	1	1	6	27	28	18	3	25	24	19	
	2	2	5	26	26	17	2	24	22	18	
	3	3	4	24	23	17	2	24	22	18	
	4	7	4	23	20	17	2	22	20	17	
	5	8	3	22	17	16	2	21	19	16	
	6	9	3	19	16	16	2	21	18	16	
	7	10	2	19	13	15	2	19	18	14	
	8	13	2	18	8	15	2	18	17	14	
	9	16	1	15	6	15	2	17	15	13	
19	1	2	19	23	10	26	22	4	12	8	
	2	6	19	18	10	26	19	4	12	7	
	3	7	19	16	10	26	18	4	12	7	
	4	11	19	16	9	25	15	4	12	7	
	5	14	19	14	9	25	14	3	12	7	
	6	21	19	11	9	25	11	3	12	7	
	7	25	19	8	8	25	9	3	12	7	
	8	28	19	5	8	24	7	3	12	7	
	9	30	19	5	8	24	6	3	12	7	
20	1	7	13	12	26	26	19	27	8	23	
	2	8	10	11	25	25	17	27	8	23	
	3	13	10	10	22	21	17	27	7	20	
	4	17	8	9	19	21	16	27	7	19	
	5	20	7	9	16	17	15	27	6	17	
	6	21	7	8	14	17	15	27	5	15	
	7	22	5	6	13	13	14	27	5	14	
	8	24	5	5	8	12	12	27	5	13	
	9	28	3	4	8	10	12	27	4	12	
21	1	4	20	8	28	7	17	20	27	23	
	2	12	17	8	28	6	15	20	25	20	
	3	13	16	7	27	6	14	18	24	20	
	4	19	12	6	26	5	12	18	22	18	
	5	22	10	6	26	5	11	16	22	17	
	6	25	10	5	25	5	10	16	19	14	
	7	26	7	5	25	5	8	14	17	12	
	8	27	4	4	25	4	6	14	16	11	
	9	29	3	3	24	4	6	13	14	10	
22	1	2	27	9	25	15	29	4	24	23	
	2	3	26	8	22	14	23	3	24	22	
	3	4	26	8	21	14	23	3	24	19	
	4	8	25	7	18	12	18	3	24	17	
	5	9	24	6	18	12	16	3	24	13	
	6	11	24	6	17	10	14	2	24	13	
	7	21	23	6	15	10	12	2	24	8	
	8	25	22	4	13	8	7	2	24	7	
	9	26	21	4	12	7	5	2	24	4	
23	1	1	7	8	28	12	26	27	21	26	
	2	13	7	7	27	12	26	24	21	25	
	3	15	7	7	25	11	24	21	21	25	
	4	17	7	7	25	9	23	19	21	23	
	5	18	7	6	23	7	22	15	20	23	
	6	19	7	6	22	5	22	13	20	22	
	7	23	7	6	22	4	20	12	20	21	
	8	26	7	6	21	3	19	8	20	20	
	9	27	7	6	20	1	18	7	20	19	
24	1	4	29	3	13	9	17	29	10	19	
	2	5	29	2	12	8	16	29	10	17	
	3	6	28	2	10	8	16	29	10	15	
	4	10	27	2	10	7	16	29	10	13	
	5	11	26	2	9	7	15	29	10	12	
	6	12	25	2	9	6	15	29	10	10	
	7	13	24	2	7	6	15	29	10	9	
	8	14	24	2	6	5	15	29	10	6	
	9	22	23	2	6	5	15	29	10	4	
25	1	2	20	16	14	16	25	25	23	30	
	2	4	19	13	13	15	22	23	21	26	
	3	5	19	12	13	15	22	22	20	24	
	4	8	18	12	12	14	19	19	18	21	
	5	9	16	10	11	13	16	17	15	17	
	6	13	14	9	11	12	16	17	14	16	
	7	19	14	8	10	11	13	15	13	14	
	8	28	13	7	9	9	10	11	11	11	
	9	29	11	7	8	8	10	10	9	6	
26	1	1	15	18	20	27	27	26	29	30	
	2	5	15	17	19	27	25	25	24	28	
	3	9	15	15	19	26	24	25	22	26	
	4	10	15	14	19	25	23	24	18	23	
	5	11	15	14	18	25	21	24	17	22	
	6	22	14	14	18	24	20	24	12	20	
	7	26	14	12	17	24	19	23	9	16	
	8	28	14	12	17	23	18	23	7	15	
	9	29	14	11	17	22	17	22	4	14	
27	1	1	14	24	28	21	26	21	25	16	
	2	2	14	24	27	19	25	21	24	16	
	3	4	13	24	26	15	21	19	22	13	
	4	5	11	23	26	15	17	19	20	11	
	5	10	10	22	26	12	16	18	19	9	
	6	11	10	22	25	11	13	17	17	9	
	7	12	9	22	25	9	10	16	16	6	
	8	14	7	21	24	8	8	15	14	5	
	9	18	7	21	24	6	5	15	14	3	
28	1	2	26	17	20	26	30	9	18	28	
	2	11	26	15	17	23	28	8	15	26	
	3	12	26	11	15	23	25	6	14	25	
	4	13	26	10	13	19	24	5	13	23	
	5	14	26	9	10	17	20	4	11	22	
	6	15	25	8	8	13	18	4	7	21	
	7	19	25	5	7	10	16	2	7	20	
	8	28	25	3	3	7	15	1	4	17	
	9	30	25	2	2	5	14	1	3	17	
29	1	1	15	6	12	3	27	26	25	13	
	2	2	14	5	12	3	26	23	25	12	
	3	3	12	4	11	3	26	22	25	11	
	4	4	11	4	10	2	26	21	25	9	
	5	12	11	3	10	2	26	19	25	9	
	6	13	10	3	9	2	25	18	25	7	
	7	20	8	2	9	2	25	17	25	6	
	8	21	8	2	9	1	25	14	25	5	
	9	28	7	1	8	1	25	14	25	5	
30	1	2	23	22	24	15	26	30	28	26	
	2	9	21	19	23	15	26	27	27	26	
	3	10	17	18	23	14	26	27	27	26	
	4	12	17	16	22	13	25	24	26	26	
	5	13	15	15	22	10	24	24	24	26	
	6	14	13	13	21	9	24	23	24	26	
	7	17	11	11	21	7	23	21	22	26	
	8	20	10	10	21	6	23	20	21	26	
	9	22	8	8	20	6	23	18	21	26	
31	1	2	30	26	21	7	21	28	16	27	
	2	4	27	24	20	6	21	25	15	24	
	3	6	23	21	20	6	20	23	14	19	
	4	9	21	19	20	6	20	21	13	15	
	5	12	19	19	19	6	19	21	13	12	
	6	15	17	16	19	6	18	19	13	11	
	7	22	17	15	19	6	18	17	12	8	
	8	26	15	13	19	6	16	14	11	6	
	9	27	13	13	19	6	16	13	11	3	
32	1	2	26	24	27	10	20	27	23	23	
	2	8	26	23	25	10	20	25	19	22	
	3	9	26	23	22	10	17	25	18	19	
	4	10	26	23	20	10	14	22	15	17	
	5	11	26	22	18	10	11	21	14	14	
	6	15	26	22	16	10	10	21	11	13	
	7	20	26	21	15	10	8	18	7	11	
	8	26	26	21	10	10	6	18	6	8	
	9	30	26	20	8	10	4	16	3	7	
33	1	2	21	7	26	25	25	15	10	19	
	2	3	20	7	26	22	24	15	9	17	
	3	5	19	7	24	18	22	14	9	14	
	4	14	18	7	21	17	21	13	8	13	
	5	23	18	7	19	13	21	13	8	12	
	6	24	18	7	18	11	20	12	8	10	
	7	25	16	7	15	10	19	12	7	6	
	8	29	15	7	13	8	18	10	7	6	
	9	30	15	7	12	4	17	10	6	4	
34	1	8	15	8	23	28	7	20	16	9	
	2	13	14	7	19	27	7	19	16	9	
	3	14	13	7	19	22	7	16	16	9	
	4	15	10	7	17	20	7	15	16	9	
	5	19	10	6	13	18	7	13	16	9	
	6	20	8	5	12	14	7	12	16	8	
	7	22	7	5	11	13	7	8	16	8	
	8	26	5	5	9	10	7	7	16	8	
	9	27	3	4	5	7	7	5	16	8	
35	1	1	27	22	11	27	15	17	26	24	
	2	5	26	21	11	26	14	17	22	23	
	3	11	25	20	11	23	13	17	19	22	
	4	12	24	18	10	22	12	16	16	22	
	5	14	23	17	10	19	12	16	15	20	
	6	16	22	17	9	18	10	16	11	19	
	7	20	20	16	9	16	10	15	10	19	
	8	26	20	15	8	15	9	15	8	18	
	9	30	19	14	8	13	7	15	4	17	
36	1	1	19	26	27	28	29	26	18	24	
	2	7	17	26	26	25	25	26	16	24	
	3	9	15	25	25	21	24	22	15	22	
	4	17	13	23	25	18	22	21	14	21	
	5	20	11	22	25	15	17	19	12	19	
	6	21	10	22	24	12	15	15	11	18	
	7	22	7	21	23	10	15	13	9	15	
	8	23	6	19	23	7	11	11	8	13	
	9	26	5	18	23	3	9	9	7	13	
37	1	1	25	18	23	25	27	10	5	29	
	2	2	23	18	21	25	25	9	5	28	
	3	5	21	18	20	22	20	8	5	28	
	4	14	20	18	18	22	16	7	5	28	
	5	18	18	17	17	19	16	5	5	27	
	6	19	17	17	15	18	11	5	5	27	
	7	23	16	17	12	16	9	4	5	27	
	8	27	14	17	12	14	6	2	5	27	
	9	28	13	17	10	14	3	2	5	27	
38	1	3	27	5	18	10	15	20	15	27	
	2	4	24	5	17	8	14	18	14	26	
	3	8	21	5	16	8	14	17	14	22	
	4	9	19	4	16	8	13	14	13	19	
	5	13	13	4	15	7	13	12	12	18	
	6	16	12	3	15	7	12	9	12	14	
	7	25	10	3	14	6	12	7	12	10	
	8	26	8	2	13	5	11	5	11	8	
	9	30	3	2	12	5	11	5	11	7	
39	1	4	7	29	26	9	29	9	11	12	
	2	5	7	27	24	9	25	8	10	10	
	3	6	7	26	23	8	21	8	10	9	
	4	7	7	23	22	8	21	7	10	9	
	5	8	6	20	21	7	18	7	9	8	
	6	10	6	20	20	7	15	7	9	6	
	7	22	6	16	18	7	11	6	9	5	
	8	24	5	16	16	6	8	5	8	4	
	9	29	5	14	16	6	3	5	8	4	
40	1	2	22	9	22	22	11	24	10	27	
	2	5	21	9	19	21	11	24	9	26	
	3	8	20	9	16	21	11	24	9	25	
	4	13	19	9	16	21	11	24	9	25	
	5	15	18	9	14	20	11	24	8	24	
	6	23	17	9	12	20	10	24	8	23	
	7	24	17	9	9	19	10	24	7	23	
	8	25	16	9	8	19	10	24	7	21	
	9	29	15	9	6	18	10	24	7	21	
41	1	4	23	3	19	28	18	21	26	26	
	2	7	23	3	19	26	17	21	25	26	
	3	8	20	3	18	21	14	20	25	25	
	4	10	17	2	18	19	13	19	25	24	
	5	18	17	2	17	16	11	19	24	23	
	6	19	15	2	17	14	10	19	24	22	
	7	22	11	1	16	12	6	18	24	20	
	8	23	11	1	16	6	4	18	23	19	
	9	24	8	1	16	6	4	17	23	19	
42	1	1	29	13	28	24	4	25	3	27	
	2	6	27	12	27	23	4	24	3	27	
	3	7	23	12	21	23	4	24	3	26	
	4	9	23	12	20	21	4	24	3	26	
	5	18	19	11	17	21	3	23	3	26	
	6	20	18	11	14	20	3	23	3	25	
	7	22	16	10	12	19	3	23	3	25	
	8	28	14	10	8	18	3	23	3	24	
	9	30	13	10	6	18	3	23	3	24	
43	1	2	3	22	13	10	22	14	30	28	
	2	4	2	22	12	9	21	12	29	27	
	3	7	2	21	12	8	16	11	28	27	
	4	12	2	21	12	7	16	11	27	27	
	5	13	2	21	11	6	13	9	26	25	
	6	17	2	20	10	5	10	8	25	25	
	7	25	2	19	10	4	6	8	25	24	
	8	27	2	19	9	3	6	7	23	24	
	9	28	2	19	9	2	3	5	23	23	
44	1	7	28	22	28	26	23	25	23	6	
	2	9	28	19	26	24	19	24	23	5	
	3	14	27	15	26	21	18	24	23	5	
	4	16	26	12	24	21	15	22	22	5	
	5	19	23	12	23	17	14	21	22	4	
	6	23	22	8	20	16	12	19	22	4	
	7	24	22	8	19	15	9	18	22	3	
	8	29	20	5	18	12	8	16	21	3	
	9	30	19	3	16	11	7	15	21	2	
45	1	1	26	27	30	23	8	26	12	30	
	2	2	23	22	28	22	7	21	10	29	
	3	3	21	21	26	20	7	21	10	29	
	4	5	17	19	25	20	6	18	9	29	
	5	6	15	15	25	17	5	17	9	28	
	6	7	13	14	24	15	4	14	8	28	
	7	13	10	11	22	15	4	13	8	28	
	8	16	7	6	21	13	2	9	6	28	
	9	21	5	4	20	10	2	9	6	28	
46	1	2	16	11	29	20	20	30	23	30	
	2	7	15	10	25	20	18	29	23	26	
	3	13	13	10	22	20	16	29	22	21	
	4	17	12	10	18	20	13	28	21	17	
	5	19	10	9	15	20	9	27	21	14	
	6	20	9	9	13	19	7	27	21	10	
	7	21	7	9	12	19	7	26	20	9	
	8	22	7	8	6	19	3	26	20	6	
	9	26	5	8	6	19	3	26	19	2	
47	1	3	10	2	20	22	23	16	28	16	
	2	7	9	2	17	20	23	14	27	15	
	3	12	8	2	15	20	21	14	27	14	
	4	15	7	2	15	18	19	14	26	14	
	5	16	6	2	13	18	16	13	26	13	
	6	21	5	2	12	16	16	12	26	11	
	7	22	5	2	10	16	13	12	26	11	
	8	28	3	2	8	14	11	11	25	10	
	9	30	3	2	7	14	10	11	25	9	
48	1	6	29	26	28	9	29	26	27	23	
	2	7	26	26	28	9	28	26	24	20	
	3	9	24	26	24	9	26	26	21	18	
	4	10	23	26	24	9	25	26	18	18	
	5	14	21	26	20	8	24	25	15	15	
	6	23	21	25	19	8	24	25	13	14	
	7	26	18	25	18	8	23	25	12	14	
	8	29	16	25	16	7	21	24	9	11	
	9	30	16	25	13	7	21	24	8	11	
49	1	7	29	17	14	25	26	15	22	26	
	2	8	29	17	14	25	26	14	17	24	
	3	12	27	16	14	24	26	14	17	23	
	4	14	27	15	14	24	26	14	15	22	
	5	15	26	14	14	22	26	14	10	22	
	6	16	26	12	14	22	26	13	8	22	
	7	27	24	11	14	21	26	13	8	21	
	8	28	24	9	14	20	26	13	5	19	
	9	29	23	8	14	20	26	13	2	19	
50	1	2	25	28	24	25	19	25	24	24	
	2	3	24	27	23	24	17	24	23	23	
	3	10	23	24	22	21	14	23	21	23	
	4	11	21	23	22	19	12	21	18	23	
	5	14	20	19	21	15	12	20	17	23	
	6	15	17	18	21	13	10	19	15	23	
	7	16	17	16	20	11	7	16	12	23	
	8	20	15	13	19	7	6	16	10	23	
	9	27	13	13	18	5	5	14	10	23	
51	1	4	14	17	29	12	14	9	24	26	
	2	5	12	15	27	12	11	9	23	26	
	3	7	12	12	27	10	11	9	20	25	
	4	14	9	12	26	9	9	9	18	24	
	5	17	8	10	26	9	8	9	16	23	
	6	18	7	8	25	8	5	8	15	21	
	7	19	5	7	25	7	5	8	13	20	
	8	20	3	4	24	7	3	8	11	19	
	9	21	3	3	24	6	2	8	8	19	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	74	66	80	67	888	900	831	928

************************************************************************
