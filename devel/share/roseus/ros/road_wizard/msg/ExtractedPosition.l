;; Auto-generated. Do not edit!


(when (boundp 'road_wizard::ExtractedPosition)
  (if (not (find-package "ROAD_WIZARD"))
    (make-package "ROAD_WIZARD"))
  (shadow 'ExtractedPosition (find-package "ROAD_WIZARD")))
(unless (find-package "ROAD_WIZARD::EXTRACTEDPOSITION")
  (make-package "ROAD_WIZARD::EXTRACTEDPOSITION"))

(in-package "ROS")
;;//! \htmlinclude ExtractedPosition.msg.html


(defclass road_wizard::ExtractedPosition
  :super ros::object
  :slots (_signalId _u _v _radius _x _y _z _hang _type _linkId _plId ))

(defmethod road_wizard::ExtractedPosition
  (:init
   (&key
    ((:signalId __signalId) 0)
    ((:u __u) 0)
    ((:v __v) 0)
    ((:radius __radius) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:hang __hang) 0.0)
    ((:type __type) 0)
    ((:linkId __linkId) 0)
    ((:plId __plId) 0)
    )
   (send-super :init)
   (setq _signalId (round __signalId))
   (setq _u (round __u))
   (setq _v (round __v))
   (setq _radius (round __radius))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _hang (float __hang))
   (setq _type (round __type))
   (setq _linkId (round __linkId))
   (setq _plId (round __plId))
   self)
  (:signalId
   (&optional __signalId)
   (if __signalId (setq _signalId __signalId)) _signalId)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:hang
   (&optional __hang)
   (if __hang (setq _hang __hang)) _hang)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:linkId
   (&optional __linkId)
   (if __linkId (setq _linkId __linkId)) _linkId)
  (:plId
   (&optional __plId)
   (if __plId (setq _plId __plId)) _plId)
  (:serialization-length
   ()
   (+
    ;; int32 _signalId
    4
    ;; int32 _u
    4
    ;; int32 _v
    4
    ;; int32 _radius
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _hang
    8
    ;; int8 _type
    1
    ;; int32 _linkId
    4
    ;; int32 _plId
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _signalId
       (write-long _signalId s)
     ;; int32 _u
       (write-long _u s)
     ;; int32 _v
       (write-long _v s)
     ;; int32 _radius
       (write-long _radius s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hang
       (sys::poke _hang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _type
       (write-byte _type s)
     ;; int32 _linkId
       (write-long _linkId s)
     ;; int32 _plId
       (write-long _plId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _signalId
     (setq _signalId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _u
     (setq _u (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _v
     (setq _v (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _radius
     (setq _radius (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hang
     (setq _hang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int32 _linkId
     (setq _linkId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _plId
     (setq _plId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get road_wizard::ExtractedPosition :md5sum-) "0e48067eb51a80d53e09341230ac756f")
(setf (get road_wizard::ExtractedPosition :datatype-) "road_wizard/ExtractedPosition")
(setf (get road_wizard::ExtractedPosition :definition-)
      "int32 signalId
int32 u
int32 v
int32 radius
float64 x
float64 y
float64 z
float64 hang
int8 type
int32 linkId
int32 plId

")



(provide :road_wizard/ExtractedPosition "0e48067eb51a80d53e09341230ac756f")


