jobs  (incl. supersource/sink ):	102
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 7 9 11 
2	6	9		22 20 19 18 17 13 12 10 8 
3	6	7		22 20 17 16 15 13 8 
4	6	8		27 23 22 20 19 18 17 13 
5	6	5		22 21 20 18 10 
6	6	5		23 22 20 17 13 
7	6	3		22 20 10 
8	6	5		31 26 24 23 14 
9	6	7		36 32 28 27 23 20 18 
10	6	4		31 26 24 14 
11	6	4		31 29 26 14 
12	6	8		37 35 34 32 31 25 24 21 
13	6	8		37 36 34 32 31 30 29 21 
14	6	11		44 40 39 37 36 35 34 32 28 27 25 
15	6	9		44 40 38 34 31 30 27 26 23 
16	6	9		44 40 37 34 33 32 31 30 29 
17	6	5		44 36 35 26 24 
18	6	6		44 40 39 38 37 26 
19	6	4		44 41 37 24 
20	6	5		35 33 31 29 25 
21	6	4		44 39 28 26 
22	6	7		50 44 40 39 38 35 31 
23	6	6		45 43 39 35 33 29 
24	6	5		45 42 40 38 30 
25	6	7		50 48 47 45 42 41 38 
26	6	6		50 47 45 43 41 33 
27	6	3		43 41 33 
28	6	4		55 48 41 38 
29	6	7		55 54 53 52 48 47 41 
30	6	6		52 50 49 48 47 39 
31	6	5		55 48 46 45 43 
32	6	4		55 47 46 38 
33	6	6		56 52 51 49 48 42 
34	6	5		55 51 48 45 43 
35	6	2		42 41 
36	6	8		57 56 55 54 53 52 51 48 
37	6	7		66 59 55 54 53 49 46 
38	6	2		51 43 
39	6	6		66 63 59 58 54 46 
40	6	6		63 57 56 54 53 48 
41	6	4		63 59 49 46 
42	6	8		70 66 62 61 57 55 54 53 
43	6	6		61 59 57 54 53 52 
44	6	3		59 55 46 
45	6	9		70 67 63 62 60 59 57 56 54 
46	6	6		69 64 61 57 56 51 
47	6	7		70 69 64 62 60 59 58 
48	6	8		76 70 69 66 62 61 60 59 
49	6	6		80 65 64 62 60 58 
50	6	5		79 67 63 62 59 
51	6	7		80 76 70 68 65 62 60 
52	6	7		80 71 70 66 65 63 60 
53	6	4		80 64 60 58 
54	6	11		80 78 77 76 75 74 73 71 69 68 64 
55	6	7		81 79 77 75 71 65 63 
56	6	10		81 80 79 78 77 75 74 72 71 65 
57	6	10		82 80 79 78 77 76 75 73 72 71 
58	6	9		81 79 78 76 75 73 71 68 67 
59	6	7		81 80 77 75 74 68 65 
60	6	10		87 84 82 81 79 78 77 75 73 72 
61	6	5		80 75 74 72 65 
62	6	7		82 81 78 77 74 73 71 
63	6	4		84 78 76 68 
64	6	5		87 84 82 81 72 
65	6	4		92 84 82 73 
66	6	3		79 78 77 
67	6	7		91 90 88 87 85 84 83 
68	6	4		90 83 82 72 
69	6	6		91 90 88 85 84 83 
70	6	6		101 91 90 88 84 83 
71	6	7		100 96 90 89 88 87 85 
72	6	7		100 98 96 91 89 88 85 
73	6	6		100 96 91 90 89 85 
74	6	6		97 91 90 88 87 84 
75	6	4		101 99 90 83 
76	6	9		100 98 97 96 94 91 89 88 87 
77	6	7		100 98 96 95 92 91 85 
78	6	5		99 96 90 89 85 
79	6	7		97 96 94 91 90 89 88 
80	6	4		97 91 88 84 
81	6	7		97 96 95 94 93 90 88 
82	6	7		98 97 96 95 94 93 88 
83	6	5		100 97 96 89 86 
84	6	5		99 98 96 95 86 
85	6	3		101 97 86 
86	6	2		94 93 
87	6	2		95 93 
88	6	1		99 
89	6	1		95 
90	6	1		98 
91	6	1		93 
92	6	1		94 
93	6	1		102 
94	6	1		102 
95	6	1		102 
96	6	1		102 
97	6	1		102 
98	6	1		102 
99	6	1		102 
100	6	1		102 
101	6	1		102 
102	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	5	3	2	16	8	8	15	
	2	9	3	1	15	8	8	14	
	3	10	3	1	14	8	7	13	
	4	14	3	1	14	8	5	13	
	5	17	3	1	12	8	5	13	
	6	20	3	1	12	8	4	12	
