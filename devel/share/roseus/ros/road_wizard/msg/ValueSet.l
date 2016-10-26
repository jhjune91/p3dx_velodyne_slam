;; Auto-generated. Do not edit!


(when (boundp 'road_wizard::ValueSet)
  (if (not (find-package "ROAD_WIZARD"))
    (make-package "ROAD_WIZARD"))
  (shadow 'ValueSet (find-package "ROAD_WIZARD")))
(unless (find-package "ROAD_WIZARD::VALUESET")
  (make-package "ROAD_WIZARD::VALUESET"))

(in-package "ROS")
;;//! \htmlinclude ValueSet.msg.html


(defclass road_wizard::ValueSet
  :super ros::object
  :slots (_center _range ))

(defmethod road_wizard::ValueSet
  (:init
   (&key
    ((:center __center) 0)
    ((:range __range) 0)
    )
   (send-super :init)
   (setq _center (round __center))
   (setq _range (round __range))
   self)
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; int32 _center
    4
    ;; int32 _range
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _center
       (write-long _center s)
     ;; int32 _range
       (write-long _range s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _center
     (setq _center (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _range
     (setq _range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get road_wizard::ValueSet :md5sum-) "281ab05df668dd70c6f78f89e9a412a0")
(setf (get road_wizard::ValueSet :datatype-) "road_wizard/ValueSet")
(setf (get road_wizard::ValueSet :definition-)
      "int32 center
int32 range

")



(provide :road_wizard/ValueSet "281ab05df668dd70c6f78f89e9a412a0")


