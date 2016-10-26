;; Auto-generated. Do not edit!


(when (boundp 'map_file::StreetLightArray)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'StreetLightArray (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::STREETLIGHTARRAY")
  (make-package "MAP_FILE::STREETLIGHTARRAY"))

(in-package "ROS")
;;//! \htmlinclude StreetLightArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass map_file::StreetLightArray
  :super ros::object
  :slots (_header _street_lights ))

(defmethod map_file::StreetLightArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:street_lights __street_lights) (let (r) (dotimes (i 0) (push (instance map_file::StreetLight :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _street_lights __street_lights)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:street_lights
   (&rest __street_lights)
   (if (keywordp (car __street_lights))
       (send* _street_lights __street_lights)
     (progn
       (if __street_lights (setq _street_lights (car __street_lights)))
       _street_lights)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; map_file/StreetLight[] _street_lights
    (apply #'+ (send-all _street_lights :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; map_file/StreetLight[] _street_lights
     (write-long (length _street_lights) s)
     (dolist (elem _street_lights)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; map_file/StreetLight[] _street_lights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _street_lights (let (r) (dotimes (i n) (push (instance map_file::StreetLight :init) r)) r))
     (dolist (elem- _street_lights)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get map_file::StreetLightArray :md5sum-) "df80e0e4fc5a6748ebd8fd7139bb9050")
(setf (get map_file::StreetLightArray :datatype-) "map_file/StreetLightArray")
(setf (get map_file::StreetLightArray :definition-)
      "Header header
StreetLight[] street_lights

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
MSG: map_file/StreetLight
int32 id
int32 lid
int32 plid
int32 linkid

")



(provide :map_file/StreetLightArray "df80e0e4fc5a6748ebd8fd7139bb9050")