3	1	1	2	5	15	17	17	18	
	2	2	2	4	12	16	15	17	
	3	3	2	3	9	16	14	16	
	4	4	2	3	7	16	11	16	
	5	9	2	2	6	16	8	15	
	6	19	2	2	2	16	6	14	
4	1	5	1	2	11	13	15	2	
	2	8	1	1	11	13	15	2	
	3	12	1	1	9	11	14	2	
	4	14	1	1	9	6	11	2	
	5	17	1	1	8	4	10	2	
	6	18	1	1	6	2	8	2	
5	1	3	5	5	15	5	17	18	
	2	6	4	4	15	5	16	17	
	3	8	4	4	11	5	16	15	
	4	10	4	4	8	5	15	15	
	5	15	3	4	8	5	14	13	
	6	20	3	4	6	5	14	13	
6	1	1	4	4	8	3	16	14	
	2	4	4	3	7	2	15	13	
	3	7	4	3	7	2	14	12	
	4	8	4	3	6	1	14	12	
	5	13	4	2	6	1	13	10	
	6	17	4	2	5	1	13	10	
7	1	6	5	5	7	10	5	19	
	2	9	4	4	7	9	5	18	
	3	11	4	3	7	8	5	17	
	4	15	4	3	7	7	5	15	
	5	18	4	1	6	7	5	15	
	6	19	4	1	6	6	5	14	
8	1	2	3	4	5	10	16	13	
	2	5	3	3	5	9	13	13	
	3	8	2	3	4	8	11	8	
	4	9	2	2	4	8	7	8	
	5	15	2	2	2	7	5	6	
	6	18	1	2	2	7	3	1	
9	1	2	1	2	15	6	15	13	
	2	4	1	1	13	5	14	13	
	3	9	1	1	10	5	10	13	
	4	10	1	1	9	5	6	12	
	5	13	1	1	9	5	5	11	
	6	20	1	1	6	5	1	11	
10	1	1	3	5	15	19	20	17	
	2	10	2	4	11	16	17	15	
	3	11	2	4	9	16	15	13	
	4	12	2	4	9	15	14	12	
	5	16	1	3	4	13	10	11	
	6	18	1	3	2	11	10	8	
11	1	2	2	5	15	5	16	19	
	2	3	2	4	14	5	15	16	
	3	4	2	4	14	5	13	14	
	4	9	2	4	12	4	12	14	
	5	12	2	3	11	4	9	11	
	6	20	2	3	11	4	8	10	
12	1	7	4	4	20	8	19	14	
	2	8	4	4	19	7	18	14	
	3	14	3	3	19	7	17	13	
	4	15	3	3	18	7	17	11	
	5	16	2	1	18	7	17	10	
	6	17	1	1	17	7	16	10	
13	1	2	5	4	13	13	16	18	
	2	9	4	4	10	11	16	18	
	3	13	4	4	10	9	14	17	
	4	15	3	3	7	7	12	17	
	5	18	2	3	6	7	12	17	
	6	19	2	3	4	5	11	16	
14	1	6	2	4	8	9	15	16	
	2	9	1	4	8	7	14	16	
	3	11	1	4	8	6	12	16	
	4	17	1	4	8	6	8	16	
	5	18	1	3	7	4	4	16	
	6	20	1	3	7	4	3	16	
