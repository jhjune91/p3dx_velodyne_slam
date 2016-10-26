;; Auto-generated. Do not edit!


(when (boundp 'map_file::CrossRoadArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'CrossRoadArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::CROSSROADARRAY")
  (make-package "MAP_FILE::CROSSROADARRAY"))

(in-package "ROS")
;;//! \htmlinclude CrossRoadArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::CrossRoadArray
  :super ros::object
  :slots (_header _cross_roads ))

(defmethod map_file::CrossRoadArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cross_roads __cross_roads) (let (r) (dotimes (i 0) (push (instance map_file::CrossRoad :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cross_roads __cross_roads)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cross_roads
   (&rest __cross_roads)
   (if (keywordp (car __cross_roads))
       (send* _cross_roads __cross_roads)
     (progn
       (if __cross_roads (setq _cross_roads (car __cross_roads)))
       _cross_roads)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/CrossRoad[] _cross_roads
    (apply #'+ (send-all _cross_roads :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/CrossRoad[] _cross_roads
     (write-long (length _cross_roads) s)
     (dolist (elem _cross_roads)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/CrossRoad[] _cross_roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cross_roads (let (r) (dotimes (i n) (push (instance map_file::CrossRoad :init) r)) r))
     (dolist (elem- _cross_roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::CrossRoadArray :md5sum-) "dbb684f4468deb6aedd5ef0ed27262b8")
(setf (get map_file::CrossRoadArray :datatype-) "map_file/CrossRoadArray")
(setf (get map_file::CrossRoadArray :definition-)
      "Header header
CrossRoad[] cross_roads

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
MSG: map_file/CrossRoad
int32 id
int32 aid
int32 linkid

")



(provide :map_file/CrossRoadArray "dbb684f4468deb6aedd5ef0ed27262b8")


