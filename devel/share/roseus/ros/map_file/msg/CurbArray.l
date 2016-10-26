;; Auto-generated. Do not edit!


(when (boundp 'map_file::CurbArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'CurbArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::CURBARRAY")
  (make-package "MAP_FILE::CURBARRAY"))

(in-package "ROS")
;;//! \htmlinclude CurbArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::CurbArray
  :super ros::object
  :slots (_header _curbs ))

(defmethod map_file::CurbArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:curbs __curbs) (let (r) (dotimes (i 0) (push (instance map_file::Curb :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _curbs __curbs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:curbs
   (&rest __curbs)
   (if (keywordp (car __curbs))
       (send* _curbs __curbs)
     (progn
       (if __curbs (setq _curbs (car __curbs)))
       _curbs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/Curb[] _curbs
    (apply #'+ (send-all _curbs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/Curb[] _curbs
     (write-long (length _curbs) s)
     (dolist (elem _curbs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/Curb[] _curbs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curbs (let (r) (dotimes (i n) (push (instance map_file::Curb :init) r)) r))
     (dolist (elem- _curbs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::CurbArray :md5sum-) "7d22e0722e00844cd62d0f232be98506")
(setf (get map_file::CurbArray :datatype-) "map_file/CurbArray")
(setf (get map_file::CurbArray :definition-)
      "Header header
Curb[] curbs

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
MSG: map_file/Curb
int32 id
int32 lid
float64 height
float64 width
int32 dir
int32 linkid

")



(provide :map_file/CurbArray "7d22e0722e00844cd62d0f232be98506")


