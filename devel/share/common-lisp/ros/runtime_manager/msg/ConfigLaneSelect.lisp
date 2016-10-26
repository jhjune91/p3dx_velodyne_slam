; Auto-generated. Do not edit!


(cl:in-package runtime_manager-msg)


;//! \htmlinclude ConfigLaneSelect.msg.html

(cl:defclass <ConfigLaneSelect> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0))
)

(cl:defclass ConfigLaneSelect (<ConfigLaneSelect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigLaneSelect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigLaneSelect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name runtime_manager-msg:<ConfigLaneSelect> is deprecated: use runtime_manager-msg:ConfigLaneSelect instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConfigLaneSelect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:header-val is deprecated.  Use runtime_manager-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <ConfigLaneSelect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:number-val is deprecated.  Use runtime_manager-msg:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigLaneSelect>) ostream)
  "Serializes a message object of type '<ConfigLaneSelect>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigLaneSelect>) istream)
  "Deserializes a message object of type '<ConfigLaneSelect>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigLaneSelect>)))
  "Returns string type for a message object of type '<ConfigLaneSelect>"
  "runtime_manager/ConfigLaneSelect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigLaneSelect)))
  "Returns string type for a message object of type 'ConfigLaneSelect"
  "runtime_manager/ConfigLaneSelect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigLaneSelect>)))
  "Returns md5sum for a message object of type '<ConfigLaneSelect>"
  "f2a7352c4a18e4ec5cf8455946a59204")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigLaneSelect)))
  "Returns md5sum for a message object of type 'ConfigLaneSelect"
  "f2a7352c4a18e4ec5cf8455946a59204")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigLaneSelect>)))
  "Returns full string definition for message of type '<ConfigLaneSelect>"
  (cl:format cl:nil "Header header~%int32 number~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigLaneSelect)))
  "Returns full string definition for message of type 'ConfigLaneSelect"
  (cl:format cl:nil "Header header~%int32 number~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigLaneSelect>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigLaneSelect>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigLaneSelect
    (cl:cons ':header (header msg))
    (cl:cons ':number (number msg))
))