15	1	3	3	4	17	8	18	14	
	2	5	3	3	15	6	16	11	
	3	8	3	3	11	5	13	10	
	4	11	3	3	7	4	11	8	
	5	13	3	2	7	3	10	7	
	6	14	3	2	2	3	6	5	
16	1	6	3	4	12	13	15	12	
	2	8	3	4	11	13	12	12	
	3	9	3	4	9	12	9	11	
	4	15	3	3	8	9	8	11	
	5	16	2	2	8	8	5	10	
	6	17	2	2	7	8	3	9	
17	1	3	4	4	12	11	17	17	
	2	4	4	4	12	9	17	15	
	3	8	4	4	12	8	14	13	
	4	18	4	4	11	6	13	10	
	5	19	4	4	10	5	13	9	
	6	20	4	4	10	4	10	7	
18	1	1	3	4	11	19	11	13	
	2	8	3	4	8	18	10	12	
	3	9	3	4	7	18	9	12	
	4	14	3	4	5	17	5	12	
	5	15	3	4	4	16	3	11	
	6	18	3	4	2	15	2	11	
19	1	3	5	3	19	19	3	16	
	2	4	5	3	16	18	3	16	
	3	9	5	3	11	16	3	16	
	4	14	5	3	8	15	3	15	
	5	16	5	3	7	15	3	15	
	6	17	5	3	4	14	3	14	
20	1	4	4	3	12	18	15	9	
	2	6	3	3	12	17	15	7	
	3	7	3	2	9	16	14	7	
	4	11	2	2	8	15	14	6	
	5	15	2	2	4	14	13	4	
	6	16	1	1	2	14	13	4	
21	1	6	5	3	7	18	17	20	
	2	7	4	3	7	16	16	19	
	3	8	4	3	7	15	10	19	
	4	9	4	3	7	15	9	19	
	5	15	4	3	7	14	5	18	
	6	19	4	3	7	13	4	18	
22	1	5	5	3	2	4	12	8	
	2	6	4	3	1	4	11	8	
	3	7	4	3	1	4	11	7	
	4	8	4	3	1	4	10	7	
	5	9	4	3	1	4	10	6	
	6	12	4	3	1	4	10	5	
23	1	1	2	4	18	13	18	11	
	2	2	2	4	17	10	18	8	
	3	6	2	4	16	9	18	8	
	4	8	2	4	16	7	18	7	
	5	13	2	4	14	7	18	5	
	6	17	2	4	14	5	18	4	
24	1	3	5	5	17	7	20	8	
	2	4	3	4	17	7	19	7	
	3	6	3	4	17	7	18	6	
	4	13	2	4	16	6	18	6	
	5	14	1	4	16	5	17	5	
	6	18	1	4	15	5	17	4	
25	1	2	4	4	20	12	18	6	
	2	4	4	3	16	10	17	5	
	3	10	3	3	14	10	16	3	
	4	17	2	3	14	7	15	2	
	5	18	2	3	11	7	14	1	
	6	20	1	3	9	6	12	1	
26	1	5	5	4	16	16	19	11	
	2	6	4	3	16	15	16	9	
	3	8	4	3	14	11	14	7	
	4	13	4	3	13	9	13	7	
	5	14	3	2	12	9	10	5	
	6	17	3	1	11	7	10	3	
27	1	2	2	3	10	19	9	4	
	2	8	2	3	10	17	8	3	
	3	9	2	3	10	16	8	2	
	4	12	2	3	10	15	7	2	
	5	18	2	3	10	15	7	1	
	6	20	2	3	10	14	6	1	
28	1	1	2	4	7	14	17	16	
	2	5	2	3	6	14	16	13	
	3	8	2	3	5	14	15	10	
	4	12	2	2	4	14	15	7	
	5	15	2	2	4	14	14	6	
	6	19	2	2	2	14	14	1	
