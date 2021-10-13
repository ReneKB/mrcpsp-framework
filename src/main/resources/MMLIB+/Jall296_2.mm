jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 3 4 9 
2	9	5		15 13 11 6 5 
3	9	6		13 12 11 10 8 7 
4	9	4		11 8 7 6 
5	9	4		24 16 8 7 
6	9	4		24 20 16 14 
7	9	3		20 19 14 
8	9	7		26 23 22 20 19 18 17 
9	9	7		26 24 23 22 19 18 17 
10	9	2		19 14 
11	9	6		26 24 23 22 19 17 
12	9	6		26 23 22 19 18 17 
13	9	3		20 17 16 
14	9	5		26 23 22 18 17 
15	9	2		17 16 
16	9	4		26 23 21 19 
17	9	4		31 27 25 21 
18	9	6		31 30 29 28 27 25 
19	9	3		30 29 25 
20	9	6		38 34 32 31 30 29 
21	9	5		38 33 30 29 28 
22	9	5		38 34 30 29 28 
23	9	4		31 30 28 27 
24	9	3		30 28 25 
25	9	6		38 36 35 34 33 32 
26	9	6		43 41 40 39 38 35 
27	9	4		41 40 35 34 
28	9	3		37 35 32 
29	9	5		43 41 40 39 35 
30	9	3		39 37 36 
31	9	6		51 46 45 43 40 39 
32	9	5		46 45 43 41 39 
33	9	4		51 46 45 39 
34	9	3		45 43 37 
35	9	4		51 46 45 42 
36	9	4		46 45 43 42 
37	9	3		51 50 42 
38	9	2		46 42 
39	9	2		50 42 
40	9	2		50 42 
41	9	4		51 49 48 47 
42	9	1		44 
43	9	1		44 
44	9	3		49 48 47 
45	9	3		49 48 47 
46	9	1		50 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	3	5	3	5	4	22	21	
	2	9	4	2	4	4	21	20	
	3	10	3	2	3	4	21	20	
	4	13	3	2	3	4	21	19	
	5	18	3	2	3	4	21	18	
	6	19	2	2	2	4	21	18	
	7	23	2	2	1	4	21	17	
	8	27	1	2	1	4	21	16	
	9	30	1	2	1	4	21	15	
3	1	1	3	2	4	5	26	30	
	2	2	2	2	3	4	23	28	
	3	4	2	2	3	4	20	28	
	4	16	2	2	3	4	17	26	
	5	20	2	2	2	4	13	25	
	6	22	1	2	2	3	13	25	
	7	23	1	2	2	3	10	24	
	8	26	1	2	2	3	7	23	
	9	27	1	2	2	3	1	21	
4	1	5	5	1	2	2	25	21	
	2	9	4	1	1	2	22	21	
	3	15	4	1	1	2	22	16	
	4	18	3	1	1	2	19	15	
	5	19	3	1	1	2	17	12	
	6	24	3	1	1	1	17	9	
	7	28	2	1	1	1	14	7	
	8	29	2	1	1	1	13	6	
	9	30	2	1	1	1	11	2	
5	1	2	4	4	3	3	16	12	
	2	7	4	4	3	3	16	11	
	3	11	3	4	3	3	16	11	
	4	15	3	4	3	2	16	9	
	5	16	3	4	3	2	16	8	
	6	18	2	3	2	2	16	8	
	7	24	1	3	2	1	16	7	
	8	28	1	3	2	1	16	6	
	9	29	1	3	2	1	16	4	
6	1	1	4	5	2	5	28	13	
	2	3	4	4	2	4	25	12	
	3	4	4	4	2	4	22	12	
	4	5	4	3	2	4	20	11	
	5	13	4	3	2	4	20	10	
	6	15	4	3	2	4	17	11	
	7	18	4	2	2	4	14	11	
	8	29	4	2	2	4	13	10	
	9	30	4	2	2	4	11	10	
7	1	6	4	4	2	3	22	5	
	2	7	4	4	2	3	22	4	
	3	8	4	4	2	3	18	4	
	4	8	3	4	2	3	16	5	
	5	9	3	4	2	3	16	4	
	6	10	2	3	2	3	12	4	
	7	18	1	3	2	3	11	4	
	8	19	1	3	2	3	9	4	
	9	20	1	3	2	3	6	4	
