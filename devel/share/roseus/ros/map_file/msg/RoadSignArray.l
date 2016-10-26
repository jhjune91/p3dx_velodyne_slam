;; Auto-generated. Do not edit!


(when (boundp 'map_file::RoadSignArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'RoadSignArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::ROADSIGNARRAY")
  (make-package "MAP_FILE::ROADSIGNARRAY"))

(in-package "ROS")
;;//! \htmlinclude RoadSignArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::RoadSignArray
  :super ros::object
  :slots (_header _road_signs ))

(defmethod map_file::RoadSignArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:road_signs __road_signs) (let (r) (dotimes (i 0) (push (instance map_file::RoadSign :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _road_signs __road_signs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:road_signs
   (&rest __road_signs)
   (if (keywordp (car __road_signs))
       (send* _road_signs __road_signs)
     (progn
       (if __road_signs (setq _road_signs (car __road_signs)))
       _road_signs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/RoadSign[] _road_signs
    (apply #'+ (send-all _road_signs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/RoadSign[] _road_signs
     (write-long (length _road_signs) s)
     (dolist (elem _road_signs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/RoadSign[] _road_signs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_signs (let (r) (dotimes (i n) (push (instance map_file::RoadSign :init) r)) r))
     (dolist (elem- _road_signs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::RoadSignArray :md5sum-) "5fc3a92e0b52ddba35cc5503e33f4a6d")
(setf (get map_file::RoadSignArray :datatype-) "map_file/RoadSignArray")
(setf (get map_file::RoadSignArray :definition-)
      "Header header
RoadSign[] road_signs

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
MSG: map_file/RoadSign
int32 id
int32 vid
int32 plid
int32 type # Don't use wide character
int32 linkid

")



(provide :map_file/RoadSignArray "5fc3a92e0b52ddba35cc5503e33f4a6d")


