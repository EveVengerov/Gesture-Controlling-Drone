;; Auto-generated. Do not edit!


(when (boundp 'plutodrone::PlutoMsgAP)
  (if (not (find-package "PLUTODRONE"))
    (make-package "PLUTODRONE"))
  (shadow 'PlutoMsgAP (find-package "PLUTODRONE")))
(unless (find-package "PLUTODRONE::PLUTOMSGAP")
  (make-package "PLUTODRONE::PLUTOMSGAP"))

(in-package "ROS")
;;//! \htmlinclude PlutoMsgAP.msg.html


(defclass plutodrone::PlutoMsgAP
  :super ros::object
  :slots (_rcRoll _rcPitch _rcYaw _rcThrottle _plutoIndex _commandType ))

(defmethod plutodrone::PlutoMsgAP
  (:init
   (&key
    ((:rcRoll __rcRoll) 0)
    ((:rcPitch __rcPitch) 0)
    ((:rcYaw __rcYaw) 0)
    ((:rcThrottle __rcThrottle) 0)
    ((:plutoIndex __plutoIndex) 0)
    ((:commandType __commandType) 0)
    )
   (send-super :init)
   (setq _rcRoll (round __rcRoll))
   (setq _rcPitch (round __rcPitch))
   (setq _rcYaw (round __rcYaw))
   (setq _rcThrottle (round __rcThrottle))
   (setq _plutoIndex (round __plutoIndex))
   (setq _commandType (round __commandType))
   self)
  (:rcRoll
   (&optional __rcRoll)
   (if __rcRoll (setq _rcRoll __rcRoll)) _rcRoll)
  (:rcPitch
   (&optional __rcPitch)
   (if __rcPitch (setq _rcPitch __rcPitch)) _rcPitch)
  (:rcYaw
   (&optional __rcYaw)
   (if __rcYaw (setq _rcYaw __rcYaw)) _rcYaw)
  (:rcThrottle
   (&optional __rcThrottle)
   (if __rcThrottle (setq _rcThrottle __rcThrottle)) _rcThrottle)
  (:plutoIndex
   (&optional __plutoIndex)
   (if __plutoIndex (setq _plutoIndex __plutoIndex)) _plutoIndex)
  (:commandType
   (&optional __commandType)
   (if __commandType (setq _commandType __commandType)) _commandType)
  (:serialization-length
   ()
   (+
    ;; int64 _rcRoll
    8
    ;; int64 _rcPitch
    8
    ;; int64 _rcYaw
    8
    ;; int64 _rcThrottle
    8
    ;; int64 _plutoIndex
    8
    ;; int8 _commandType
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _rcRoll
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcRoll (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcRoll) (= (length (_rcRoll . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcRoll . bv) 0) 0) s)
              (write-long (ash (elt (_rcRoll . bv) 1) -1) s))
             ((and (class _rcRoll) (= (length (_rcRoll . bv)) 1)) ;; big1
              (write-long (elt (_rcRoll . bv) 0) s)
              (write-long (if (>= _rcRoll 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcRoll s)(write-long (if (>= _rcRoll 0) 0 #xffffffff) s)))
     ;; int64 _rcPitch
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcPitch (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcPitch) (= (length (_rcPitch . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcPitch . bv) 0) 0) s)
              (write-long (ash (elt (_rcPitch . bv) 1) -1) s))
             ((and (class _rcPitch) (= (length (_rcPitch . bv)) 1)) ;; big1
              (write-long (elt (_rcPitch . bv) 0) s)
              (write-long (if (>= _rcPitch 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcPitch s)(write-long (if (>= _rcPitch 0) 0 #xffffffff) s)))
     ;; int64 _rcYaw
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcYaw (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcYaw) (= (length (_rcYaw . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcYaw . bv) 0) 0) s)
              (write-long (ash (elt (_rcYaw . bv) 1) -1) s))
             ((and (class _rcYaw) (= (length (_rcYaw . bv)) 1)) ;; big1
              (write-long (elt (_rcYaw . bv) 0) s)
              (write-long (if (>= _rcYaw 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcYaw s)(write-long (if (>= _rcYaw 0) 0 #xffffffff) s)))
     ;; int64 _rcThrottle
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rcThrottle (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rcThrottle) (= (length (_rcThrottle . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rcThrottle . bv) 0) 0) s)
              (write-long (ash (elt (_rcThrottle . bv) 1) -1) s))
             ((and (class _rcThrottle) (= (length (_rcThrottle . bv)) 1)) ;; big1
              (write-long (elt (_rcThrottle . bv) 0) s)
              (write-long (if (>= _rcThrottle 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rcThrottle s)(write-long (if (>= _rcThrottle 0) 0 #xffffffff) s)))
     ;; int64 _plutoIndex
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _plutoIndex (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _plutoIndex) (= (length (_plutoIndex . bv)) 2)) ;; bignum
              (write-long (ash (elt (_plutoIndex . bv) 0) 0) s)
              (write-long (ash (elt (_plutoIndex . bv) 1) -1) s))
             ((and (class _plutoIndex) (= (length (_plutoIndex . bv)) 1)) ;; big1
              (write-long (elt (_plutoIndex . bv) 0) s)
              (write-long (if (>= _plutoIndex 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _plutoIndex s)(write-long (if (>= _plutoIndex 0) 0 #xffffffff) s)))
     ;; int8 _commandType
       (write-byte _commandType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _rcRoll
#+(or :alpha :irix6 :x86_64)
      (setf _rcRoll (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcRoll (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcPitch
#+(or :alpha :irix6 :x86_64)
      (setf _rcPitch (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcPitch (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcYaw
#+(or :alpha :irix6 :x86_64)
      (setf _rcYaw (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcYaw (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rcThrottle
#+(or :alpha :irix6 :x86_64)
      (setf _rcThrottle (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rcThrottle (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _plutoIndex
#+(or :alpha :irix6 :x86_64)
      (setf _plutoIndex (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _plutoIndex (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int8 _commandType
     (setq _commandType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _commandType 127) (setq _commandType (- _commandType 256)))
   ;;
   self)
  )

(setf (get plutodrone::PlutoMsgAP :md5sum-) "9d14e97c50a8a33e16533e3af6806fc5")
(setf (get plutodrone::PlutoMsgAP :datatype-) "plutodrone/PlutoMsgAP")
(setf (get plutodrone::PlutoMsgAP :definition-)
      "int64 rcRoll
int64 rcPitch
int64 rcYaw
int64 rcThrottle
int64 plutoIndex
int8 commandType

")



(provide :plutodrone/PlutoMsgAP "9d14e97c50a8a33e16533e3af6806fc5")


