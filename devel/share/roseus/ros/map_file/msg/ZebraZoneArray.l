;; Auto-generated. Do not edit!


(when (boundp 'map_file::ZebraZoneArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'ZebraZoneArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::ZEBRAZONEARRAY")
  (make-package "MAP_FILE::ZEBRAZONEARRAY"))

(in-package "ROS")
;;//! \htmlinclude ZebraZoneArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::ZebraZoneArray
  :super ros::object
  :slots (_header _zebra_zones ))

(defmethod map_file::ZebraZoneArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:zebra_zones __zebra_zones) (let (r) (dotimes (i 0) (push (instance map_file::ZebraZone :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _zebra_zones __zebra_zones)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:zebra_zones
   (&rest __zebra_zones)
   (if (keywordp (car __zebra_zones))
       (send* _zebra_zones __zebra_zones)
     (progn
       (if __zebra_zones (setq _zebra_zones (car __zebra_zones)))
       _zebra_zones)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/ZebraZone[] _zebra_zones
    (apply #'+ (send-all _zebra_zones :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/ZebraZone[] _zebra_zones
     (write-long (length _zebra_zones) s)
     (dolist (elem _zebra_zones)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/ZebraZone[] _zebra_zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _zebra_zones (let (r) (dotimes (i n) (push (instance map_file::ZebraZone :init) r)) r))
     (dolist (elem- _zebra_zones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::ZebraZoneArray :md5sum-) "d7f317ced40c61b50455b269c12db03b")
(setf (get map_file::ZebraZoneArray :datatype-) "map_file/ZebraZoneArray")
(setf (get map_file::ZebraZoneArray :definition-)
      "Header header
ZebraZone[] zebra_zones

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
MSG: map_file/ZebraZone
int32 id
int32 aid
int32 linkid

")



(provide :map_file/ZebraZoneArray "d7f317ced40c61b50455b269c12db03b")


