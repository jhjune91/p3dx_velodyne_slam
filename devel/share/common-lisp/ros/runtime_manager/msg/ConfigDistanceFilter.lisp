; Auto-generated. Do not edit!


(cl:in-package runtime_manager-msg)


;//! \htmlinclude ConfigDistanceFilter.msg.html

(cl:defclass <ConfigDistanceFilter> (roslisp-msg-protocol:ros-message)
  ((sample_num
    :reader sample_num
    :initarg :sample_num
    :type cl:integer
    :initform 0))
)

(cl:defclass ConfigDistanceFilter (<ConfigDistanceFilter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigDistanceFilter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigDistanceFilter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name runtime_manager-msg:<ConfigDistanceFilter> is deprecated: use runtime_manager-msg:ConfigDistanceFilter instead.")))

(cl:ensure-generic-function 'sample_num-val :lambda-list '(m))
(cl:defmethod sample_num-val ((m <ConfigDistanceFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:sample_num-val is deprecated.  Use runtime_manager-msg:sample_num instead.")
  (sample_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigDistanceFilter>) ostream)
  "Serializes a message object of type '<ConfigDistanceFilter>"
  (cl:let* ((signed (cl:slot-value msg 'sample_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigDistanceFilter>) istream)
  "Deserializes a message object of type '<ConfigDistanceFilter>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sample_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigDistanceFilter>)))
  "Returns string type for a message object of type '<ConfigDistanceFilter>"
  "runtime_manager/ConfigDistanceFilter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigDistanceFilter)))
  "Returns string type for a message object of type 'ConfigDistanceFilter"
  "runtime_manager/ConfigDistanceFilter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigDistanceFilter>)))
  "Returns md5sum for a message object of type '<ConfigDistanceFilter>"
  "f7a5f13bb56f09ce70b98b9912d3ba96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigDistanceFilter)))
  "Returns md5sum for a message object of type 'ConfigDistanceFilter"
  "f7a5f13bb56f09ce70b98b9912d3ba96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigDistanceFilter>)))
  "Returns full string definition for message of type '<ConfigDistanceFilter>"
  (cl:format cl:nil "int32 sample_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigDistanceFilter)))
  "Returns full string definition for message of type 'ConfigDistanceFilter"
  (cl:format cl:nil "int32 sample_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigDistanceFilter>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigDistanceFilter>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigDistanceFilter
    (cl:cons ':sample_num (sample_num msg))
))
