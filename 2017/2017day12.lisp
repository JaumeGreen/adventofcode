(defvar *input* "0 <-> 2
1 <-> 1
2 <-> 0, 3, 4
3 <-> 2, 4
4 <-> 2, 3, 6
5 <-> 6
6 <-> 4, 5
")

(defun partitionstring (linea)
  (cleanline linea))
 
(defun cleanline (linea)
  (let* ((start (search "<-> " linea))
	(longitud (length "<-> "))
	(inicial (subseq linea 0 start))
	(final (subseq linea (+ start longitud)))
	(total (concatenate 'string inicial final)))
  (mapcar #'parse-integer (split-by-one-space (remove #\, total)))))

(defun split-by-one-space (string)
    "Returns a list of substrings of string
divided by ONE space each.
Note: Two consecutive spaces will be seen as
if there were an empty string between them."
    (loop for i = 0 then (1+ j)
          as j = (position #\Space string :start i)
          collect (subseq string i j)
       while j))

(defun fill-node (cadena)
  (setf (aref nodes (car cadena)) (cdr cadena)))

(defvar nodes (make-array 2000))

(loop
     with input-stream = (make-string-input-stream *input*)
	for line =  (read-line input-stream nil 'eof) 
	while (not (equal line 'eof)) 
   do (fill-node (partitionstring line)))

(defun find-nodes (node)
