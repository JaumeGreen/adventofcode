(setf *input* (make-array 5 :initial-contents '( 0 1 2 3 4)))

(defvar *input* (make-array 256))

(loop for i from 0 to 255
     do (setf (aref *input* i) i))

(loop for length in '(165 1 255 31 87 52 24 113 0 91 148 254 158 2 73 153)
     for prevlength in '(0 165 1 255 31 87 52 24 113 0 91 148 254 158 2 73 153)
   for skip = 0 then (1+ skip)
   for position = 0 then (realposition (+ (1- prevlength) position skip) 256)
   do (reversepartial *input* position length))

;7310 too high
;6162 too high

(defun realposition (position total)
  (mod position total))

(defun reversepartial (array init length)
  (loop for i from init to (+ (1- length) init)
       for i2 from (+ (1- length) init) downto init
     for j = (realposition i (length array))
     for k = (realposition i2 (length array))
     for temp = (aref array j)
       until (>= i i2)
     do (progn
	  ;(format t "change ~a[~a] with ~a[~a], " j (aref array j) k (aref array k))
	  (setf (aref array j) (aref array k))
	       (setf (aref array k) temp)
	       ;(format t "min ~a max ~a value1 ~a value2 ~a~%" j k (aref array j) (aref array k))
	       )
       ;finally (format t "end result ~a~%" array)
))

(loop
    for i2 from (+ 3 0) downto (floor (/ (+ 3 0) 2 ))
     for k = (realposition i2)
     do (format t "~a ~a~%" k i2))

(loop for length in '(3 4 1 5)
     for prevlength in '(0 3 4 1 5)
   for skip = 0 then (1+ skip)
   for position = 0 then (realposition (+ prevlength position skip) 5)
   do (progn
       (format t "Step ~a, length ~a, skip ~a, prevlength ~a, input ~a, " (1+ skip) length skip prevlength *input*)
       (reversepartial *input* position length)
       (format t "result ~a~%" *input*)))
