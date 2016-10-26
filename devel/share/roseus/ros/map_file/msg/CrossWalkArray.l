;; Auto-generated. Do not edit!


(when (boundp 'map_file::CrossWalkArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'CrossWalkArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::CROSSWALKARRAY")
  (make-package "MAP_FILE::CROSSWALKARRAY"))

(in-package "ROS")
;;//! \htmlinclude CrossWalkArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::CrossWalkArray
  :super ros::object
  :slots (_header _cross_walks ))

(defmethod map_file::CrossWalkArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cross_walks __cross_walks) (let (r) (dotimes (i 0) (push (instance map_file::CrossWalk :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cross_walks __cross_walks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cross_walks
   (&rest __cross_walks)
   (if (keywordp (car __cross_walks))
       (send* _cross_walks __cross_walks)
     (progn
       (if __cross_walks (setq _cross_walks (car __cross_walks)))
       _cross_walks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/CrossWalk[] _cross_walks
    (apply #'+ (send-all _cross_walks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/CrossWalk[] _cross_walks
     (write-long (length _cross_walks) s)
     (dolist (elem _cross_walks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/CrossWalk[] _cross_walks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cross_walks (let (r) (dotimes (i n) (push (instance map_file::CrossWalk :init) r)) r))
     (dolist (elem- _cross_walks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::CrossWalkArray :md5sum-) "6188cab2c1e707ecf4d3644a90f0ec9b")
(setf (get map_file::CrossWalkArray :datatype-) "map_file/CrossWalkArray")
(setf (get map_file::CrossWalkArray :definition-)
      "Header header
CrossWalk[] cross_walks

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
MSG: map_file/CrossWalk
int32 id
int32 aid
int32 type
int32 bdid
int32 linkid

")



(provide :map_file/CrossWalkArray "6188cab2c1e707ecf4d3644a90f0ec9b")


