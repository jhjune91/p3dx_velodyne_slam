;; Auto-generated. Do not edit!


(when (boundp 'map_file::SideWalkArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'SideWalkArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::SIDEWALKARRAY")
  (make-package "MAP_FILE::SIDEWALKARRAY"))

(in-package "ROS")
;;//! \htmlinclude SideWalkArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::SideWalkArray
  :super ros::object
  :slots (_header _side_walks ))

(defmethod map_file::SideWalkArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:side_walks __side_walks) (let (r) (dotimes (i 0) (push (instance map_file::SideWalk :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _side_walks __side_walks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:side_walks
   (&rest __side_walks)
   (if (keywordp (car __side_walks))
       (send* _side_walks __side_walks)
     (progn
       (if __side_walks (setq _side_walks (car __side_walks)))
       _side_walks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/SideWalk[] _side_walks
    (apply #'+ (send-all _side_walks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/SideWalk[] _side_walks
     (write-long (length _side_walks) s)
     (dolist (elem _side_walks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/SideWalk[] _side_walks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _side_walks (let (r) (dotimes (i n) (push (instance map_file::SideWalk :init) r)) r))
     (dolist (elem- _side_walks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::SideWalkArray :md5sum-) "fc365caef1f2cc511355b6e9f2a0c22e")
(setf (get map_file::SideWalkArray :datatype-) "map_file/SideWalkArray")
(setf (get map_file::SideWalkArray :definition-)
      "Header header
SideWalk[] side_walks

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
MSG: map_file/SideWalk
int32 id
int32 aid
int32 linkid

")



(provide :map_file/SideWalkArray "fc365caef1f2cc511355b6e9f2a0c22e")