8	1	3	3	4	2	5	13	26	
	2	6	3	4	2	4	13	24	
	3	7	3	3	2	4	13	23	
	4	10	3	3	2	4	13	20	
	5	13	3	3	2	4	13	19	
	6	14	3	2	2	4	13	17	
	7	15	3	2	2	4	13	16	
	8	16	3	1	2	4	13	15	
	9	18	3	1	2	4	13	13	
9	1	2	1	4	4	4	28	13	
	2	3	1	3	4	4	23	12	
	3	4	1	3	4	4	21	10	
	4	5	1	3	3	4	18	9	
	5	6	1	3	3	3	15	7	
	6	12	1	3	3	3	11	6	
	7	19	1	3	2	3	11	4	
	8	20	1	3	2	3	5	3	
	9	23	1	3	2	3	4	3	
10	1	2	4	4	4	3	23	2	
	2	6	4	4	4	3	21	2	
	3	7	4	4	3	3	21	2	
	4	8	4	3	3	3	20	2	
	5	11	3	2	2	3	19	2	
	6	15	3	2	2	3	17	2	
	7	26	3	1	2	3	16	2	
	8	27	3	1	1	3	16	2	
	9	28	3	1	1	3	15	2	
11	1	3	2	5	5	4	18	13	
	2	4	2	5	4	4	16	11	
	3	6	2	5	3	4	16	10	
	4	11	2	5	3	3	15	10	
	5	18	1	5	3	2	14	9	
	6	19	1	5	2	2	13	8	
	7	25	1	5	1	1	13	7	
	8	26	1	5	1	1	12	6	
	9	28	1	5	1	1	11	4	
12	1	1	3	1	3	3	23	14	
	2	3	3	1	3	3	22	13	
	3	4	3	1	3	3	22	10	
	4	7	3	1	3	3	22	9	
	5	9	3	1	3	2	21	8	
	6	12	3	1	3	2	21	6	
	7	15	3	1	3	2	21	4	
	8	21	3	1	3	2	20	3	
	9	22	3	1	3	2	20	1	
13	1	2	5	5	2	5	22	7	
	2	7	4	4	2	4	19	6	
	3	11	4	4	2	4	17	6	
	4	12	4	3	2	4	14	6	
	5	17	4	3	2	4	14	5	
	6	18	3	3	2	4	12	4	
	7	20	3	2	2	4	10	4	
	8	24	3	2	2	4	6	4	
	9	28	3	2	2	4	5	3	
14	1	1	3	3	5	4	24	3	
	2	2	3	2	4	3	22	3	
	3	6	3	2	4	3	18	3	
	4	10	3	2	3	3	17	3	
	5	11	3	1	2	3	14	3	
	6	14	3	1	2	2	10	3	
	7	16	3	1	1	2	8	3	
	8	17	3	1	1	2	7	3	
	9	28	3	1	1	2	5	3	
15	1	2	3	1	5	2	22	26	
	2	3	2	1	4	2	22	24	
	3	5	2	1	4	2	19	23	
	4	9	2	1	3	2	17	21	
	5	13	2	1	3	2	14	19	
	6	18	2	1	3	1	12	15	
	7	19	2	1	3	1	11	15	
	8	25	2	1	2	1	10	12	
	9	30	2	1	2	1	7	10	
16	1	1	4	5	4	3	27	17	
	2	5	3	4	3	3	27	16	
	3	6	3	4	3	3	23	15	
	4	10	2	3	3	3	21	14	
	5	15	2	3	2	2	21	13	
	6	17	2	3	2	2	17	12	
	7	18	2	3	2	2	16	9	
	8	21	1	2	2	2	13	9	
	9	24	1	2	2	2	13	7	
17	1	1	2	2	3	1	23	5	
	2	3	1	2	3	1	23	5	
	3	5	1	2	3	1	23	4	
	4	6	1	2	3	1	23	3	
	5	13	1	2	3	1	23	2	
	6	14	1	1	2	1	23	5	
	7	16	1	1	2	1	23	4	
	8	20	1	1	2	1	23	3	
	9	21	1	1	2	1	23	2	
18	1	1	1	3	4	1	24	15	
	2	10	1	3	3	1	24	14	
	3	11	1	3	3	1	23	14	
	4	12	1	3	3	1	21	13	
	5	13	1	3	3	1	19	11	
	6	14	1	3	2	1	18	10	
	7	15	1	3	2	1	17	9	
	8	16	1	3	2	1	14	8	
	9	29	1	3	2	1	14	7	
