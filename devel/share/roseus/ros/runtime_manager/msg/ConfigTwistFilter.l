;; Auto-generated. Do not edit!


(when (boundp 'runtime_manager::ConfigTwistFilter)
  (if (not (find-package "RUNTIME_MANAGER"))
    (make-package "RUNTIME_MANAGER"))
  (shadow 'ConfigTwistFilter (find-package "RUNTIME_MANAGER")))
(unless (find-package "RUNTIME_MANAGER::CONFIGTWISTFILTER")
  (make-package "RUNTIME_MANAGER::CONFIGTWISTFILTER"))

(in-package "ROS")
;;//! \htmlinclude ConfigTwistFilter.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass runtime_manager::ConfigTwistFilter
  :super ros::object
  :slots (_header _lateral_accel_limit ))

(defmethod runtime_manager::ConfigTwistFilter
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lateral_accel_limit __lateral_accel_limit) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lateral_accel_limit (float __lateral_accel_limit))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lateral_accel_limit
   (&optional __lateral_accel_limit)
   (if __lateral_accel_limit (setq _lateral_accel_limit __lateral_accel_limit)) _lateral_accel_limit)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _lateral_accel_limit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _lateral_accel_limit
       (sys::poke _lateral_accel_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _lateral_accel_limit
     (setq _lateral_accel_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get runtime_manager::ConfigTwistFilter :md5sum-) "152ca986ecec8d9c245edaa8b61fdb78")
(setf (get runtime_manager::ConfigTwistFilter :datatype-) "runtime_manager/ConfigTwistFilter")
(setf (get runtime_manager::ConfigTwistFilter :definition-)
      "Header header
float32 lateral_accel_limit

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :runtime_manager/ConfigTwistFilter "152ca986ecec8d9c245edaa8b61fdb78")


