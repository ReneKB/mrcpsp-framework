## Startbefehle

--source=test.mm/test_3.mm 
--experiment=UncertaintyProactiveExperiment
--experiment=UncertaintyPredictiveExperiment
--experiment=UncertaintyReactiveExperiment
--experiment=UncertaintyHybridExperiment
--n=5
--iterations=1000
--solvers=SimulatedAnnealing
--solvers=TabuSearch
--solvers=GeneticAlgorithm
--robust=RobustMeasure4
--visualize
