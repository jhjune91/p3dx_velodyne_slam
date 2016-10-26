;; Auto-generated. Do not edit!


(when (boundp 'runtime_manager::ConfigLaneRule)
  (if (not (find-package "RUNTIME_MANAGER"))
    (make-package "RUNTIME_MANAGER"))
  (shadow 'ConfigLaneRule (find-package "RUNTIME_MANAGER")))
(unless (find-package "RUNTIME_MANAGER::CONFIGLANERULE")
  (make-package "RUNTIME_MANAGER::CONFIGLANERULE"))

(in-package "ROS")
;;//! \htmlinclude ConfigLaneRule.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass runtime_manager::ConfigLaneRule
  :super ros::object
  :slots (_header _acceleration _number_of_zeros_ahead _number_of_zeros_behind ))

(defmethod runtime_manager::ConfigLaneRule
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:acceleration __acceleration) 0.0)
    ((:number_of_zeros_ahead __number_of_zeros_ahead) 0)
    ((:number_of_zeros_behind __number_of_zeros_behind) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _acceleration (float __acceleration))
   (setq _number_of_zeros_ahead (round __number_of_zeros_ahead))
   (setq _number_of_zeros_behind (round __number_of_zeros_behind))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:number_of_zeros_ahead
   (&optional __number_of_zeros_ahead)
   (if __number_of_zeros_ahead (setq _number_of_zeros_ahead __number_of_zeros_ahead)) _number_of_zeros_ahead)
  (:number_of_zeros_behind
   (&optional __number_of_zeros_behind)
   (if __number_of_zeros_behind (setq _number_of_zeros_behind __number_of_zeros_behind)) _number_of_zeros_behind)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _acceleration
    4
    ;; int32 _number_of_zeros_ahead
    4
    ;; int32 _number_of_zeros_behind
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _number_of_zeros_ahead
       (write-long _number_of_zeros_ahead s)
     ;; int32 _number_of_zeros_behind
       (write-long _number_of_zeros_behind s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _acceleration
     (setq _acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _number_of_zeros_ahead
     (setq _number_of_zeros_ahead (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _number_of_zeros_behind
     (setq _number_of_zeros_behind (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get runtime_manager::ConfigLaneRule :md5sum-) "e297624d23dcc2f31641d9b1ac9dd61f")
(setf (get runtime_manager::ConfigLaneRule :datatype-) "runtime_manager/ConfigLaneRule")
(setf (get runtime_manager::ConfigLaneRule :definition-)
      "Header header
float32 acceleration
int32 number_of_zeros_ahead
int32 number_of_zeros_behind

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



(provide :runtime_manager/ConfigLaneRule "e297624d23dcc2f31641d9b1ac9dd61f")


