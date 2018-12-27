;https://ideone.com/sUeY11

(defun ga (pr) (mod (* pr 16807) 2147483647))
(defun gb (pr) (mod (* pr 48271) 2147483647))

;(loop repeat 40000000
;for i = (ga 722) then (ga i)
;for j = (gb 354) then (gb j)
;counting (= (mod j 65536) (mod i 65536)) into igu
;do (format t "~a ~a ~a~%" i j igu)
;finally (format t "~a~%" igu))

(defun ga2 (pr)
(loop for i = (ga pr) then (ga i)
when (= (mod i 4) 0) return i))

(defun gb2 (pr)
(loop for i = (gb pr) then (gb i)
when (= (mod i 8) 0) return i))

(loop repeat 5000000
for i = (ga2 722) then (ga2 i)
for j = (gb2 354) then (gb2 j)
counting (= (mod j 65536) (mod i 65536)) into igu
;do (format t "~a ~a ~a~%" i j igu)
finally (format t "~a~%" igu))