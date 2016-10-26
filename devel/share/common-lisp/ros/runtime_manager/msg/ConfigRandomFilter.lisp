; Auto-generated. Do not edit!


(cl:in-package runtime_manager-msg)


;//! \htmlinclude ConfigRandomFilter.msg.html

(cl:defclass <ConfigRandomFilter> (roslisp-msg-protocol:ros-message)
  ((sample_num
    :reader sample_num
    :initarg :sample_num
    :type cl:integer
    :initform 0))
)

(cl:defclass ConfigRandomFilter (<ConfigRandomFilter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigRandomFilter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigRandomFilter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name runtime_manager-msg:<ConfigRandomFilter> is deprecated: use runtime_manager-msg:ConfigRandomFilter instead.")))

(cl:ensure-generic-function 'sample_num-val :lambda-list '(m))
(cl:defmethod sample_num-val ((m <ConfigRandomFilter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader runtime_manager-msg:sample_num-val is deprecated.  Use runtime_manager-msg:sample_num instead.")
  (sample_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigRandomFilter>) ostream)
  "Serializes a message object of type '<ConfigRandomFilter>"
  (cl:let* ((signed (cl:slot-value msg 'sample_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigRandomFilter>) istream)
  "Deserializes a message object of type '<ConfigRandomFilter>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sample_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigRandomFilter>)))
  "Returns string type for a message object of type '<ConfigRandomFilter>"
  "runtime_manager/ConfigRandomFilter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigRandomFilter)))
  "Returns string type for a message object of type 'ConfigRandomFilter"
  "runtime_manager/ConfigRandomFilter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigRandomFilter>)))
  "Returns md5sum for a message object of type '<ConfigRandomFilter>"
  "f7a5f13bb56f09ce70b98b9912d3ba96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigRandomFilter)))
  "Returns md5sum for a message object of type 'ConfigRandomFilter"
  "f7a5f13bb56f09ce70b98b9912d3ba96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigRandomFilter>)))
  "Returns full string definition for message of type '<ConfigRandomFilter>"
  (cl:format cl:nil "int32 sample_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigRandomFilter)))
  "Returns full string definition for message of type 'ConfigRandomFilter"
  (cl:format cl:nil "int32 sample_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigRandomFilter>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigRandomFilter>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigRandomFilter
    (cl:cons ':sample_num (sample_num msg))
))