29	1	2	2	4	17	11	20	20	
	2	6	2	4	16	8	17	17	
	3	7	2	4	16	7	16	16	
	4	17	2	4	15	6	16	12	
	5	18	1	3	14	3	15	12	
	6	19	1	3	14	2	13	9	
30	1	2	1	3	16	9	10	12	
	2	4	1	3	16	9	8	11	
	3	5	1	3	14	8	6	9	
	4	10	1	2	14	8	4	9	
	5	13	1	2	12	7	2	8	
	6	20	1	2	12	7	2	7	
31	1	1	4	4	10	13	3	19	
	2	2	4	4	10	13	3	15	
	3	3	4	4	8	8	3	14	
	4	9	4	4	5	8	3	14	
	5	17	4	4	5	6	2	10	
	6	19	4	4	2	2	2	9	
32	1	1	2	3	13	14	20	4	
	2	4	2	2	11	10	14	4	
	3	8	2	2	9	9	13	4	
	4	13	2	1	7	9	7	4	
	5	14	2	1	6	5	4	4	
	6	18	2	1	4	4	3	4	
33	1	8	4	3	4	7	13	10	
	2	11	4	3	3	6	12	10	
	3	12	4	3	3	6	11	8	
	4	13	4	3	2	6	11	7	
	5	18	3	3	2	6	10	6	
	6	19	3	3	2	6	9	6	
34	1	1	5	5	16	8	3	17	
	2	2	4	5	13	7	3	17	
	3	12	4	5	12	6	3	17	
	4	13	4	5	10	4	3	16	
	5	19	4	5	7	3	2	16	
	6	20	4	5	5	3	2	16	
35	1	5	2	2	9	15	16	5	
	2	6	2	2	8	15	14	4	
	3	7	2	2	8	15	10	4	
	4	13	2	2	7	15	9	3	
	5	14	2	2	6	15	5	2	
	6	18	2	2	6	15	3	2	
36	1	5	2	1	19	3	18	4	
	2	6	2	1	18	3	17	4	
	3	7	2	1	18	3	16	3	
	4	9	2	1	18	3	15	3	
	5	10	2	1	17	3	15	2	
	6	11	2	1	17	3	14	2	
37	1	2	5	2	17	14	15	13	
	2	3	4	2	15	10	14	10	
	3	8	3	2	13	9	11	9	
	4	12	2	2	13	6	11	8	
	5	15	1	2	10	5	6	6	
	6	19	1	2	10	4	5	6	
38	1	6	4	1	14	15	19	18	
	2	7	3	1	14	15	17	14	
	3	8	3	1	14	14	17	14	
	4	11	2	1	13	14	16	10	
	5	15	1	1	13	13	14	10	
	6	18	1	1	12	13	14	7	
39	1	2	1	3	18	13	16	11	
	2	3	1	3	15	13	14	11	
	3	7	1	3	10	12	11	9	
	4	12	1	3	8	11	10	9	
	5	14	1	3	6	11	9	8	
	6	16	1	3	2	10	7	7	
40	1	3	1	5	15	13	13	15	
	2	4	1	4	13	11	11	14	
	3	5	1	3	12	10	11	14	
	4	7	1	3	11	8	10	13	
	5	8	1	1	10	7	9	13	
	6	16	1	1	10	5	9	12	
41	1	2	3	5	14	9	10	16	
	2	12	3	3	14	9	10	14	
	3	14	3	3	13	9	9	12	
	4	15	3	2	13	9	8	9	
	5	16	3	1	12	9	7	9	
	6	17	3	1	11	9	7	4	
42	1	1	1	4	15	17	18	18	
	2	4	1	4	15	17	17	18	
	3	10	1	4	15	17	17	17	
	4	11	1	3	15	17	16	18	
	5	15	1	2	15	17	16	18	
	6	18	1	2	15	17	15	18	
43	1	1	4	3	1	11	4	13	
	2	2	4	2	1	11	4	12	
	3	4	4	2	1	10	4	12	
	4	13	3	2	1	10	3	12	
	5	14	3	2	1	9	3	12	
	6	18	3	2	1	9	3	11	
