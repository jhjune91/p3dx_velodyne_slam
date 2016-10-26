;; Auto-generated. Do not edit!


(when (boundp 'map_file::GutterArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'GutterArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::GUTTERARRAY")
  (make-package "MAP_FILE::GUTTERARRAY"))

(in-package "ROS")
;;//! \htmlinclude GutterArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::GutterArray
  :super ros::object
  :slots (_header _gutters ))

(defmethod map_file::GutterArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gutters __gutters) (let (r) (dotimes (i 0) (push (instance map_file::Gutter :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gutters __gutters)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gutters
   (&rest __gutters)
   (if (keywordp (car __gutters))
       (send* _gutters __gutters)
     (progn
       (if __gutters (setq _gutters (car __gutters)))
       _gutters)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/Gutter[] _gutters
    (apply #'+ (send-all _gutters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/Gutter[] _gutters
     (write-long (length _gutters) s)
     (dolist (elem _gutters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/Gutter[] _gutters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gutters (let (r) (dotimes (i n) (push (instance map_file::Gutter :init) r)) r))
     (dolist (elem- _gutters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::GutterArray :md5sum-) "741b0fbfa3529ce967a1caa8c7d6a934")
(setf (get map_file::GutterArray :datatype-) "map_file/GutterArray")
(setf (get map_file::GutterArray :definition-)
      "Header header
Gutter[] gutters

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
MSG: map_file/Gutter
int32 id
int32 aid
int32 type
int32 linkid

")



(provide :map_file/GutterArray "741b0fbfa3529ce967a1caa8c7d6a934")


