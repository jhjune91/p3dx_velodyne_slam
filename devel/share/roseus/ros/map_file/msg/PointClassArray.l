;; Auto-generated. Do not edit!


(when (boundp 'map_file::PointClassArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'PointClassArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::POINTCLASSARRAY")
  (make-package "MAP_FILE::POINTCLASSARRAY"))

(in-package "ROS")
;;//! \htmlinclude PointClassArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::PointClassArray
  :super ros::object
  :slots (_header _point_classes ))

(defmethod map_file::PointClassArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:point_classes __point_classes) (let (r) (dotimes (i 0) (push (instance map_file::PointClass :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _point_classes __point_classes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:point_classes
   (&rest __point_classes)
   (if (keywordp (car __point_classes))
       (send* _point_classes __point_classes)
     (progn
       (if __point_classes (setq _point_classes (car __point_classes)))
       _point_classes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/PointClass[] _point_classes
    (apply #'+ (send-all _point_classes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/PointClass[] _point_classes
     (write-long (length _point_classes) s)
     (dolist (elem _point_classes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/PointClass[] _point_classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_classes (let (r) (dotimes (i n) (push (instance map_file::PointClass :init) r)) r))
     (dolist (elem- _point_classes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::PointClassArray :md5sum-) "42f4de6a90fe90d129e6fa4bdbc1cee8")
(setf (get map_file::PointClassArray :datatype-) "map_file/PointClassArray")
(setf (get map_file::PointClassArray :definition-)
      "Header header
PointClass[] point_classes

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
MSG: map_file/PointClass
int32 pid
float64 b
float64 l
float64 h
float64 bx
float64 ly
int32 ref
int32 mcode1
int32 mcode2
int32 mcode3

")



(provide :map_file/PointClassArray "42f4de6a90fe90d129e6fa4bdbc1cee8")


