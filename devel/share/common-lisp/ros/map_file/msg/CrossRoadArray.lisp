; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude CrossRoadArray.msg.html

(cl:defclass <CrossRoadArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cross_roads
    :reader cross_roads
    :initarg :cross_roads
    :type (cl:vector map_file-msg:CrossRoad)
   :initform (cl:make-array 0 :element-type 'map_file-msg:CrossRoad :initial-element (cl:make-instance 'map_file-msg:CrossRoad))))
)

(cl:defclass CrossRoadArray (<CrossRoadArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CrossRoadArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CrossRoadArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<CrossRoadArray> is deprecated: use map_file-msg:CrossRoadArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CrossRoadArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cross_roads-val :lambda-list '(m))
(cl:defmethod cross_roads-val ((m <CrossRoadArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:cross_roads-val is deprecated.  Use map_file-msg:cross_roads instead.")
  (cross_roads m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CrossRoadArray>) ostream)
  "Serializes a message object of type '<CrossRoadArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cross_roads))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cross_roads))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CrossRoadArray>) istream)
  "Deserializes a message object of type '<CrossRoadArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cross_roads) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cross_roads)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:CrossRoad))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CrossRoadArray>)))
  "Returns string type for a message object of type '<CrossRoadArray>"
  "map_file/CrossRoadArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CrossRoadArray)))
  "Returns string type for a message object of type 'CrossRoadArray"
  "map_file/CrossRoadArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CrossRoadArray>)))
  "Returns md5sum for a message object of type '<CrossRoadArray>"
  "dbb684f4468deb6aedd5ef0ed27262b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CrossRoadArray)))
  "Returns md5sum for a message object of type 'CrossRoadArray"
  "dbb684f4468deb6aedd5ef0ed27262b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CrossRoadArray>)))
  "Returns full string definition for message of type '<CrossRoadArray>"
  (cl:format cl:nil "Header header~%CrossRoad[] cross_roads~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/CrossRoad~%int32 id~%int32 aid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CrossRoadArray)))
  "Returns full string definition for message of type 'CrossRoadArray"
  (cl:format cl:nil "Header header~%CrossRoad[] cross_roads~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/CrossRoad~%int32 id~%int32 aid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CrossRoadArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cross_roads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CrossRoadArray>))
  "Converts a ROS message object to a list"
  (cl:list 'CrossRoadArray
    (cl:cons ':header (header msg))
    (cl:cons ':cross_roads (cross_roads msg))
))
