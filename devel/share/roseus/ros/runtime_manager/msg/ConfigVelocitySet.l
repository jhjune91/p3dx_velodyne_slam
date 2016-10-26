;; Auto-generated. Do not edit!


(when (boundp 'runtime_manager::ConfigVelocitySet)
  (if (not (find-package "RUNTIME_MANAGER"))
    (make-package "RUNTIME_MANAGER"))
  (shadow 'ConfigVelocitySet (find-package "RUNTIME_MANAGER")))
(unless (find-package "RUNTIME_MANAGER::CONFIGVELOCITYSET")
  (make-package "RUNTIME_MANAGER::CONFIGVELOCITYSET"))

(in-package "ROS")
;;//! \htmlinclude ConfigVelocitySet.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass runtime_manager::ConfigVelocitySet
  :super ros::object
  :slots (_header _velocity_limit _others_distance _cars_distance _pedestrians_distance _detection_range _threshold_points _detection_height_top _detection_height_bottom _deceleration _velocity_change_limit _velocity_offset _deceleration_range _deceleration_minimum _temporal_waypoints_size ))

(defmethod runtime_manager::ConfigVelocitySet
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity_limit __velocity_limit) 0.0)
    ((:others_distance __others_distance) 0.0)
    ((:cars_distance __cars_distance) 0.0)
    ((:pedestrians_distance __pedestrians_distance) 0.0)
    ((:detection_range __detection_range) 0.0)
    ((:threshold_points __threshold_points) 0)
    ((:detection_height_top __detection_height_top) 0.0)
    ((:detection_height_bottom __detection_height_bottom) 0.0)
    ((:deceleration __deceleration) 0.0)
    ((:velocity_change_limit __velocity_change_limit) 0.0)
    ((:velocity_offset __velocity_offset) 0.0)
    ((:deceleration_range __deceleration_range) 0.0)
    ((:deceleration_minimum __deceleration_minimum) 0.0)
    ((:temporal_waypoints_size __temporal_waypoints_size) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity_limit (float __velocity_limit))
   (setq _others_distance (float __others_distance))
   (setq _cars_distance (float __cars_distance))
   (setq _pedestrians_distance (float __pedestrians_distance))
   (setq _detection_range (float __detection_range))
   (setq _threshold_points (round __threshold_points))
   (setq _detection_height_top (float __detection_height_top))
   (setq _detection_height_bottom (float __detection_height_bottom))
   (setq _deceleration (float __deceleration))
   (setq _velocity_change_limit (float __velocity_change_limit))
   (setq _velocity_offset (float __velocity_offset))
   (setq _deceleration_range (float __deceleration_range))
   (setq _deceleration_minimum (float __deceleration_minimum))
   (setq _temporal_waypoints_size (float __temporal_waypoints_size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity_limit
   (&optional __velocity_limit)
   (if __velocity_limit (setq _velocity_limit __velocity_limit)) _velocity_limit)
  (:others_distance
   (&optional __others_distance)
   (if __others_distance (setq _others_distance __others_distance)) _others_distance)
  (:cars_distance
   (&optional __cars_distance)
   (if __cars_distance (setq _cars_distance __cars_distance)) _cars_distance)
  (:pedestrians_distance
   (&optional __pedestrians_distance)
   (if __pedestrians_distance (setq _pedestrians_distance __pedestrians_distance)) _pedestrians_distance)
  (:detection_range
   (&optional __detection_range)
   (if __detection_range (setq _detection_range __detection_range)) _detection_range)
  (:threshold_points
   (&optional __threshold_points)
   (if __threshold_points (setq _threshold_points __threshold_points)) _threshold_points)
  (:detection_height_top
   (&optional __detection_height_top)
   (if __detection_height_top (setq _detection_height_top __detection_height_top)) _detection_height_top)
  (:detection_height_bottom
   (&optional __detection_height_bottom)
   (if __detection_height_bottom (setq _detection_height_bottom __detection_height_bottom)) _detection_height_bottom)
  (:deceleration
   (&optional __deceleration)
   (if __deceleration (setq _deceleration __deceleration)) _deceleration)
  (:velocity_change_limit
   (&optional __velocity_change_limit)
   (if __velocity_change_limit (setq _velocity_change_limit __velocity_change_limit)) _velocity_change_limit)
  (:velocity_offset
   (&optional __velocity_offset)
   (if __velocity_offset (setq _velocity_offset __velocity_offset)) _velocity_offset)
  (:deceleration_range
   (&optional __deceleration_range)
   (if __deceleration_range (setq _deceleration_range __deceleration_range)) _deceleration_range)
  (:deceleration_minimum
   (&optional __deceleration_minimum)
   (if __deceleration_minimum (setq _deceleration_minimum __deceleration_minimum)) _deceleration_minimum)
  (:temporal_waypoints_size
   (&optional __temporal_waypoints_size)
   (if __temporal_waypoints_size (setq _temporal_waypoints_size __temporal_waypoints_size)) _temporal_waypoints_size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _velocity_limit
    4
    ;; float32 _others_distance
    4
    ;; float32 _cars_distance
    4
    ;; float32 _pedestrians_distance
    4
    ;; float32 _detection_range
    4
    ;; int32 _threshold_points
    4
    ;; float32 _detection_height_top
    4
    ;; float32 _detection_height_bottom
    4
    ;; float32 _deceleration
    4
    ;; float32 _velocity_change_limit
    4
    ;; float32 _velocity_offset
    4
    ;; float32 _deceleration_range
    4
    ;; float32 _deceleration_minimum
    4
    ;; float32 _temporal_waypoints_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _velocity_limit
       (sys::poke _velocity_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _others_distance
       (sys::poke _others_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cars_distance
       (sys::poke _cars_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pedestrians_distance
       (sys::poke _pedestrians_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detection_range
       (sys::poke _detection_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _threshold_points
       (write-long _threshold_points s)
     ;; float32 _detection_height_top
       (sys::poke _detection_height_top (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _detection_height_bottom
       (sys::poke _detection_height_bottom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _deceleration
       (sys::poke _deceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_change_limit
       (sys::poke _velocity_change_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_offset
       (sys::poke _velocity_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _deceleration_range
       (sys::poke _deceleration_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _deceleration_minimum
       (sys::poke _deceleration_minimum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temporal_waypoints_size
       (sys::poke _temporal_waypoints_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _velocity_limit
     (setq _velocity_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _others_distance
     (setq _others_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cars_distance
     (setq _cars_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pedestrians_distance
     (setq _pedestrians_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detection_range
     (setq _detection_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _threshold_points
     (setq _threshold_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _detection_height_top
     (setq _detection_height_top (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _detection_height_bottom
     (setq _detection_height_bottom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _deceleration
     (setq _deceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_change_limit
     (setq _velocity_change_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_offset
     (setq _velocity_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _deceleration_range
     (setq _deceleration_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _deceleration_minimum
     (setq _deceleration_minimum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temporal_waypoints_size
     (setq _temporal_waypoints_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get runtime_manager::ConfigVelocitySet :md5sum-) "2fb6be071c92359e50dc54e5292c4a1e")
(setf (get runtime_manager::ConfigVelocitySet :datatype-) "runtime_manager/ConfigVelocitySet")
(setf (get runtime_manager::ConfigVelocitySet :definition-)
      "Header header
float32 velocity_limit
float32 others_distance
float32 cars_distance
float32 pedestrians_distance
float32 detection_range
int32 threshold_points
float32 detection_height_top
float32 detection_height_bottom
float32 deceleration
float32 velocity_change_limit
float32 velocity_offset
float32 deceleration_range
float32 deceleration_minimum
float32 temporal_waypoints_size

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

")



(provide :runtime_manager/ConfigVelocitySet "2fb6be071c92359e50dc54e5292c4a1e")


