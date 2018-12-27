(loop for caracter across *input*
with level = 0
with total = 0
with dades = t
with ignore = nil
do (cond ((and dades (equalp caracter #\{)) (setf level (1+ level)))
 ((and dades (equalp caracter #\})) (progn (setf total (+ total level)) (setf level (1- level))))
 ((and dades (equalp caracter #\<)) (setf dades nil))
 ((and (not dades) (not ignore) (equalp caracter #\>)) (setf dades t))
 ((and (not dades) (not ignore) (equalp caracter #\!)) (setf ignore t))
 (ignore (setf ignore nil))
 (t nil))
 finally (return total))

(loop for caracter across *input*
with level = 0
with totalgarbage = 0
with dades = t
with ignore = nil
do (cond ((and dades (equalp caracter #\{)) (setf level (1+ level)))
 ((and dades (equalp caracter #\})) (setf level (1- level)))
 ((and dades (equalp caracter #\<)) (setf dades nil))
 ((and (not dades) (not ignore) (equalp caracter #\>)) (setf dades t))
 ((and (not dades) (not ignore) (equalp caracter #\!)) (setf ignore t))
 (ignore (setf ignore nil))
 ((and (not dades) (not ignore)) (setf totalgarbage (1+ totalgarbage)))
 (t nil))
 finally (return totalgarbage))

(defvar *input* "{}")
(setf *input* "{{<!>},{<!>},{<!>},{<a>}}")
(setf *input* "{{<!!>},{<a!>},{<a!>},{<ab>}}")
