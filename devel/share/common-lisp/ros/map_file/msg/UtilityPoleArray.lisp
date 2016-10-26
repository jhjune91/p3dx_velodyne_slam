; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude UtilityPoleArray.msg.html

(cl:defclass <UtilityPoleArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (utility_poles
    :reader utility_poles
    :initarg :utility_poles
    :type (cl:vector map_file-msg:UtilityPole)
   :initform (cl:make-array 0 :element-type 'map_file-msg:UtilityPole :initial-element (cl:make-instance 'map_file-msg:UtilityPole))))
)

(cl:defclass UtilityPoleArray (<UtilityPoleArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UtilityPoleArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UtilityPoleArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<UtilityPoleArray> is deprecated: use map_file-msg:UtilityPoleArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UtilityPoleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'utility_poles-val :lambda-list '(m))
(cl:defmethod utility_poles-val ((m <UtilityPoleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:utility_poles-val is deprecated.  Use map_file-msg:utility_poles instead.")
  (utility_poles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UtilityPoleArray>) ostream)
  "Serializes a message object of type '<UtilityPoleArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'utility_poles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'utility_poles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UtilityPoleArray>) istream)
  "Deserializes a message object of type '<UtilityPoleArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'utility_poles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'utility_poles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:UtilityPole))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UtilityPoleArray>)))
  "Returns string type for a message object of type '<UtilityPoleArray>"
  "map_file/UtilityPoleArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UtilityPoleArray)))
  "Returns string type for a message object of type 'UtilityPoleArray"
  "map_file/UtilityPoleArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UtilityPoleArray>)))
  "Returns md5sum for a message object of type '<UtilityPoleArray>"
  "540e253fef7235035d3d2d74e6cb6056")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UtilityPoleArray)))
  "Returns md5sum for a message object of type 'UtilityPoleArray"
  "540e253fef7235035d3d2d74e6cb6056")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UtilityPoleArray>)))
  "Returns full string definition for message of type '<UtilityPoleArray>"
  (cl:format cl:nil "Header header~%UtilityPole[] utility_poles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/UtilityPole~%int32 id~%int32 plid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UtilityPoleArray)))
  "Returns full string definition for message of type 'UtilityPoleArray"
  (cl:format cl:nil "Header header~%UtilityPole[] utility_poles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/UtilityPole~%int32 id~%int32 plid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UtilityPoleArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'utility_poles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UtilityPoleArray>))
  "Converts a ROS message object to a list"
  (cl:list 'UtilityPoleArray
    (cl:cons ':header (header msg))
    (cl:cons ':utility_poles (utility_poles msg))
))