44	1	2	2	3	6	8	6	17	
	2	4	2	3	5	7	6	17	
	3	5	2	3	4	7	5	17	
	4	6	2	3	4	6	3	17	
	5	9	1	2	3	6	3	17	
	6	18	1	2	3	6	2	17	
45	1	1	4	5	8	16	3	14	
	2	2	3	4	8	14	2	12	
	3	6	2	3	8	13	2	11	
	4	12	2	2	7	9	2	9	
	5	17	2	1	7	9	2	8	
	6	19	1	1	7	6	2	5	
46	1	2	2	3	14	9	14	11	
	2	5	2	3	13	8	12	10	
	3	7	2	3	12	8	12	10	
	4	10	1	3	12	8	10	10	
	5	11	1	3	10	7	8	9	
	6	14	1	3	10	7	5	8	
47	1	5	3	3	9	18	8	18	
	2	9	3	3	9	16	7	16	
	3	11	3	3	8	15	7	13	
	4	12	3	2	6	14	7	9	
	5	17	2	2	5	13	5	9	
	6	18	2	2	4	11	5	6	
48	1	2	4	5	18	12	8	12	
	2	4	3	4	17	10	8	11	
	3	5	3	4	16	10	8	7	
	4	9	3	4	13	8	7	7	
	5	12	3	4	13	7	7	4	
	6	20	3	4	10	6	7	3	
49	1	1	4	3	13	12	14	4	
	2	2	4	3	13	11	11	4	
	3	5	4	3	12	10	10	4	
	4	8	4	2	10	10	8	4	
	5	14	4	2	8	8	4	4	
	6	19	4	1	8	8	1	4	
50	1	2	1	4	10	6	16	16	
	2	9	1	4	8	5	15	14	
	3	12	1	3	8	5	15	13	
	4	13	1	2	8	3	15	13	
	5	17	1	1	7	2	15	12	
	6	18	1	1	6	2	15	11	
51	1	4	1	5	10	13	12	9	
	2	7	1	4	10	13	12	9	
	3	8	1	4	9	13	9	9	
	4	14	1	4	9	13	8	9	
	5	15	1	4	8	13	8	8	
	6	17	1	4	8	13	6	8	
52	1	1	4	4	12	19	12	13	
	2	2	4	3	9	17	12	11	
	3	10	3	3	8	14	12	11	
	4	14	3	3	5	12	12	8	
	5	15	2	3	3	11	12	8	
	6	19	1	3	2	9	12	7	
53	1	1	5	2	13	4	17	10	
	2	5	5	2	12	3	15	8	
	3	8	5	2	12	3	13	6	
	4	11	5	2	11	3	11	4	
	5	12	5	1	10	3	8	4	
	6	13	5	1	9	3	8	2	
54	1	4	5	2	17	9	17	15	
	2	5	4	2	13	7	16	13	
	3	7	3	2	13	7	14	12	
	4	11	3	2	10	6	14	10	
	5	12	2	2	8	6	13	9	
	6	18	1	2	7	5	11	6	
55	1	5	4	2	18	11	15	17	
	2	6	4	2	17	9	12	17	
	3	7	4	2	17	9	8	15	
	4	13	4	2	16	8	7	14	
	5	19	4	1	16	8	5	13	
	6	20	4	1	16	7	1	11	
56	1	2	5	5	9	15	4	16	
	2	5	4	4	7	15	3	14	
	3	12	3	4	6	14	3	13	
	4	14	3	3	5	14	3	12	
	5	17	3	3	5	13	3	12	
	6	18	2	2	4	13	3	10	
57	1	4	2	3	15	15	18	4	
	2	5	2	3	13	14	16	4	
	3	9	2	2	12	13	16	4	
	4	11	2	2	12	13	16	3	
	5	16	1	1	11	11	15	3	
	6	19	1	1	10	11	14	3	
