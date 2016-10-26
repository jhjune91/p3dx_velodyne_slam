; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude StreetLightArray.msg.html

(cl:defclass <StreetLightArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (street_lights
    :reader street_lights
    :initarg :street_lights
    :type (cl:vector map_file-msg:StreetLight)
   :initform (cl:make-array 0 :element-type 'map_file-msg:StreetLight :initial-element (cl:make-instance 'map_file-msg:StreetLight))))
)

(cl:defclass StreetLightArray (<StreetLightArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StreetLightArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StreetLightArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<StreetLightArray> is deprecated: use map_file-msg:StreetLightArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StreetLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'street_lights-val :lambda-list '(m))
(cl:defmethod street_lights-val ((m <StreetLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:street_lights-val is deprecated.  Use map_file-msg:street_lights instead.")
  (street_lights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StreetLightArray>) ostream)
  "Serializes a message object of type '<StreetLightArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'street_lights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'street_lights))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StreetLightArray>) istream)
  "Deserializes a message object of type '<StreetLightArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'street_lights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'street_lights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:StreetLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StreetLightArray>)))
  "Returns string type for a message object of type '<StreetLightArray>"
  "map_file/StreetLightArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StreetLightArray)))
  "Returns string type for a message object of type 'StreetLightArray"
  "map_file/StreetLightArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StreetLightArray>)))
  "Returns md5sum for a message object of type '<StreetLightArray>"
  "df80e0e4fc5a6748ebd8fd7139bb9050")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StreetLightArray)))
  "Returns md5sum for a message object of type 'StreetLightArray"
  "df80e0e4fc5a6748ebd8fd7139bb9050")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StreetLightArray>)))
  "Returns full string definition for message of type '<StreetLightArray>"
  (cl:format cl:nil "Header header~%StreetLight[] street_lights~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/StreetLight~%int32 id~%int32 lid~%int32 plid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StreetLightArray)))
  "Returns full string definition for message of type 'StreetLightArray"
  (cl:format cl:nil "Header header~%StreetLight[] street_lights~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/StreetLight~%int32 id~%int32 lid~%int32 plid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StreetLightArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'street_lights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StreetLightArray>))
  "Converts a ROS message object to a list"
  (cl:list 'StreetLightArray
    (cl:cons ':header (header msg))
    (cl:cons ':street_lights (street_lights msg))
))