19	1	1	4	4	3	3	26	21	
	2	2	3	3	3	3	24	20	
	3	3	3	3	3	3	18	20	
	4	6	3	3	3	3	16	20	
	5	7	3	3	3	3	15	19	
	6	8	2	2	3	3	12	19	
	7	22	2	2	3	3	9	19	
	8	23	2	2	3	3	6	18	
	9	28	2	2	3	3	3	18	
20	1	1	2	3	4	4	29	9	
	2	2	1	3	4	3	27	8	
	3	5	1	3	4	3	24	7	
	4	6	1	3	4	3	23	7	
	5	21	1	3	3	3	21	6	
	6	24	1	2	3	2	19	6	
	7	25	1	2	3	2	18	5	
	8	26	1	2	3	2	17	5	
	9	30	1	2	3	2	15	4	
21	1	1	4	4	2	4	16	19	
	2	5	3	3	1	3	14	17	
	3	6	3	3	1	3	12	15	
	4	14	2	3	1	3	11	13	
	5	15	2	2	1	3	8	12	
	6	19	2	2	1	3	6	11	
	7	22	2	1	1	3	4	9	
	8	23	1	1	1	3	3	8	
	9	30	1	1	1	3	2	5	
22	1	2	3	4	3	5	22	12	
	2	12	3	3	2	4	20	11	
	3	18	3	3	2	4	20	10	
	4	19	3	3	2	4	19	11	
	5	21	3	3	2	4	16	10	
	6	26	3	3	2	4	16	9	
	7	29	3	3	2	4	14	10	
	8	29	3	3	2	4	11	11	
	9	30	3	3	2	4	11	10	
23	1	3	4	4	5	4	27	26	
	2	12	4	3	4	4	26	23	
	3	13	3	3	3	4	24	22	
	4	14	3	3	3	4	23	19	
	5	17	3	3	2	3	19	17	
	6	21	2	2	2	3	19	14	
	7	22	1	2	1	3	16	10	
	8	24	1	2	1	2	16	8	
	9	25	1	2	1	2	14	6	
24	1	7	3	2	1	1	13	19	
	2	8	2	2	1	1	12	17	
	3	14	2	2	1	1	12	16	
	4	15	2	2	1	1	12	15	
	5	16	2	2	1	1	11	16	
	6	22	1	2	1	1	11	15	
	7	27	1	2	1	1	11	14	
	8	29	1	2	1	1	11	13	
	9	30	1	2	1	1	11	12	
25	1	1	4	2	4	5	25	21	
	2	2	3	2	3	4	25	19	
	3	5	3	2	3	4	25	18	
	4	7	3	2	2	4	24	16	
	5	10	3	2	2	4	23	16	
	6	18	3	2	2	3	23	15	
	7	19	3	2	1	3	22	12	
	8	24	3	2	1	3	22	11	
	9	26	3	2	1	3	22	10	
26	1	6	5	2	3	2	30	30	
	2	8	5	2	3	2	27	26	
	3	12	5	2	3	2	24	25	
	4	13	5	2	3	2	24	23	
	5	20	5	2	3	2	20	22	
	6	23	5	2	2	2	19	18	
	7	28	5	2	2	2	18	18	
	8	29	5	2	2	2	14	16	
	9	30	5	2	2	2	14	14	
27	1	4	1	3	3	1	23	24	
	2	5	1	3	3	1	19	21	
	3	11	1	3	3	1	19	20	
	4	14	1	3	2	1	17	19	
	5	15	1	2	2	1	14	18	
	6	16	1	2	2	1	12	17	
	7	17	1	2	1	1	11	16	
	8	24	1	1	1	1	8	14	
	9	26	1	1	1	1	8	13	
28	1	1	3	5	4	4	23	20	
	2	8	3	4	3	4	23	19	
	3	12	3	4	3	4	23	18	
	4	14	3	4	3	4	23	17	
	5	19	3	3	3	4	23	19	
	6	22	2	3	3	4	23	19	
	7	26	2	3	3	4	23	18	
	8	29	2	3	3	4	23	17	
	9	30	2	3	3	4	23	16	
29	1	2	4	4	4	5	27	26	
	2	6	4	3	4	5	27	24	
	3	9	4	3	4	5	26	20	
	4	10	4	3	4	5	25	16	
	5	15	4	3	4	5	24	14	
	6	16	4	3	3	5	23	13	
	7	17	4	3	3	5	21	9	
	8	19	4	3	3	5	21	5	
	9	30	4	3	3	5	20	2	