58	1	2	3	5	13	13	13	15	
	2	3	3	4	12	13	13	12	
	3	4	3	4	10	13	13	11	
	4	14	3	4	7	13	13	9	
	5	17	3	4	6	13	13	7	
	6	18	3	4	2	13	13	4	
59	1	3	3	4	13	10	9	9	
	2	4	3	3	13	8	7	8	
	3	5	3	3	13	6	6	7	
	4	6	3	3	13	4	5	7	
	5	11	3	3	13	3	2	4	
	6	19	3	3	13	2	1	4	
60	1	1	3	2	17	14	16	11	
	2	2	3	2	17	14	14	8	
	3	3	3	2	17	13	14	8	
	4	4	3	2	17	11	10	7	
	5	10	3	2	16	9	8	4	
	6	11	3	2	16	8	7	4	
61	1	7	3	4	13	16	15	4	
	2	11	3	3	13	16	12	4	
	3	12	3	3	11	14	12	4	
	4	13	2	3	10	13	10	4	
	5	16	1	2	9	12	8	4	
	6	17	1	2	8	10	5	4	
62	1	1	3	4	15	15	12	18	
	2	7	3	4	14	14	10	14	
	3	8	3	3	10	14	6	11	
	4	9	3	3	10	13	6	6	
	5	10	2	3	7	13	4	4	
	6	15	2	2	6	12	1	3	
63	1	2	3	3	18	20	2	16	
	2	3	2	3	13	15	1	15	
	3	11	2	3	12	14	1	14	
	4	12	2	3	8	11	1	14	
	5	15	2	2	7	10	1	12	
	6	19	2	2	3	7	1	12	
64	1	5	5	4	15	19	13	16	
	2	9	5	4	14	16	13	14	
	3	12	5	3	11	16	13	11	
	4	14	5	3	11	15	13	7	
	5	15	5	2	9	13	13	4	
	6	16	5	2	7	13	13	4	
65	1	5	4	2	17	11	14	5	
	2	11	3	2	14	9	13	5	
	3	15	3	2	11	8	12	4	
	4	16	3	2	7	7	11	3	
	5	17	1	2	7	4	9	3	
	6	18	1	2	2	3	9	2	
66	1	3	5	4	19	8	16	15	
	2	7	4	3	18	6	13	15	
	3	9	4	3	18	6	12	11	
	4	10	4	3	18	6	11	10	
	5	11	4	1	17	5	9	8	
	6	12	4	1	17	4	7	6	
67	1	2	5	5	4	7	9	14	
	2	11	4	4	4	6	9	13	
	3	13	4	4	4	5	6	13	
	4	15	3	3	3	3	6	11	
	5	16	3	3	3	2	4	9	
	6	17	3	2	3	1	2	7	
68	1	4	5	4	7	11	16	16	
	2	5	5	4	7	10	14	15	
	3	6	5	4	7	10	14	13	
	4	10	5	4	6	9	14	12	
	5	11	5	4	6	9	12	12	
	6	16	5	4	6	9	12	11	
69	1	2	3	3	11	11	17	6	
	2	5	3	2	11	10	16	6	
	3	10	3	2	10	10	12	4	
	4	12	3	2	8	10	9	4	
	5	14	3	1	6	10	6	2	
	6	17	3	1	5	10	4	2	
70	1	4	4	1	16	18	13	16	
	2	11	3	1	12	16	11	14	
	3	12	3	1	12	16	11	12	
	4	14	3	1	8	16	9	12	
	5	17	2	1	7	15	8	8	
	6	20	2	1	6	14	6	6	
71	1	6	3	4	6	16	5	15	
	2	7	2	4	5	14	5	13	
	3	9	2	4	5	14	5	12	
	4	14	2	4	4	10	5	12	
	5	15	1	4	2	8	4	10	
	6	20	1	4	1	8	4	10	
72	1	2	4	3	17	15	16	17	
	2	3	3	3	12	13	12	15	
	3	5	3	3	11	13	11	15	
	4	6	3	3	9	12	6	13	
	5	13	2	3	4	11	6	13	
	6	16	2	3	3	10	3	11	
