;; Auto-generated. Do not edit!


(when (boundp 'road_wizard::Signals)
  (if (not (find-package "ROAD_WIZARD"))
    (make-package "ROAD_WIZARD"))
  (shadow 'Signals (find-package "ROAD_WIZARD")))
(unless (find-package "ROAD_WIZARD::SIGNALS")
  (make-package "ROAD_WIZARD::SIGNALS"))

(in-package "ROS")
;;//! \htmlinclude Signals.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass road_wizard::Signals
  :super ros::object
  :slots (_header _Signals ))

(defmethod road_wizard::Signals
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Signals __Signals) (let (r) (dotimes (i 0) (push (instance road_wizard::ExtractedPosition :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _Signals __Signals)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Signals
   (&rest __Signals)
   (if (keywordp (car __Signals))
       (send* _Signals __Signals)
     (progn
       (if __Signals (setq _Signals (car __Signals)))
       _Signals)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; road_wizard/ExtractedPosition[] _Signals
    (apply #'+ (send-all _Signals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; road_wizard/ExtractedPosition[] _Signals
     (write-long (length _Signals) s)
     (dolist (elem _Signals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; road_wizard/ExtractedPosition[] _Signals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Signals (let (r) (dotimes (i n) (push (instance road_wizard::ExtractedPosition :init) r)) r))
     (dolist (elem- _Signals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get road_wizard::Signals :md5sum-) "a8533304c9ae882ac02a5af0bd7a8dcd")
(setf (get road_wizard::Signals :datatype-) "road_wizard/Signals")
(setf (get road_wizard::Signals :definition-)
      "Header header
ExtractedPosition[] Signals

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
MSG: road_wizard/ExtractedPosition
int32 signalId
int32 u
int32 v
int32 radius
float64 x
float64 y
float64 z
float64 hang
int8 type
int32 linkId
int32 plId

")



(provide :road_wizard/Signals "a8533304c9ae882ac02a5af0bd7a8dcd")


