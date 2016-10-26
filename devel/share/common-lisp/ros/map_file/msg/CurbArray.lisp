; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude CurbArray.msg.html

(cl:defclass <CurbArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (curbs
    :reader curbs
    :initarg :curbs
    :type (cl:vector map_file-msg:Curb)
   :initform (cl:make-array 0 :element-type 'map_file-msg:Curb :initial-element (cl:make-instance 'map_file-msg:Curb))))
)

(cl:defclass CurbArray (<CurbArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurbArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurbArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<CurbArray> is deprecated: use map_file-msg:CurbArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CurbArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'curbs-val :lambda-list '(m))
(cl:defmethod curbs-val ((m <CurbArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:curbs-val is deprecated.  Use map_file-msg:curbs instead.")
  (curbs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurbArray>) ostream)
  "Serializes a message object of type '<CurbArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'curbs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'curbs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurbArray>) istream)
  "Deserializes a message object of type '<CurbArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'curbs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'curbs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:Curb))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurbArray>)))
  "Returns string type for a message object of type '<CurbArray>"
  "map_file/CurbArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurbArray)))
  "Returns string type for a message object of type 'CurbArray"
  "map_file/CurbArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurbArray>)))
  "Returns md5sum for a message object of type '<CurbArray>"
  "7d22e0722e00844cd62d0f232be98506")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurbArray)))
  "Returns md5sum for a message object of type 'CurbArray"
  "7d22e0722e00844cd62d0f232be98506")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurbArray>)))
  "Returns full string definition for message of type '<CurbArray>"
  (cl:format cl:nil "Header header~%Curb[] curbs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/Curb~%int32 id~%int32 lid~%float64 height~%float64 width~%int32 dir~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurbArray)))
  "Returns full string definition for message of type 'CurbArray"
  (cl:format cl:nil "Header header~%Curb[] curbs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/Curb~%int32 id~%int32 lid~%float64 height~%float64 width~%int32 dir~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurbArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'curbs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurbArray>))
  "Converts a ROS message object to a list"
  (cl:list 'CurbArray
    (cl:cons ':header (header msg))
    (cl:cons ':curbs (curbs msg))
))