73	1	2	4	4	19	9	11	12	
	2	7	3	3	15	9	10	10	
	3	10	3	3	13	9	10	10	
	4	12	3	2	13	9	9	10	
	5	15	3	2	10	9	9	9	
	6	16	3	1	8	9	9	8	
74	1	3	5	2	18	17	18	15	
	2	5	4	2	18	17	18	13	
	3	10	4	2	17	17	18	12	
	4	11	3	2	16	16	18	9	
	5	15	3	2	15	15	18	9	
	6	17	3	2	13	15	18	5	
75	1	2	3	5	17	13	18	14	
	2	6	2	5	16	12	16	14	
	3	11	2	5	16	11	15	13	
	4	14	2	5	15	8	14	11	
	5	15	2	5	14	7	13	9	
	6	16	2	5	14	3	13	8	
76	1	3	4	4	18	7	18	11	
	2	9	3	4	16	7	13	10	
	3	12	3	4	14	6	11	10	
	4	13	2	4	12	6	9	8	
	5	14	2	4	8	6	9	7	
	6	15	2	4	5	5	7	6	
77	1	6	1	4	12	15	17	18	
	2	13	1	3	11	14	16	18	
	3	14	1	3	8	11	16	17	
	4	15	1	2	6	9	16	15	
	5	18	1	1	6	7	15	15	
	6	19	1	1	4	4	15	14	
78	1	2	4	3	13	16	12	6	
	2	3	4	2	12	15	10	6	
	3	12	4	2	11	14	9	6	
	4	13	4	2	8	14	9	5	
	5	17	4	1	6	14	7	5	
	6	20	4	1	3	13	6	5	
79	1	3	2	4	19	18	20	9	
	2	5	2	4	16	16	16	7	
	3	6	2	4	16	13	11	6	
	4	11	2	3	15	11	10	6	
	5	16	2	2	12	9	7	5	
	6	18	2	2	11	4	5	3	
80	1	5	5	3	16	8	8	14	
	2	6	4	3	14	7	7	12	
	3	7	3	3	12	6	6	10	
	4	11	3	3	9	6	4	9	
	5	13	2	3	6	4	4	8	
	6	14	1	3	6	4	2	6	
81	1	1	5	3	14	7	12	1	
	2	6	4	3	12	6	9	1	
	3	8	4	3	12	5	8	1	
	4	9	3	3	7	3	6	1	
	5	13	3	2	6	2	5	1	
	6	14	3	2	3	2	2	1	
82	1	4	2	1	5	11	19	19	
	2	6	2	1	5	11	17	16	
	3	10	2	1	5	11	15	16	
	4	13	2	1	5	11	14	13	
	5	18	2	1	5	10	13	13	
	6	20	2	1	5	10	11	11	
83	1	3	2	3	12	13	15	6	
	2	6	1	3	12	13	14	5	
	3	8	1	2	12	12	13	5	
	4	11	1	2	12	10	13	5	
	5	15	1	1	12	10	12	4	
	6	17	1	1	12	9	12	3	
84	1	4	3	3	11	6	8	13	
	2	8	2	2	10	5	7	9	
	3	9	2	2	8	5	7	9	
	4	11	1	2	8	4	6	5	
	5	14	1	2	5	4	4	4	
	6	19	1	2	5	4	4	3	
85	1	1	4	5	18	13	19	13	
	2	2	3	4	18	10	16	10	
	3	4	3	4	16	8	15	9	
	4	14	3	4	15	6	10	9	
	5	15	3	4	13	5	7	8	
	6	18	3	4	11	2	6	6	
86	1	1	3	5	8	9	18	11	
	2	2	3	4	8	9	16	10	
	3	3	2	3	8	9	14	8	
	4	4	2	3	8	9	12	8	
	5	10	1	2	8	9	12	5	
	6	16	1	2	8	9	10	4	
87	1	2	3	2	5	8	10	17	
	2	5	3	2	4	8	8	17	
	3	6	3	2	4	7	8	17	
	4	9	2	2	4	5	6	17	
	5	11	2	1	2	3	6	17	
	6	12	2	1	2	2	4	17	
