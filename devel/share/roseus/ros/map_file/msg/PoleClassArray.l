;; Auto-generated. Do not edit!


(when (boundp 'map_file::PoleClassArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'PoleClassArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::POLECLASSARRAY")
  (make-package "MAP_FILE::POLECLASSARRAY"))

(in-package "ROS")
;;//! \htmlinclude PoleClassArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::PoleClassArray
  :super ros::object
  :slots (_header _pole_classes ))

(defmethod map_file::PoleClassArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pole_classes __pole_classes) (let (r) (dotimes (i 0) (push (instance map_file::PoleClass :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pole_classes __pole_classes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pole_classes
   (&rest __pole_classes)
   (if (keywordp (car __pole_classes))
       (send* _pole_classes __pole_classes)
     (progn
       (if __pole_classes (setq _pole_classes (car __pole_classes)))
       _pole_classes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/PoleClass[] _pole_classes
    (apply #'+ (send-all _pole_classes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/PoleClass[] _pole_classes
     (write-long (length _pole_classes) s)
     (dolist (elem _pole_classes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/PoleClass[] _pole_classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pole_classes (let (r) (dotimes (i n) (push (instance map_file::PoleClass :init) r)) r))
     (dolist (elem- _pole_classes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::PoleClassArray :md5sum-) "2893f59dd92b27208213dbd40aed1af3")
(setf (get map_file::PoleClassArray :datatype-) "map_file/PoleClassArray")
(setf (get map_file::PoleClassArray :definition-)
      "Header header
PoleClass[] pole_classes

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
MSG: map_file/PoleClass
int32 plid
int32 vid
float64 length
float64 dim

")



(provide :map_file/PoleClassArray "2893f59dd92b27208213dbd40aed1af3")


