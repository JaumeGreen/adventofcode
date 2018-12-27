;https://ideone.com/elkDdO


(defvar *f* (make-array '(99 2)))

(defvar *i* '(0 4 1 2 2 3 4 4 6 8 8 5 10 6 12 6 14 10 16 8 18 6 20 9 22 8 24 6 26 8 28 8 30 12 32 12 34 12 36 12 38 10 40 12 42 12 44 14 46 8 48 14 50 12 52 14 54 14 58 14 60 12 62 14 64 14 66 12 68 12 72 14 74 18 76 17 86 14 88 20 92 14 94 14 96 18 98 18))

;(setq *i* '(0 3 1 2 4 4 6 4))
(defvar *l* nil)
(loop for que = *i* then (cddr que)
   until (eql que nil)
   for k = (car que)
   for v = (cadr que)
   for g = (list k v)
   do (progn (setf (aref *f* k 0) v) (setf (aref *f* k 1) 1)
                       (append g *l*)))

(defun stp (i)
  (if (eql (aref *f* i 1) 1) (* i (aref *f* i 0)) 0))

(defun nv (v to)
  (1+ (mod v (- (* to 2) 2))))

(defun fw ()
  (loop for i from 0 upto 98
     when (> (aref *f* i 0) 0) 
       do (
           setf (aref *f* i 1) 
                (nv (aref *f* i 1) 
                    (aref *f* i 0)))))

(loop for i from 0 upto 98
   summing (stp i) into conta
   do (fw)
   finally (format t "~a~%" conta))


(defvar *l* nil)
(loop for que = *i* then (cddr que)
   until (eql que nil)
   for k = (car que)
   for v = (cadr que)
   for g = (list k v)
   do (push g *l*))
(defun guard (v q)
  (when (= (mod v (- (* q 2) 2)) 0) t))
(defun traverseat (moment)
  (loop for (k v) in *l*
     when (guard (+ moment k)  v) return nil
       finally (return t)))
(loop named outer for i from 0
   ;when (= (mod i 1000) 0) do (format t "~a iterations~%" i)
     until (traverseat i)
     finally (format t "solution at ~a~%" i))
