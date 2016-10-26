;; Auto-generated. Do not edit!


(when (boundp 'map_file::SignalArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'SignalArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::SIGNALARRAY")
  (make-package "MAP_FILE::SIGNALARRAY"))

(in-package "ROS")
;;//! \htmlinclude SignalArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::SignalArray
  :super ros::object
  :slots (_header _signals ))

(defmethod map_file::SignalArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:signals __signals) (let (r) (dotimes (i 0) (push (instance map_file::Signal :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _signals __signals)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:signals
   (&rest __signals)
   (if (keywordp (car __signals))
       (send* _signals __signals)
     (progn
       (if __signals (setq _signals (car __signals)))
       _signals)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/Signal[] _signals
    (apply #'+ (send-all _signals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/Signal[] _signals
     (write-long (length _signals) s)
     (dolist (elem _signals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/Signal[] _signals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signals (let (r) (dotimes (i n) (push (instance map_file::Signal :init) r)) r))
     (dolist (elem- _signals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::SignalArray :md5sum-) "1503cd712f333864ff25dd6d9b7c7a79")
(setf (get map_file::SignalArray :datatype-) "map_file/SignalArray")
(setf (get map_file::SignalArray :definition-)
      "Header header
Signal[] signals

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
MSG: map_file/Signal
int32 id
int32 vid
int32 plid
int32 type
int32 linkid

")



(provide :map_file/SignalArray "1503cd712f333864ff25dd6d9b7c7a79")