30	1	2	1	2	3	3	27	16	
	2	4	1	2	3	3	25	16	
	3	5	1	2	3	3	21	15	
	4	12	1	2	3	2	20	13	
	5	22	1	2	2	2	19	13	
	6	24	1	2	2	2	17	12	
	7	25	1	2	2	2	13	10	
	8	28	1	2	1	1	12	9	
	9	29	1	2	1	1	10	9	
31	1	7	2	4	1	1	5	17	
	2	10	1	4	1	1	4	15	
	3	11	1	4	1	1	4	14	
	4	17	1	4	1	1	3	14	
	5	23	1	3	1	1	3	14	
	6	24	1	3	1	1	2	13	
	7	27	1	3	1	1	2	12	
	8	28	1	3	1	1	1	12	
	9	30	1	3	1	1	1	11	
32	1	2	2	2	4	2	23	13	
	2	3	1	2	4	2	23	13	
	3	5	1	2	4	2	21	13	
	4	7	1	2	3	2	21	13	
	5	11	1	2	3	2	20	13	
	6	22	1	2	2	2	20	12	
	7	25	1	2	2	2	19	12	
	8	27	1	2	1	2	17	12	
	9	28	1	2	1	2	17	11	
33	1	3	2	4	5	2	19	26	
	2	9	2	4	4	2	18	24	
	3	10	2	4	4	2	17	21	
	4	16	2	3	3	2	14	19	
	5	20	2	2	2	2	12	17	
	6	23	2	2	2	2	11	15	
	7	26	2	1	1	2	10	13	
	8	28	2	1	1	2	8	13	
	9	29	2	1	1	2	7	11	
34	1	1	4	1	4	2	5	21	
	2	2	3	1	4	2	5	19	
	3	13	3	1	4	2	5	18	
	4	15	3	1	3	2	5	18	
	5	19	2	1	3	2	5	17	
	6	20	2	1	2	2	5	16	
	7	21	2	1	2	2	5	14	
	8	24	2	1	1	2	5	13	
	9	30	2	1	1	2	5	12	
35	1	3	2	1	5	3	23	18	
	2	7	1	1	4	3	21	17	
	3	9	1	1	4	3	18	17	
	4	13	1	1	3	3	18	16	
	5	15	1	1	3	2	16	14	
	6	16	1	1	2	2	13	13	
	7	19	1	1	1	2	13	13	
	8	26	1	1	1	1	10	11	
	9	27	1	1	1	1	8	11	
36	1	3	4	1	4	4	25	21	
	2	6	4	1	4	4	22	18	
	3	7	3	1	4	4	21	16	
	4	8	3	1	3	4	17	16	
	5	9	2	1	3	4	17	13	
	6	14	2	1	3	4	12	11	
	7	22	1	1	2	4	10	10	
	8	24	1	1	2	4	9	9	
	9	27	1	1	2	4	7	7	
37	1	5	5	4	5	4	28	26	
	2	7	4	3	4	4	26	24	
	3	9	4	3	4	3	24	23	
	4	12	4	2	4	3	23	22	
	5	19	3	2	3	3	22	21	
	6	20	3	2	3	2	20	20	
	7	22	3	2	3	2	18	19	
	8	23	3	1	3	1	17	18	
	9	29	3	1	3	1	16	18	
38	1	2	4	2	4	5	14	30	
	2	3	4	2	3	4	14	27	
	3	6	4	2	3	4	12	25	
	4	7	4	2	3	4	11	21	
	5	12	4	2	3	3	10	18	
	6	16	4	2	3	3	9	16	
	7	17	4	2	3	3	9	14	
	8	28	4	2	3	2	8	14	
	9	30	4	2	3	2	7	11	
39	1	1	4	3	2	3	18	10	
	2	8	3	3	1	2	17	10	
	3	15	3	3	1	2	16	9	
	4	19	3	2	1	2	14	8	
	5	23	3	2	1	2	13	6	
	6	24	3	2	1	2	12	5	
	7	25	3	1	1	2	11	5	
	8	26	3	1	1	2	9	4	
	9	27	3	1	1	2	8	2	
40	1	2	4	5	4	2	20	5	
	2	5	4	5	3	2	20	5	
	3	6	4	5	3	2	19	4	
	4	7	4	5	3	2	18	4	
	5	9	4	5	2	2	17	3	
	6	12	4	5	2	2	16	2	
	7	14	4	5	2	2	15	2	
	8	15	4	5	2	2	13	2	
	9	25	4	5	2	2	13	1	
