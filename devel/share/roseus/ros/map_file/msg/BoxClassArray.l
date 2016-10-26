;; Auto-generated. Do not edit!


(when (boundp 'map_file::BoxClassArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'BoxClassArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::BOXCLASSARRAY")
  (make-package "MAP_FILE::BOXCLASSARRAY"))

(in-package "ROS")
;;//! \htmlinclude BoxClassArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::BoxClassArray
  :super ros::object
  :slots (_header _box_classes ))

(defmethod map_file::BoxClassArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:box_classes __box_classes) (let (r) (dotimes (i 0) (push (instance map_file::BoxClass :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _box_classes __box_classes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:box_classes
   (&rest __box_classes)
   (if (keywordp (car __box_classes))
       (send* _box_classes __box_classes)
     (progn
       (if __box_classes (setq _box_classes (car __box_classes)))
       _box_classes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/BoxClass[] _box_classes
    (apply #'+ (send-all _box_classes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/BoxClass[] _box_classes
     (write-long (length _box_classes) s)
     (dolist (elem _box_classes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/BoxClass[] _box_classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box_classes (let (r) (dotimes (i n) (push (instance map_file::BoxClass :init) r)) r))
     (dolist (elem- _box_classes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::BoxClassArray :md5sum-) "ae45de66e3666b6e9b4f168b4102e82c")
(setf (get map_file::BoxClassArray :datatype-) "map_file/BoxClassArray")
(setf (get map_file::BoxClassArray :definition-)
      "Header header
BoxClass[] box_classes

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
MSG: map_file/BoxClass
int32 bid
int32 pid1
int32 pid2
int32 pid3
int32 pid4
float64 height

")



(provide :map_file/BoxClassArray "ae45de66e3666b6e9b4f168b4102e82c")


