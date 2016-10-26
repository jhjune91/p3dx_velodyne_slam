; Auto-generated. Do not edit!


(cl:in-package runtime_manager-msg)


;//! \htmlinclude ConfigVelocitySet.msg.html

(cl:defclass <ConfigVelocitySet> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity_limit
    :reader velocity_limit
    :initarg :velocity_limit
    :type cl:float
    :initform 0.0)
   (others_distance
    :reader others_distance
    :initarg :others_distance
    :type cl:float
    :initform 0.0)
   (cars_distance
    :reader cars_distance
    :initarg :cars_distance
    :type cl:float
    :initform 0.0)
   (pedestrians_distance
    :reader pedestrians_distance
    :initarg :pedestrians_distance
    :type cl:float
    :initform 0.0)
   (detection_range
    :reader detection_range
    :initarg :detection_range
    :type cl:float
    :initform 0.0)
   (threshold_points
    :reader threshold_points
    :initarg :threshold_points
    :type cl:integer
    :initform 0)
   (detection_height_top
    :reader detection_height_top
    :initarg :detection_height_top
    :type cl:float
    :initform 0.0)
   (detection_height_bottom
    :reader detection_height_bottom
    :initarg :detection_height_bottom
    :type cl:float
    :initform 0.0)
   (deceleration
    :reader deceleration
    :initarg :deceleration
    :type cl:float
    :initform 0.0)
   (velocity_change_limit
    :reader velocity_change_limit
    :initarg :velocity_change_limit
    :type cl:float
    :initform 0.0)
   (velocity_offset
    :reader velocity_offset
    :initarg :velocity_offset
    :type cl:float
    :initform 0.0)
   (deceleration_range
    :reader deceleration_range
    :initarg :deceleration_range
    :type cl:float
    :initform 0.0)
   (deceleration_minimum
    :reader deceleration_minimum
    :initarg :deceleration_minimum
    :type cl:float
    :initform 0.0)
   (temporal_waypoints_size
    :reader temporal_waypoints_size
    :initarg :temporal_waypoints_size
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConfigVelocitySet (<ConfigVelocitySet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigVelocitySet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigVelocitySet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name runtime_manager-msg:<ConfigVelocitySet> is deprecated: use runtime_manager-msg:ConfigVelocitySet instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:header-val is deprecated.  Use runtime_manager-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity_limit-val :lambda-list '(m))
(cl:defmethod velocity_limit-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:velocity_limit-val is deprecated.  Use runtime_manager-msg:velocity_limit instead.")
  (velocity_limit m))

(cl:ensure-generic-function 'others_distance-val :lambda-list '(m))
(cl:defmethod others_distance-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:others_distance-val is deprecated.  Use runtime_manager-msg:others_distance instead.")
  (others_distance m))

(cl:ensure-generic-function 'cars_distance-val :lambda-list '(m))
(cl:defmethod cars_distance-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:cars_distance-val is deprecated.  Use runtime_manager-msg:cars_distance instead.")
  (cars_distance m))

(cl:ensure-generic-function 'pedestrians_distance-val :lambda-list '(m))
(cl:defmethod pedestrians_distance-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:pedestrians_distance-val is deprecated.  Use runtime_manager-msg:pedestrians_distance instead.")
  (pedestrians_distance m))

(cl:ensure-generic-function 'detection_range-val :lambda-list '(m))
(cl:defmethod detection_range-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:detection_range-val is deprecated.  Use runtime_manager-msg:detection_range instead.")
  (detection_range m))

(cl:ensure-generic-function 'threshold_points-val :lambda-list '(m))
(cl:defmethod threshold_points-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:threshold_points-val is deprecated.  Use runtime_manager-msg:threshold_points instead.")
  (threshold_points m))

(cl:ensure-generic-function 'detection_height_top-val :lambda-list '(m))
(cl:defmethod detection_height_top-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:detection_height_top-val is deprecated.  Use runtime_manager-msg:detection_height_top instead.")
  (detection_height_top m))

(cl:ensure-generic-function 'detection_height_bottom-val :lambda-list '(m))
(cl:defmethod detection_height_bottom-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:detection_height_bottom-val is deprecated.  Use runtime_manager-msg:detection_height_bottom instead.")
  (detection_height_bottom m))

(cl:ensure-generic-function 'deceleration-val :lambda-list '(m))
(cl:defmethod deceleration-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:deceleration-val is deprecated.  Use runtime_manager-msg:deceleration instead.")
  (deceleration m))

(cl:ensure-generic-function 'velocity_change_limit-val :lambda-list '(m))
(cl:defmethod velocity_change_limit-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:velocity_change_limit-val is deprecated.  Use runtime_manager-msg:velocity_change_limit instead.")
  (velocity_change_limit m))

(cl:ensure-generic-function 'velocity_offset-val :lambda-list '(m))
(cl:defmethod velocity_offset-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:velocity_offset-val is deprecated.  Use runtime_manager-msg:velocity_offset instead.")
  (velocity_offset m))

(cl:ensure-generic-function 'deceleration_range-val :lambda-list '(m))
(cl:defmethod deceleration_range-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:deceleration_range-val is deprecated.  Use runtime_manager-msg:deceleration_range instead.")
  (deceleration_range m))

(cl:ensure-generic-function 'deceleration_minimum-val :lambda-list '(m))
(cl:defmethod deceleration_minimum-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:deceleration_minimum-val is deprecated.  Use runtime_manager-msg:deceleration_minimum instead.")
  (deceleration_minimum m))

(cl:ensure-generic-function 'temporal_waypoints_size-val :lambda-list '(m))
(cl:defmethod temporal_waypoints_size-val ((m <ConfigVelocitySet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:temporal_waypoints_size-val is deprecated.  Use runtime_manager-msg:temporal_waypoints_size instead.")
  (temporal_waypoints_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigVelocitySet>) ostream)
  "Serializes a message object of type '<ConfigVelocitySet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'others_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cars_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pedestrians_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detection_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'threshold_points)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detection_height_top))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detection_height_bottom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'deceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_change_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'deceleration_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'deceleration_minimum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temporal_waypoints_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigVelocitySet>) istream)
  "Deserializes a message object of type '<ConfigVelocitySet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'others_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cars_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pedestrians_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detection_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'threshold_points) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detection_height_top) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detection_height_bottom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_change_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deceleration_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deceleration_minimum) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temporal_waypoints_size) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigVelocitySet>)))
  "Returns string type for a message object of type '<ConfigVelocitySet>"
  "runtime_manager/ConfigVelocitySet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigVelocitySet)))
  "Returns string type for a message object of type 'ConfigVelocitySet"
  "runtime_manager/ConfigVelocitySet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigVelocitySet>)))
  "Returns md5sum for a message object of type '<ConfigVelocitySet>"
  "2fb6be071c92359e50dc54e5292c4a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigVelocitySet)))
  "Returns md5sum for a message object of type 'ConfigVelocitySet"
  "2fb6be071c92359e50dc54e5292c4a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigVelocitySet>)))
  "Returns full string definition for message of type '<ConfigVelocitySet>"
  (cl:format cl:nil "Header header~%float32 velocity_limit~%float32 others_distance~%float32 cars_distance~%float32 pedestrians_distance~%float32 detection_range~%int32 threshold_points~%float32 detection_height_top~%float32 detection_height_bottom~%float32 deceleration~%float32 velocity_change_limit~%float32 velocity_offset~%float32 deceleration_range~%float32 deceleration_minimum~%float32 temporal_waypoints_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigVelocitySet)))
  "Returns full string definition for message of type 'ConfigVelocitySet"
  (cl:format cl:nil "Header header~%float32 velocity_limit~%float32 others_distance~%float32 cars_distance~%float32 pedestrians_distance~%float32 detection_range~%int32 threshold_points~%float32 detection_height_top~%float32 detection_height_bottom~%float32 deceleration~%float32 velocity_change_limit~%float32 velocity_offset~%float32 deceleration_range~%float32 deceleration_minimum~%float32 temporal_waypoints_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigVelocitySet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigVelocitySet>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigVelocitySet
    (cl:cons ':header (header msg))
    (cl:cons ':velocity_limit (velocity_limit msg))
    (cl:cons ':others_distance (others_distance msg))
    (cl:cons ':cars_distance (cars_distance msg))
    (cl:cons ':pedestrians_distance (pedestrians_distance msg))
    (cl:cons ':detection_range (detection_range msg))
    (cl:cons ':threshold_points (threshold_points msg))
    (cl:cons ':detection_height_top (detection_height_top msg))
    (cl:cons ':detection_height_bottom (detection_height_bottom msg))
    (cl:cons ':deceleration (deceleration msg))
    (cl:cons ':velocity_change_limit (velocity_change_limit msg))
    (cl:cons ':velocity_offset (velocity_offset msg))
    (cl:cons ':deceleration_range (deceleration_range msg))
    (cl:cons ':deceleration_minimum (deceleration_minimum msg))
    (cl:cons ':temporal_waypoints_size (temporal_waypoints_size msg))
))
