;; Auto-generated. Do not edit!


(when (boundp 'runtime_manager::ConfigDistanceFilter)
  (if (not (find-package "RUNTIME_MANAGER"))
    (make-package "RUNTIME_MANAGER"))
  (shadow 'ConfigDistanceFilter (find-package "RUNTIME_MANAGER")))
(unless (find-package "RUNTIME_MANAGER::CONFIGDISTANCEFILTER")
  (make-package "RUNTIME_MANAGER::CONFIGDISTANCEFILTER"))

(in-package "ROS")
;;//! \htmlinclude ConfigDistanceFilter.msg.html


(defclass runtime_manager::ConfigDistanceFilter
  :super ros::object
  :slots (_sample_num ))

(defmethod runtime_manager::ConfigDistanceFilter
  (:init
   (&key
    ((:sample_num __sample_num) 0)
    )
   (send-super :init)
   (setq _sample_num (round __sample_num))
   self)
  (:sample_num
   (&optional __sample_num)
   (if __sample_num (setq _sample_num __sample_num)) _sample_num)
  (:serialization-length
   ()
   (+
    ;; int32 _sample_num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sample_num
       (write-long _sample_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sample_num
     (setq _sample_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get runtime_manager::ConfigDistanceFilter :md5sum-) "f7a5f13bb56f09ce70b98b9912d3ba96")
(setf (get runtime_manager::ConfigDistanceFilter :datatype-) "runtime_manager/ConfigDistanceFilter")
(setf (get runtime_manager::ConfigDistanceFilter :definition-)
      "int32 sample_num


")



(provide :runtime_manager/ConfigDistanceFilter "f7a5f13bb56f09ce70b98b9912d3ba96")


