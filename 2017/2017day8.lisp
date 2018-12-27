(defvar *registerhash* (make-hash-table))

(defun get-value (register)
  (if (gethash register *registerhash*)
      (gethash register *registerhash*)
      (setf (gethash register *registerhash*) 0)))

(defun set-value (register value)
  (setf (gethash register *registerhash*) value))

(defun operationregister (operation register value)
  (progn
    (cond ((eql operation 'dec) (set-value register (- (get-value register) value)))
	((eql operation 'inc) (set-value register (+ (get-value register) value)))
	(t (format t "Unknown operation"))
	)
    (when (> (get-value register) maxvalue)  (setf maxvalue (get-value register)))))
(maphash (lambda (x y) (remhash x *registerhash*)) *registerhash*)
(defun conditionalregister (condition register value)
  (cond ((eql condition '==)
	 (eql (get-value register) value))
	((eql condition '!=)
	 (not (eql (get-value register) value)))
	(t (funcall condition (get-value register) value))))


(defmacro lineprocess (reg1 oper val1 ignore reg2 cond val2)
  (when (conditionalregister cond reg2 val2) (operationregister oper reg1 val1)))

(defvar maxvalue -100)
(defvar maxkey "")
(defun maxkeyvalue (key value)
  (when (> value maxvalue) (progn (setf maxvalue value) (setf maxkey key))))
  
