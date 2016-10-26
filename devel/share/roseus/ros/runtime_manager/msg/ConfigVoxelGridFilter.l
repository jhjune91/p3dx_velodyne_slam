;; Auto-generated. Do not edit!


(when (boundp 'runtime_manager::ConfigVoxelGridFilter)
  (if (not (find-package "RUNTIME_MANAGER"))
    (make-package "RUNTIME_MANAGER"))
  (shadow 'ConfigVoxelGridFilter (find-package "RUNTIME_MANAGER")))
(unless (find-package "RUNTIME_MANAGER::CONFIGVOXELGRIDFILTER")
  (make-package "RUNTIME_MANAGER::CONFIGVOXELGRIDFILTER"))

(in-package "ROS")
;;//! \htmlinclude ConfigVoxelGridFilter.msg.html


(defclass runtime_manager::ConfigVoxelGridFilter
  :super ros::object
  :slots (_voxel_leaf_size ))

(defmethod runtime_manager::ConfigVoxelGridFilter
  (:init
   (&key
    ((:voxel_leaf_size __voxel_leaf_size) 0.0)
    )
   (send-super :init)
   (setq _voxel_leaf_size (float __voxel_leaf_size))
   self)
  (:voxel_leaf_size
   (&optional __voxel_leaf_size)
   (if __voxel_leaf_size (setq _voxel_leaf_size __voxel_leaf_size)) _voxel_leaf_size)
  (:serialization-length
   ()
   (+
    ;; float32 _voxel_leaf_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voxel_leaf_size
       (sys::poke _voxel_leaf_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voxel_leaf_size
     (setq _voxel_leaf_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get runtime_manager::ConfigVoxelGridFilter :md5sum-) "8a0f85a8a3309ac387103843878f3804")
(setf (get runtime_manager::ConfigVoxelGridFilter :datatype-) "runtime_manager/ConfigVoxelGridFilter")
(setf (get runtime_manager::ConfigVoxelGridFilter :definition-)
      "float32 voxel_leaf_size


")



(provide :runtime_manager/ConfigVoxelGridFilter "8a0f85a8a3309ac387103843878f3804")


