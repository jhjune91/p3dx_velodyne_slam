;; Auto-generated. Do not edit!


(when (boundp 'map_file::UtilityPoleArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'UtilityPoleArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::UTILITYPOLEARRAY")
  (make-package "MAP_FILE::UTILITYPOLEARRAY"))

(in-package "ROS")
;;//! \htmlinclude UtilityPoleArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::UtilityPoleArray
  :super ros::object
  :slots (_header _utility_poles ))

(defmethod map_file::UtilityPoleArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:utility_poles __utility_poles) (let (r) (dotimes (i 0) (push (instance map_file::UtilityPole :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _utility_poles __utility_poles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:utility_poles
   (&rest __utility_poles)
   (if (keywordp (car __utility_poles))
       (send* _utility_poles __utility_poles)
     (progn
       (if __utility_poles (setq _utility_poles (car __utility_poles)))
       _utility_poles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/UtilityPole[] _utility_poles
    (apply #'+ (send-all _utility_poles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/UtilityPole[] _utility_poles
     (write-long (length _utility_poles) s)
     (dolist (elem _utility_poles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/UtilityPole[] _utility_poles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _utility_poles (let (r) (dotimes (i n) (push (instance map_file::UtilityPole :init) r)) r))
     (dolist (elem- _utility_poles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::UtilityPoleArray :md5sum-) "540e253fef7235035d3d2d74e6cb6056")
(setf (get map_file::UtilityPoleArray :datatype-) "map_file/UtilityPoleArray")
(setf (get map_file::UtilityPoleArray :definition-)
      "Header header
UtilityPole[] utility_poles

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

================================================================================
MSG: map_file/UtilityPole
int32 id
int32 plid
int32 linkid

")



(provide :map_file/UtilityPoleArray "540e253fef7235035d3d2d74e6cb6056")


