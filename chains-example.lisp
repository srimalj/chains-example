(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:load-system "chains"))

(defpackage "CHAINS-EXAMPLE"
  (:use "COMMON-LISP"
	"CHAINS"))

(in-package "CHAINS-EXAMPLE")

(define-task multiply-algorithm ()
  ((factor :initarg :factor :reader factor)))

(define-task-input input-numbers)

(define-operation (object multiply-algorithm)
    ((numbers input-numbers))
  (multiply-numbers numbers (factor object)))

(defun multiply-numbers (numbers factor)
  (loop
     :for number :in numbers
     :collect (* number factor)))

(define-task-input-function input-numbers
    multiply-algorithm ()
  '(1 2 3 4 5))


(define-design multiplication-experiment
    ((:documentation "Simple experiment which multiplies numbers by factors."))
  ((multiply-algorithm (:factor 2 3 4))))


(defun run-experiments ()
  (let* ((area (prepare-directory "~/chains-example/experiment/"))
	 (tree (generate 'multiplication-experiment))
	 (chains (compute-chains tree)))
    (dolist (chain chains)
      (perform area chain))))
