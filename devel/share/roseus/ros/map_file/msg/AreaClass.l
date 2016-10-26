;; Auto-generated. Do not edit!


(when (boundp 'map_file::AreaClass)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'AreaClass (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::AREACLASS")
  (make-package "MAP_FILE::AREACLASS"))

(in-package "ROS")
;;//! \htmlinclude AreaClass.msg.html


(defclass map_file::AreaClass
  :super ros::object
  :slots (_aid _slid _elid ))

(defmethod map_file::AreaClass
  (:init
   (&key
    ((:aid __aid) 0)
    ((:slid __slid) 0)
    ((:elid __elid) 0)
    )
   (send-super :init)
   (setq _aid (round __aid))
   (setq _slid (round __slid))
   (setq _elid (round __elid))
   self)
  (:aid
   (&optional __aid)
   (if __aid (setq _aid __aid)) _aid)
  (:slid
   (&optional __slid)
   (if __slid (setq _slid __slid)) _slid)
  (:elid
   (&optional __elid)
   (if __elid (setq _elid __elid)) _elid)
  (:serialization-length
   ()
   (+
    ;; int32 _aid
    4
    ;; int32 _slid
    4
    ;; int32 _elid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _aid
       (write-long _aid s)
     ;; int32 _slid
       (write-long _slid s)
     ;; int32 _elid
       (write-long _elid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _aid
     (setq _aid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _slid
     (setq _slid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _elid
     (setq _elid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get map_file::AreaClass :md5sum-) "54e3c8d0cac454f97de72b3d7d888691")
(setf (get map_file::AreaClass :datatype-) "map_file/AreaClass")
(setf (get map_file::AreaClass :definition-)
      "int32 aid
int32 slid
int32 elid

")



(provide :map_file/AreaClass "54e3c8d0cac454f97de72b3d7d888691")


