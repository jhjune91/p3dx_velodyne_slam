; Auto-generated. Do not edit!


(cl:in-package runtime_manager-msg)


;//! \htmlinclude ConfigLaneRule.msg.html

(cl:defclass <ConfigLaneRule> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (number_of_zeros_ahead
    :reader number_of_zeros_ahead
    :initarg :number_of_zeros_ahead
    :type cl:integer
    :initform 0)
   (number_of_zeros_behind
    :reader number_of_zeros_behind
    :initarg :number_of_zeros_behind
    :type cl:integer
    :initform 0))
)

(cl:defclass ConfigLaneRule (<ConfigLaneRule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigLaneRule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigLaneRule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name runtime_manager-msg:<ConfigLaneRule> is deprecated: use runtime_manager-msg:ConfigLaneRule instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConfigLaneRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:header-val is deprecated.  Use runtime_manager-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <ConfigLaneRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:acceleration-val is deprecated.  Use runtime_manager-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'number_of_zeros_ahead-val :lambda-list '(m))
(cl:defmethod number_of_zeros_ahead-val ((m <ConfigLaneRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:number_of_zeros_ahead-val is deprecated.  Use runtime_manager-msg:number_of_zeros_ahead instead.")
  (number_of_zeros_ahead m))

(cl:ensure-generic-function 'number_of_zeros_behind-val :lambda-list '(m))
(cl:defmethod number_of_zeros_behind-val ((m <ConfigLaneRule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:number_of_zeros_behind-val is deprecated.  Use runtime_manager-msg:number_of_zeros_behind instead.")
  (number_of_zeros_behind m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigLaneRule>) ostream)
  "Serializes a message object of type '<ConfigLaneRule>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'number_of_zeros_ahead)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'number_of_zeros_behind)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigLaneRule>) istream)
  "Deserializes a message object of type '<ConfigLaneRule>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_of_zeros_ahead) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_of_zeros_behind) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigLaneRule>)))
  "Returns string type for a message object of type '<ConfigLaneRule>"
  "runtime_manager/ConfigLaneRule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigLaneRule)))
  "Returns string type for a message object of type 'ConfigLaneRule"
  "runtime_manager/ConfigLaneRule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigLaneRule>)))
  "Returns md5sum for a message object of type '<ConfigLaneRule>"
  "e297624d23dcc2f31641d9b1ac9dd61f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigLaneRule)))
  "Returns md5sum for a message object of type 'ConfigLaneRule"
  "e297624d23dcc2f31641d9b1ac9dd61f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigLaneRule>)))
  "Returns full string definition for message of type '<ConfigLaneRule>"
  (cl:format cl:nil "Header header~%float32 acceleration~%int32 number_of_zeros_ahead~%int32 number_of_zeros_behind~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigLaneRule)))
  "Returns full string definition for message of type 'ConfigLaneRule"
  (cl:format cl:nil "Header header~%float32 acceleration~%int32 number_of_zeros_ahead~%int32 number_of_zeros_behind~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigLaneRule>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigLaneRule>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigLaneRule
    (cl:cons ':header (header msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':number_of_zeros_ahead (number_of_zeros_ahead msg))
    (cl:cons ':number_of_zeros_behind (number_of_zeros_behind msg))
))
