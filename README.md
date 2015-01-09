# CHAINS-EXAMPLE
A very simple example on using the CHAINS (https://github.com/markcox80/chains)
experiment chain system.

As a supplement to the excellent documentation at http://markcox80.github.io/chains/
chains-example.lisp demonstrates setting a very simple example consisting of
a single task - a task to mutiply a set of numbers (input) by a factor (which
is the experiment parameter).

Invoking the function (run-experiments) runs the experiment with the output
generated an experiment directory with results for each factor values as follows.

experiment/
├── chains-root.sexp
├── multiply-algorithm-2
│   ├── task-object.sexp
│   └── task-value.sexp
├── multiply-algorithm-3
│   ├── task-object.sexp
│   └── task-value.sexp
└── multiply-algorithm-4
    ├── task-object.sexp
    └── task-value.sexp