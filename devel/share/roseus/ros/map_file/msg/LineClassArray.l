;; Auto-generated. Do not edit!


(when (boundp 'map_file::LineClassArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'LineClassArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::LINECLASSARRAY")
  (make-package "MAP_FILE::LINECLASSARRAY"))

(in-package "ROS")
;;//! \htmlinclude LineClassArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::LineClassArray
  :super ros::object
  :slots (_header _line_classes ))

(defmethod map_file::LineClassArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:line_classes __line_classes) (let (r) (dotimes (i 0) (push (instance map_file::LineClass :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _line_classes __line_classes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:line_classes
   (&rest __line_classes)
   (if (keywordp (car __line_classes))
       (send* _line_classes __line_classes)
     (progn
       (if __line_classes (setq _line_classes (car __line_classes)))
       _line_classes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/LineClass[] _line_classes
    (apply #'+ (send-all _line_classes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/LineClass[] _line_classes
     (write-long (length _line_classes) s)
     (dolist (elem _line_classes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/LineClass[] _line_classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_classes (let (r) (dotimes (i n) (push (instance map_file::LineClass :init) r)) r))
     (dolist (elem- _line_classes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::LineClassArray :md5sum-) "b6617d3d076804dc44baef8560ae2d95")
(setf (get map_file::LineClassArray :datatype-) "map_file/LineClassArray")
(setf (get map_file::LineClassArray :definition-)
      "Header header
LineClass[] line_classes

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
MSG: map_file/LineClass
int32 lid
int32 bpid
int32 fpid
int32 blid
int32 flid

")



(provide :map_file/LineClassArray "b6617d3d076804dc44baef8560ae2d95")


