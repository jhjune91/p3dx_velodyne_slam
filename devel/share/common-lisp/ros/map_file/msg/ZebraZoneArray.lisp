; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude ZebraZoneArray.msg.html

(cl:defclass <ZebraZoneArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (zebra_zones
    :reader zebra_zones
    :initarg :zebra_zones
    :type (cl:vector map_file-msg:ZebraZone)
   :initform (cl:make-array 0 :element-type 'map_file-msg:ZebraZone :initial-element (cl:make-instance 'map_file-msg:ZebraZone))))
)

(cl:defclass ZebraZoneArray (<ZebraZoneArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZebraZoneArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZebraZoneArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<ZebraZoneArray> is deprecated: use map_file-msg:ZebraZoneArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ZebraZoneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'zebra_zones-val :lambda-list '(m))
(cl:defmethod zebra_zones-val ((m <ZebraZoneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:zebra_zones-val is deprecated.  Use map_file-msg:zebra_zones instead.")
  (zebra_zones m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZebraZoneArray>) ostream)
  "Serializes a message object of type '<ZebraZoneArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'zebra_zones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'zebra_zones))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZebraZoneArray>) istream)
  "Deserializes a message object of type '<ZebraZoneArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'zebra_zones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'zebra_zones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:ZebraZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZebraZoneArray>)))
  "Returns string type for a message object of type '<ZebraZoneArray>"
  "map_file/ZebraZoneArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZebraZoneArray)))
  "Returns string type for a message object of type 'ZebraZoneArray"
  "map_file/ZebraZoneArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZebraZoneArray>)))
  "Returns md5sum for a message object of type '<ZebraZoneArray>"
  "d7f317ced40c61b50455b269c12db03b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZebraZoneArray)))
  "Returns md5sum for a message object of type 'ZebraZoneArray"
  "d7f317ced40c61b50455b269c12db03b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZebraZoneArray>)))
  "Returns full string definition for message of type '<ZebraZoneArray>"
  (cl:format cl:nil "Header header~%ZebraZone[] zebra_zones~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/ZebraZone~%int32 id~%int32 aid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZebraZoneArray)))
  "Returns full string definition for message of type 'ZebraZoneArray"
  (cl:format cl:nil "Header header~%ZebraZone[] zebra_zones~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/ZebraZone~%int32 id~%int32 aid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZebraZoneArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'zebra_zones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZebraZoneArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ZebraZoneArray
    (cl:cons ':header (header msg))
    (cl:cons ':zebra_zones (zebra_zones msg))
))
