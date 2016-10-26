;; Auto-generated. Do not edit!


(when (boundp 'map_file::PoleArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'PoleArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::POLEARRAY")
  (make-package "MAP_FILE::POLEARRAY"))

(in-package "ROS")
;;//! \htmlinclude PoleArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::PoleArray
  :super ros::object
  :slots (_header _poles ))

(defmethod map_file::PoleArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:poles __poles) (let (r) (dotimes (i 0) (push (instance map_file::Pole :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _poles __poles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:poles
   (&rest __poles)
   (if (keywordp (car __poles))
       (send* _poles __poles)
     (progn
       (if __poles (setq _poles (car __poles)))
       _poles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/Pole[] _poles
    (apply #'+ (send-all _poles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/Pole[] _poles
     (write-long (length _poles) s)
     (dolist (elem _poles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/Pole[] _poles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poles (let (r) (dotimes (i n) (push (instance map_file::Pole :init) r)) r))
     (dolist (elem- _poles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::PoleArray :md5sum-) "aa572841e596db9644f52fb1807b3ae6")
(setf (get map_file::PoleArray :datatype-) "map_file/PoleArray")
(setf (get map_file::PoleArray :definition-)
      "Header header
Pole[] poles

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
MSG: map_file/Pole
int32 id
int32 plid
int32 linkid

")



(provide :map_file/PoleArray "aa572841e596db9644f52fb1807b3ae6")


