;; Auto-generated. Do not edit!


(when (boundp 'map_file::VectorClassArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'VectorClassArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::VECTORCLASSARRAY")
  (make-package "MAP_FILE::VECTORCLASSARRAY"))

(in-package "ROS")
;;//! \htmlinclude VectorClassArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::VectorClassArray
  :super ros::object
  :slots (_header _vector_classes ))

(defmethod map_file::VectorClassArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vector_classes __vector_classes) (let (r) (dotimes (i 0) (push (instance map_file::VectorClass :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vector_classes __vector_classes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vector_classes
   (&rest __vector_classes)
   (if (keywordp (car __vector_classes))
       (send* _vector_classes __vector_classes)
     (progn
       (if __vector_classes (setq _vector_classes (car __vector_classes)))
       _vector_classes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/VectorClass[] _vector_classes
    (apply #'+ (send-all _vector_classes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/VectorClass[] _vector_classes
     (write-long (length _vector_classes) s)
     (dolist (elem _vector_classes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/VectorClass[] _vector_classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vector_classes (let (r) (dotimes (i n) (push (instance map_file::VectorClass :init) r)) r))
     (dolist (elem- _vector_classes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::VectorClassArray :md5sum-) "7648d6e649dec4c08d5861f97126dee2")
(setf (get map_file::VectorClassArray :datatype-) "map_file/VectorClassArray")
(setf (get map_file::VectorClassArray :definition-)
      "Header header
VectorClass[] vector_classes

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
MSG: map_file/VectorClass
int32 vid
int32 pid
float64 hang
float64 vang

")



(provide :map_file/VectorClassArray "7648d6e649dec4c08d5861f97126dee2")


