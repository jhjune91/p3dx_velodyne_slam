;; Auto-generated. Do not edit!


(when (boundp 'map_file::VectorClass)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'VectorClass (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::VECTORCLASS")
  (make-package "MAP_FILE::VECTORCLASS"))

(in-package "ROS")
;;//! \htmlinclude VectorClass.msg.html


(defclass map_file::VectorClass
  :super ros::object
  :slots (_vid _pid _hang _vang ))

(defmethod map_file::VectorClass
  (:init
   (&key
    ((:vid __vid) 0)
    ((:pid __pid) 0)
    ((:hang __hang) 0.0)
    ((:vang __vang) 0.0)
    )
   (send-super :init)
   (setq _vid (round __vid))
   (setq _pid (round __pid))
   (setq _hang (float __hang))
   (setq _vang (float __vang))
   self)
  (:vid
   (&optional __vid)
   (if __vid (setq _vid __vid)) _vid)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:hang
   (&optional __hang)
   (if __hang (setq _hang __hang)) _hang)
  (:vang
   (&optional __vang)
   (if __vang (setq _vang __vang)) _vang)
  (:serialization-length
   ()
   (+
    ;; int32 _vid
    4
    ;; int32 _pid
    4
    ;; float64 _hang
    8
    ;; float64 _vang
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _vid
       (write-long _vid s)
     ;; int32 _pid
       (write-long _pid s)
     ;; float64 _hang
       (sys::poke _hang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vang
       (sys::poke _vang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _vid
     (setq _vid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pid
     (setq _pid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _hang
     (setq _hang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vang
     (setq _vang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get map_file::VectorClass :md5sum-) "31b12e48aa00ab978560f41960d4e3c5")
(setf (get map_file::VectorClass :datatype-) "map_file/VectorClass")
(setf (get map_file::VectorClass :definition-)
      "int32 vid
int32 pid
float64 hang
float64 vang

")



(provide :map_file/VectorClass "31b12e48aa00ab978560f41960d4e3c5")