41	1	2	3	4	2	4	29	23	
	2	9	3	4	2	4	29	22	
	3	11	3	4	2	4	29	21	
	4	16	3	4	2	4	28	20	
	5	17	2	4	2	3	28	19	
	6	18	2	4	2	3	28	18	
	7	20	2	4	2	3	28	17	
	8	26	1	4	2	2	27	15	
	9	27	1	4	2	2	27	14	
42	1	2	1	4	4	5	24	20	
	2	9	1	4	4	4	24	18	
	3	11	1	4	4	4	22	17	
	4	15	1	4	4	3	22	15	
	5	19	1	3	3	3	20	15	
	6	24	1	3	3	3	19	14	
	7	25	1	3	2	2	18	13	
	8	26	1	3	2	2	17	12	
	9	28	1	3	2	2	16	10	
43	1	3	3	4	3	3	20	18	
	2	6	2	3	3	2	18	17	
	3	15	2	3	3	2	18	16	
	4	16	2	3	3	2	14	17	
	5	18	2	2	2	2	12	16	
	6	19	1	2	2	2	11	16	
	7	24	1	2	2	2	8	16	
	8	25	1	2	2	2	8	15	
	9	26	1	2	2	2	5	15	
44	1	2	3	4	4	2	7	22	
	2	4	2	3	4	1	6	20	
	3	5	2	3	4	1	5	20	
	4	8	2	2	3	1	5	19	
	5	9	2	2	3	1	4	18	
	6	16	2	2	2	1	3	16	
	7	17	2	2	2	1	3	14	
	8	25	2	1	1	1	3	13	
	9	26	2	1	1	1	2	13	
45	1	2	5	3	1	2	10	27	
	2	3	5	2	1	2	9	27	
	3	4	5	2	1	2	9	26	
	4	6	5	2	1	2	9	23	
	5	7	5	2	1	2	8	23	
	6	10	5	1	1	2	8	21	
	7	16	5	1	1	2	8	19	
	8	18	5	1	1	2	8	18	
	9	30	5	1	1	2	8	16	
46	1	2	4	5	2	4	14	14	
	2	11	4	4	2	4	12	13	
	3	14	4	4	2	4	11	12	
	4	19	4	3	2	4	11	11	
	5	20	4	3	2	4	10	11	
	6	24	4	2	2	4	9	10	
	7	25	4	1	2	4	8	10	
	8	26	4	1	2	4	7	8	
	9	29	4	1	2	4	7	7	
47	1	2	2	5	4	2	4	5	
	2	5	1	4	4	2	3	5	
	3	6	1	3	4	2	3	5	
	4	11	1	3	4	2	3	4	
	5	12	1	2	4	2	3	5	
	6	13	1	2	4	2	2	4	
	7	23	1	2	4	2	2	3	
	8	23	1	1	4	2	2	5	
	9	24	1	1	4	2	2	4	
48	1	1	3	4	4	2	21	21	
	2	2	2	4	4	2	21	20	
	3	9	2	4	4	2	19	19	
	4	18	2	3	4	2	18	19	
	5	19	2	3	4	2	18	18	
	6	23	2	3	4	1	16	18	
	7	28	2	3	4	1	16	17	
	8	29	2	2	4	1	15	17	
	9	30	2	2	4	1	14	17	
49	1	12	2	5	4	5	26	23	
	2	16	2	4	4	4	25	23	
	3	17	2	4	4	3	22	21	
	4	18	2	4	4	3	22	20	
	5	24	2	4	3	3	19	19	
	6	25	2	4	3	2	18	17	
	7	26	2	4	3	1	17	16	
	8	28	2	4	3	1	15	15	
	9	29	2	4	3	1	13	15	
50	1	2	4	4	5	4	13	2	
	2	3	4	4	4	3	12	2	
	3	6	4	4	4	3	12	1	
	4	7	3	3	4	3	11	1	
	5	8	2	2	3	2	11	2	
	6	10	2	2	3	2	11	1	
	7	13	2	1	3	1	10	1	
	8	20	1	1	3	1	10	2	
	9	27	1	1	3	1	10	1	
51	1	6	2	2	4	4	19	24	
	2	10	2	2	4	4	17	20	
	3	11	2	2	4	3	14	19	
	4	15	2	2	3	3	12	17	
	5	16	2	2	2	3	12	13	
	6	18	2	2	2	2	9	11	
	7	19	2	2	2	2	8	7	
	8	20	2	2	1	1	6	3	
	9	24	2	2	1	1	5	1	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	17	17	17	17	794	662

************************************************************************
