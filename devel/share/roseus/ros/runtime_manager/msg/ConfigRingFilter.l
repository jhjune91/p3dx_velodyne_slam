;; Auto-generated. Do not edit!


(when (boundp 'runtime_manager::ConfigRingFilter)
  (if (not (find-package "RUNTIME_MANAGER"))
    (make-package "RUNTIME_MANAGER"))
  (shadow 'ConfigRingFilter (find-package "RUNTIME_MANAGER")))
(unless (find-package "RUNTIME_MANAGER::CONFIGRINGFILTER")
  (make-package "RUNTIME_MANAGER::CONFIGRINGFILTER"))

(in-package "ROS")
;;//! \htmlinclude ConfigRingFilter.msg.html


(defclass runtime_manager::ConfigRingFilter
  :super ros::object
  :slots (_ring_div _voxel_leaf_size ))

(defmethod runtime_manager::ConfigRingFilter
  (:init
   (&key
    ((:ring_div __ring_div) 0)
    ((:voxel_leaf_size __voxel_leaf_size) 0.0)
    )
   (send-super :init)
   (setq _ring_div (round __ring_div))
   (setq _voxel_leaf_size (float __voxel_leaf_size))
   self)
  (:ring_div
   (&optional __ring_div)
   (if __ring_div (setq _ring_div __ring_div)) _ring_div)
  (:voxel_leaf_size
   (&optional __voxel_leaf_size)
   (if __voxel_leaf_size (setq _voxel_leaf_size __voxel_leaf_size)) _voxel_leaf_size)
  (:serialization-length
   ()
   (+
    ;; int32 _ring_div
    4
    ;; float32 _voxel_leaf_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ring_div
       (write-long _ring_div s)
     ;; float32 _voxel_leaf_size
       (sys::poke _voxel_leaf_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ring_div
     (setq _ring_div (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _voxel_leaf_size
     (setq _voxel_leaf_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get runtime_manager::ConfigRingFilter :md5sum-) "b2962bd173a548074fde20317048312c")
(setf (get runtime_manager::ConfigRingFilter :datatype-) "runtime_manager/ConfigRingFilter")
(setf (get runtime_manager::ConfigRingFilter :definition-)
      "int32 ring_div
float32 voxel_leaf_size


")



(provide :runtime_manager/ConfigRingFilter "b2962bd173a548074fde20317048312c")


