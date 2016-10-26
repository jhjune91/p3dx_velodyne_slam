;; Auto-generated. Do not edit!


(when (boundp 'map_file::StopLineArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'StopLineArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::STOPLINEARRAY")
  (make-package "MAP_FILE::STOPLINEARRAY"))

(in-package "ROS")
;;//! \htmlinclude StopLineArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::StopLineArray
  :super ros::object
  :slots (_header _stop_lines ))

(defmethod map_file::StopLineArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stop_lines __stop_lines) (let (r) (dotimes (i 0) (push (instance map_file::StopLine :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _stop_lines __stop_lines)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stop_lines
   (&rest __stop_lines)
   (if (keywordp (car __stop_lines))
       (send* _stop_lines __stop_lines)
     (progn
       (if __stop_lines (setq _stop_lines (car __stop_lines)))
       _stop_lines)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/StopLine[] _stop_lines
    (apply #'+ (send-all _stop_lines :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/StopLine[] _stop_lines
     (write-long (length _stop_lines) s)
     (dolist (elem _stop_lines)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/StopLine[] _stop_lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_lines (let (r) (dotimes (i n) (push (instance map_file::StopLine :init) r)) r))
     (dolist (elem- _stop_lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::StopLineArray :md5sum-) "650b175b9f7ac265cb8cdd7d2c79e2f8")
(setf (get map_file::StopLineArray :datatype-) "map_file/StopLineArray")
(setf (get map_file::StopLineArray :definition-)
      "Header header
StopLine[] stop_lines

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
MSG: map_file/StopLine
int32 id
int32 lid
int32 tlid
int32 signid
int32 linkid

")



(provide :map_file/StopLineArray "650b175b9f7ac265cb8cdd7d2c79e2f8")


