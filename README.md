# CHAINS-EXAMPLE
CHAINS-EXAMPLE is a  very simple example on using the CHAINS (https://github.com/markcox80/chains)
experiment chain system.

As a supplement to the excellent documentation at http://markcox80.github.io/chains/
chains-example.lisp demonstrates a very simple example consisting of a single task.
A task to multiply a set of numbers (input) by a factor (which is an experiment parameter).

The function (run-experiments) shows how to execute the experiment.
Output is generated in the experiment directory.

Output for with each factor is stored in the sub-directories: 
 multiply-algorithm-2 multiply-algorithm-3 multiply-algorithm-4

Each sub-directory contains task-value.sexp which contains the task result, and task-object.sexp
which contains the serialised task object.

# ACKNOWLEDGEMENTS
Thank you to Mark Cox for writing CHAINS.