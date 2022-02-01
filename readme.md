# MRCPSP-Framework

## General
This MRCPSP framework has been developed for the master thesis `Entwicklung von prädiktiven und reaktiven Lösungsansätzen für das MRCPSP auf Basis von Metaheuristiken`. It main focus lies on the Multi-Mode Resource-Constrained Project Scheduling Problem (MRCPSP). This framework contains solvers to generate suitable schedules for sets of project plans. Furthermore, uncertainty may lead to undesirable delays in the plans. Therefore methods have been selected and implemented which should handle these effects. Further information of the usage and the background can be taken from the thesis itself.

## Usage of starting arguments
* `--source=<fileOrDir>`: Selection of the  benchmark set which needs to be inside the resource directory or classpath. Can be either a directory or a file. (e. g. `--source=m1` or `--source=m1/m11_1.mm`) 
* `--experiment=<experiment> (multiple usable)`: The experiment(s) which should be executed (e .g. `--experiment=SolverPerformanceExperiment`. Available:
  * `SolverPerformanceExperiment`: A comparison of a list of solvers and iterations will be made wrt. Makespan and a given robustness measurement.
  * `RobustnessExperiment`: A comparison of available robustness measurements. 50 random uncertainty scenarios will be run for each solver/iteration tuple.
  * `UncertaintyProactiveExperiment`: A list of solvers and iterations will be run without handling uncertainty. 50 random uncertainty scnarios will be run for each solver/iteration tuple.
  * `UncertaintyPredictiveExperiment`: A list of solvers and iterations will be run with handling uncertaintyp predicatively (robustness maximization). 50 random uncertainty scnarios will be run for each solver/iteration tuple.
  * `UncertaintyReactiveExperiment`: A list of solvers and iterations will be run with handling uncertaintyp reactivaly (repairing schedule at every uncertainty point with a tabu search). 12 random uncertainty scenarios will be run for each solver/iteration tuple.
* `--n=<number>`: Amount of experiments that should be executed for every solver/iteration tuple (e.g. `n=5`. 
* `--solvers=<solver> (multiple usable)`: The solvers that should be used inside the experiments (e.g. `--solvers=SimulatedAnnealing --solvers=GeneticAlgorithm`). Available:
  * `RandomSolver`: Generate random activity/mode lists
  * `HillClimbing`: Simple Local Search iterative approach that selects the best result in a neighbourhood
  * `TabuSearch`: Improved Hill Climbing algorithm that uses a Tabu List to overcome local optima
  * `SimulatedAnnealing`: Neighbourhood based algorithm that is inspired by the metallurgy
  * `GeneticAlgorithm`: A evolutionary based algorithm which uses recombination to find suitable solutions
* `--iterations (multiple usable)=<number>`: The amount of iterations that every solver should run inside the experiments (e.g. `--iterations=100 --iteration=500`).
* `--robust=<method>`: The robustness measurement that will be used. Default is SF1. (e.g. `--robust=SF2_W1`) 
  * `--SF1`: Sum of free slacks
  * `--SF2`: Sum of binary slacks
  * `--SF3`: Slack function that sums up the minimum between the slack and the part of a activity duration
  * `--SFx_W1`: where x corresponds the slack function weighed with the amount of direct successors
  * `--SFx_W9`: where x corresponds the slack function weighed with the amount of all predecessors
* `--limit=<number>`: Bound with --source. Only a specific number of benchmarks will be taken. (e. g. `--limit=50` only takes the first 50 benchmarks). For Robustness and Uncertainty experiments only 1/10 will be taken (e. g. `--limit=50` means only 5 benchmarks).  
* `--server`: Server mode. After ending the experiments, the application will be closed instantly. No custom schedule generation while running the experiments is possible. Flag which needs no input.
* `--parallel`: Experimental flag that uses multi-cores beside the experiments, like for running different solvers parallel. Give a speedup. Flag which needs no input.
* `--visualize`: Usable for SolverPerformanceExperiment-experiment. Visualize the best solution. Flag which needs no input.

## Examples
Examples which have been used for the master thesis can be found in the directory `build/start_evaluation.sh`
