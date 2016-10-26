;; Auto-generated. Do not edit!


(when (boundp 'map_file::WhiteLineArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'WhiteLineArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::WHITELINEARRAY")
  (make-package "MAP_FILE::WHITELINEARRAY"))

(in-package "ROS")
;;//! \htmlinclude WhiteLineArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::WhiteLineArray
  :super ros::object
  :slots (_header _white_lines ))

(defmethod map_file::WhiteLineArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:white_lines __white_lines) (let (r) (dotimes (i 0) (push (instance map_file::WhiteLine :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _white_lines __white_lines)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:white_lines
   (&rest __white_lines)
   (if (keywordp (car __white_lines))
       (send* _white_lines __white_lines)
     (progn
       (if __white_lines (setq _white_lines (car __white_lines)))
       _white_lines)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/WhiteLine[] _white_lines
    (apply #'+ (send-all _white_lines :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/WhiteLine[] _white_lines
     (write-long (length _white_lines) s)
     (dolist (elem _white_lines)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/WhiteLine[] _white_lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _white_lines (let (r) (dotimes (i n) (push (instance map_file::WhiteLine :init) r)) r))
     (dolist (elem- _white_lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::WhiteLineArray :md5sum-) "7766c93f08d874dcb55e7e52a6f03269")
(setf (get map_file::WhiteLineArray :datatype-) "map_file/WhiteLineArray")
(setf (get map_file::WhiteLineArray :definition-)
      "Header header
WhiteLine[] white_lines

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
MSG: map_file/WhiteLine
int32 id
int32 lid
float64 width
int8 color
int32 type
int32 linkid

")



(provide :map_file/WhiteLineArray "7766c93f08d874dcb55e7e52a6f03269")


