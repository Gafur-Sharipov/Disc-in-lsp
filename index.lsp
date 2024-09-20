(defun disc (a b c)
  (let ((d (- (* b b) (* 4 a c))))
    (format t "Дискриминант: ~a~%" d)
    d))

(defun main (a b c)
  (let ((d (disc a b c)))
    (cond
      ((> d 0)
       (format t "2 корня: ~a и ~a~%"
               (/ (+ (- b) (sqrt d)) (* 2 a))
               (/ (- (- b) (sqrt d)) (* 2 a)))
       )
      ((= d 0)
       (format t "1 корень: ~a~%" (/ (- b) (* 2 a)))
       )
      (t
       (format t "Нет корней.~%")))))

(main 1 2 1)
(main 1 5 6)
(main 1 0 1) 
