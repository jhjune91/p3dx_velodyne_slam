;; Auto-generated. Do not edit!


(when (boundp 'map_file::LaneArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'LaneArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::LANEARRAY")
  (make-package "MAP_FILE::LANEARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaneArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::LaneArray
  :super ros::object
  :slots (_header _lanes ))

(defmethod map_file::LaneArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance map_file::Lane :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lanes __lanes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance map_file::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::LaneArray :md5sum-) "ef0bc3357116c3774aae9f96f704f7f7")
(setf (get map_file::LaneArray :datatype-) "map_file/LaneArray")
(setf (get map_file::LaneArray :definition-)
      "Header header
Lane[] lanes

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
MSG: map_file/Lane
int32 lnid
int32 did
int32 blid
int32 flid
int32 bnid
int32 fnid
int32 jct
int32 blid2
int32 blid3
int32 blid4
int32 flid2
int32 flid3
int32 flid4
int32 clossid
float64 span
int32 lcnt
int32 lno

")



(provide :map_file/LaneArray "ef0bc3357116c3774aae9f96f704f7f7")


