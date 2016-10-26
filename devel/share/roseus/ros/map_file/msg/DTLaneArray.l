;; Auto-generated. Do not edit!


(when (boundp 'map_file::DTLaneArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'DTLaneArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::DTLANEARRAY")
  (make-package "MAP_FILE::DTLANEARRAY"))

(in-package "ROS")
;;//! \htmlinclude DTLaneArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::DTLaneArray
  :super ros::object
  :slots (_header _dtlanes ))

(defmethod map_file::DTLaneArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:dtlanes __dtlanes) (let (r) (dotimes (i 0) (push (instance map_file::DTLane :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _dtlanes __dtlanes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:dtlanes
   (&rest __dtlanes)
   (if (keywordp (car __dtlanes))
       (send* _dtlanes __dtlanes)
     (progn
       (if __dtlanes (setq _dtlanes (car __dtlanes)))
       _dtlanes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/DTLane[] _dtlanes
    (apply #'+ (send-all _dtlanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/DTLane[] _dtlanes
     (write-long (length _dtlanes) s)
     (dolist (elem _dtlanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/DTLane[] _dtlanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dtlanes (let (r) (dotimes (i n) (push (instance map_file::DTLane :init) r)) r))
     (dolist (elem- _dtlanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::DTLaneArray :md5sum-) "41017b0a2f1aaea0781c37f932c0da96")
(setf (get map_file::DTLaneArray :datatype-) "map_file/DTLaneArray")
(setf (get map_file::DTLaneArray :definition-)
      "Header header
DTLane[] dtlanes

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
MSG: map_file/DTLane
int32 did
float64 dist
int32 pid
float64 dir
float64 apara
float64 r
float64 slope
float64 cant
float64 lw
float64 rw

")



(provide :map_file/DTLaneArray "41017b0a2f1aaea0781c37f932c0da96")


