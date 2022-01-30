# screen -S masterthesis -m -d bash ./start_evalution.sh

# n1 as important instance first priority
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n1.mm --experiment=SolverPerformanceExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n1.mm --experiment=UncertaintyProactiveExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n1.mm --experiment=UncertaintyPredictiveExperiment --robust=SF2_W1 --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=2 --source=n1.mm --experiment=UncertaintyReactiveExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm

# Solver
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=m1.mm --experiment=SolverPerformanceExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=m2.mm --experiment=SolverPerformanceExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n0.mm --experiment=SolverPerformanceExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=j20.mm --experiment=SolverPerformanceExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm

# Proactive
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=m1.mm --experiment=UncertaintyProactiveExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=m2.mm --experiment=UncertaintyProactiveExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n0.mm --experiment=UncertaintyProactiveExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm

# Predictive
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=m1.mm --experiment=UncertaintyPredictiveExperiment --robust=SF2_W1 --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=m2.mm --experiment=UncertaintyPredictiveExperiment --robust=SF2_W1 --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n0.mm --experiment=UncertaintyPredictiveExperiment --robust=SF2_W1 --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm

# Reactive
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=2 --source=m1.mm --experiment=UncertaintyReactiveExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=2 --source=m2.mm --experiment=UncertaintyReactiveExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=2 --source=n0.mm --experiment=UncertaintyReactiveExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver --solvers=HillClimbing --solvers=TabuSearch --solvers=SimulatedAnnealing --solvers=GeneticAlgorithm

# Predictive (determine robustness for n1)
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n1.mm --experiment=RobustnessExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=TabuSearch
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n1.mm --experiment=RobustnessExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=SimulatedAnnealing
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n1.mm --experiment=RobustnessExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=GeneticAlgorithm
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n1.mm --experiment=RobustnessExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=RandomSolver
java -jar rcpsp_framework-0.0.1-SNAPSHOT.jar --server --parallel --n=6 --source=n1.mm --experiment=RobustnessExperiment --iterations=500 --iterations=1000 --iterations=2500 --iterations=5000 --solvers=HillClimbing
