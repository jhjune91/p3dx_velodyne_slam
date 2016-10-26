;; Auto-generated. Do not edit!


(when (boundp 'map_file::RoadMarkArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'RoadMarkArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::ROADMARKARRAY")
  (make-package "MAP_FILE::ROADMARKARRAY"))

(in-package "ROS")
;;//! \htmlinclude RoadMarkArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::RoadMarkArray
  :super ros::object
  :slots (_header _road_marks ))

(defmethod map_file::RoadMarkArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:road_marks __road_marks) (let (r) (dotimes (i 0) (push (instance map_file::RoadMark :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _road_marks __road_marks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:road_marks
   (&rest __road_marks)
   (if (keywordp (car __road_marks))
       (send* _road_marks __road_marks)
     (progn
       (if __road_marks (setq _road_marks (car __road_marks)))
       _road_marks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/RoadMark[] _road_marks
    (apply #'+ (send-all _road_marks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/RoadMark[] _road_marks
     (write-long (length _road_marks) s)
     (dolist (elem _road_marks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/RoadMark[] _road_marks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_marks (let (r) (dotimes (i n) (push (instance map_file::RoadMark :init) r)) r))
     (dolist (elem- _road_marks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::RoadMarkArray :md5sum-) "2894ff5b53ef6c901850e492b5f97de9")
(setf (get map_file::RoadMarkArray :datatype-) "map_file/RoadMarkArray")
(setf (get map_file::RoadMarkArray :definition-)
      "Header header
RoadMark[] road_marks

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
MSG: map_file/RoadMark
int32 id
int32 aid
int32 type # Don't use wide character
int32 linkid

")



(provide :map_file/RoadMarkArray "2894ff5b53ef6c901850e492b5f97de9")


