;; Auto-generated. Do not edit!


(when (boundp 'map_file::RoadEdgeArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'RoadEdgeArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::ROADEDGEARRAY")
  (make-package "MAP_FILE::ROADEDGEARRAY"))

(in-package "ROS")
;;//! \htmlinclude RoadEdgeArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::RoadEdgeArray
  :super ros::object
  :slots (_header _road_edges ))

(defmethod map_file::RoadEdgeArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:road_edges __road_edges) (let (r) (dotimes (i 0) (push (instance map_file::RoadEdge :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _road_edges __road_edges)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:road_edges
   (&rest __road_edges)
   (if (keywordp (car __road_edges))
       (send* _road_edges __road_edges)
     (progn
       (if __road_edges (setq _road_edges (car __road_edges)))
       _road_edges)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/RoadEdge[] _road_edges
    (apply #'+ (send-all _road_edges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/RoadEdge[] _road_edges
     (write-long (length _road_edges) s)
     (dolist (elem _road_edges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/RoadEdge[] _road_edges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_edges (let (r) (dotimes (i n) (push (instance map_file::RoadEdge :init) r)) r))
     (dolist (elem- _road_edges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::RoadEdgeArray :md5sum-) "8bded8ef8aa85d15d445b67278f73afe")
(setf (get map_file::RoadEdgeArray :datatype-) "map_file/RoadEdgeArray")
(setf (get map_file::RoadEdgeArray :definition-)
      "Header header
RoadEdge[] road_edges

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
MSG: map_file/RoadEdge
int32 id
int32 lid
int32 linkid

")



(provide :map_file/RoadEdgeArray "8bded8ef8aa85d15d445b67278f73afe")


