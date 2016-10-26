;; Auto-generated. Do not edit!


(when (boundp 'map_file::GuardRailArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'GuardRailArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::GUARDRAILARRAY")
  (make-package "MAP_FILE::GUARDRAILARRAY"))

(in-package "ROS")
;;//! \htmlinclude GuardRailArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::GuardRailArray
  :super ros::object
  :slots (_header _guard_rails ))

(defmethod map_file::GuardRailArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:guard_rails __guard_rails) (let (r) (dotimes (i 0) (push (instance map_file::GuardRail :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _guard_rails __guard_rails)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:guard_rails
   (&rest __guard_rails)
   (if (keywordp (car __guard_rails))
       (send* _guard_rails __guard_rails)
     (progn
       (if __guard_rails (setq _guard_rails (car __guard_rails)))
       _guard_rails)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/GuardRail[] _guard_rails
    (apply #'+ (send-all _guard_rails :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/GuardRail[] _guard_rails
     (write-long (length _guard_rails) s)
     (dolist (elem _guard_rails)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/GuardRail[] _guard_rails
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _guard_rails (let (r) (dotimes (i n) (push (instance map_file::GuardRail :init) r)) r))
     (dolist (elem- _guard_rails)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::GuardRailArray :md5sum-) "5bc92836e1cfa5ff6a31a0647ec371ff")
(setf (get map_file::GuardRailArray :datatype-) "map_file/GuardRailArray")
(setf (get map_file::GuardRailArray :definition-)
      "Header header
GuardRail[] guard_rails

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
MSG: map_file/GuardRail
int32 id
int32 aid
int32 type
int32 linkid

")



(provide :map_file/GuardRailArray "5bc92836e1cfa5ff6a31a0647ec371ff")