88	1	5	3	3	2	12	8	15	
	2	6	3	2	1	12	7	15	
	3	13	3	2	1	12	7	11	
	4	14	3	2	1	12	7	7	
	5	15	3	2	1	12	6	7	
	6	20	3	2	1	12	5	2	
89	1	2	1	5	18	15	17	13	
	2	6	1	4	17	12	15	11	
	3	11	1	4	17	10	12	9	
	4	13	1	3	16	10	9	6	
	5	17	1	2	16	6	8	6	
	6	18	1	2	16	5	5	4	
90	1	2	5	5	11	4	14	13	
	2	3	5	4	9	3	13	11	
	3	9	5	4	9	3	12	11	
	4	14	5	4	8	2	12	10	
	5	17	5	4	6	2	12	10	
	6	18	5	4	5	1	11	9	
91	1	3	2	4	10	19	20	15	
	2	4	2	4	8	19	20	14	
	3	9	2	4	7	19	20	13	
	4	10	2	4	6	18	20	11	
	5	13	2	4	5	18	20	10	
	6	15	2	4	4	18	20	10	
92	1	1	2	4	9	18	16	9	
	2	2	1	4	9	17	12	9	
	3	5	1	4	9	14	10	7	
	4	6	1	4	9	14	8	7	
	5	10	1	4	8	13	6	5	
	6	20	1	4	8	10	4	5	
93	1	5	3	2	11	9	13	18	
	2	9	2	2	10	9	10	18	
	3	11	2	2	10	9	8	18	
	4	12	1	2	8	9	8	18	
	5	14	1	2	8	9	4	18	
	6	20	1	2	7	9	4	18	
94	1	2	5	1	16	19	17	8	
	2	4	4	1	16	16	17	8	
	3	5	4	1	16	14	17	8	
	4	8	4	1	16	8	17	8	
	5	9	4	1	15	6	17	7	
	6	18	4	1	15	4	17	7	
95	1	3	4	5	12	16	11	13	
	2	6	3	4	11	14	11	12	
	3	7	3	3	10	12	11	12	
	4	9	3	3	10	9	10	12	
	5	13	3	2	9	7	9	12	
	6	15	3	2	9	3	9	12	
96	1	1	5	3	17	16	20	16	
	2	2	4	3	17	12	19	16	
	3	14	3	3	15	10	18	16	
	4	15	3	3	14	8	17	16	
	5	16	3	3	13	7	17	16	
	6	19	2	3	10	6	16	16	
97	1	4	4	3	14	16	12	7	
	2	8	3	2	13	16	11	6	
	3	9	2	2	13	16	11	4	
	4	11	2	2	13	15	11	4	
	5	15	1	1	13	15	11	3	
	6	16	1	1	13	15	11	2	
98	1	1	2	3	16	20	13	10	
	2	13	2	3	15	15	9	9	
	3	15	2	2	10	12	8	9	
	4	16	2	2	6	12	5	8	
	5	18	2	2	4	9	5	8	
	6	20	2	1	2	5	1	7	
99	1	3	2	4	17	18	11	18	
	2	7	2	4	15	18	9	15	
	3	12	2	4	12	18	8	13	
	4	15	2	4	11	18	7	12	
	5	17	2	4	9	18	6	9	
	6	19	2	4	7	18	5	9	
100	1	2	2	5	11	13	8	17	
	2	3	2	3	9	12	8	14	
	3	4	2	3	6	10	7	12	
	4	5	2	3	6	8	5	7	
	5	6	2	2	3	4	4	7	
	6	14	2	1	2	4	3	4	
101	1	1	4	5	10	7	13	18	
	2	3	3	4	8	6	12	12	
	3	7	3	3	8	4	9	12	
	4	9	3	3	6	3	8	7	
	5	13	2	3	6	2	5	5	
	6	19	1	2	4	1	3	2	
102	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	30	28	863	872	909	882

************************************************************************
