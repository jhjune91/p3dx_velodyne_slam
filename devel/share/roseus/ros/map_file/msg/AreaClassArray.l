;; Auto-generated. Do not edit!


(when (boundp 'map_file::AreaClassArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'AreaClassArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::AREACLASSARRAY")
  (make-package "MAP_FILE::AREACLASSARRAY"))

(in-package "ROS")
;;//! \htmlinclude AreaClassArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::AreaClassArray
  :super ros::object
  :slots (_header _area_classes ))

(defmethod map_file::AreaClassArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:area_classes __area_classes) (let (r) (dotimes (i 0) (push (instance map_file::AreaClass :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _area_classes __area_classes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:area_classes
   (&rest __area_classes)
   (if (keywordp (car __area_classes))
       (send* _area_classes __area_classes)
     (progn
       (if __area_classes (setq _area_classes (car __area_classes)))
       _area_classes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/AreaClass[] _area_classes
    (apply #'+ (send-all _area_classes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/AreaClass[] _area_classes
     (write-long (length _area_classes) s)
     (dolist (elem _area_classes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/AreaClass[] _area_classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _area_classes (let (r) (dotimes (i n) (push (instance map_file::AreaClass :init) r)) r))
     (dolist (elem- _area_classes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::AreaClassArray :md5sum-) "4aaa95b1c59af3143bf8643213371665")
(setf (get map_file::AreaClassArray :datatype-) "map_file/AreaClassArray")
(setf (get map_file::AreaClassArray :definition-)
      "Header header
AreaClass[] area_classes

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
MSG: map_file/AreaClass
int32 aid
int32 slid
int32 elid

")



(provide :map_file/AreaClassArray "4aaa95b1c59af3143bf8643213371665")


