;; Auto-generated. Do not edit!


(when (boundp 'runtime_manager::ConfigNdtMapping)
  (if (not (find-package "RUNTIME_MANAGER"))
    (make-package "RUNTIME_MANAGER"))
  (shadow 'ConfigNdtMapping (find-package "RUNTIME_MANAGER")))
(unless (find-package "RUNTIME_MANAGER::CONFIGNDTMAPPING")
  (make-package "RUNTIME_MANAGER::CONFIGNDTMAPPING"))

(in-package "ROS")
;;//! \htmlinclude ConfigNdtMapping.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass runtime_manager::ConfigNdtMapping
  :super ros::object
  :slots (_header _resolution _step_size _trans_eps _leaf_size ))

(defmethod runtime_manager::ConfigNdtMapping
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:resolution __resolution) 0.0)
    ((:step_size __step_size) 0.0)
    ((:trans_eps __trans_eps) 0.0)
    ((:leaf_size __leaf_size) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _resolution (float __resolution))
   (setq _step_size (float __step_size))
   (setq _trans_eps (float __trans_eps))
   (setq _leaf_size (float __leaf_size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:step_size
   (&optional __step_size)
   (if __step_size (setq _step_size __step_size)) _step_size)
  (:trans_eps
   (&optional __trans_eps)
   (if __trans_eps (setq _trans_eps __trans_eps)) _trans_eps)
  (:leaf_size
   (&optional __leaf_size)
   (if __leaf_size (setq _leaf_size __leaf_size)) _leaf_size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _resolution
    4
    ;; float32 _step_size
    4
    ;; float32 _trans_eps
    4
    ;; float32 _leaf_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _step_size
       (sys::poke _step_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _trans_eps
       (sys::poke _trans_eps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _leaf_size
       (sys::poke _leaf_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _step_size
     (setq _step_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _trans_eps
     (setq _trans_eps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _leaf_size
     (setq _leaf_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get runtime_manager::ConfigNdtMapping :md5sum-) "db6ac5faba9084d452d16ad501d6bb99")
(setf (get runtime_manager::ConfigNdtMapping :datatype-) "runtime_manager/ConfigNdtMapping")
(setf (get runtime_manager::ConfigNdtMapping :definition-)
      "Header header
float32 resolution
float32 step_size
float32 trans_eps
float32 leaf_size

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



(provide :runtime_manager/ConfigNdtMapping "db6ac5faba9084d452d16ad501d6bb99")


