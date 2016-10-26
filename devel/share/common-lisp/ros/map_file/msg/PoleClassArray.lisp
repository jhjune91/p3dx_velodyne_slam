; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude PoleClassArray.msg.html

(cl:defclass <PoleClassArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pole_classes
    :reader pole_classes
    :initarg :pole_classes
    :type (cl:vector map_file-msg:PoleClass)
   :initform (cl:make-array 0 :element-type 'map_file-msg:PoleClass :initial-element (cl:make-instance 'map_file-msg:PoleClass))))
)

(cl:defclass PoleClassArray (<PoleClassArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoleClassArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoleClassArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<PoleClassArray> is deprecated: use map_file-msg:PoleClassArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PoleClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pole_classes-val :lambda-list '(m))
(cl:defmethod pole_classes-val ((m <PoleClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:pole_classes-val is deprecated.  Use map_file-msg:pole_classes instead.")
  (pole_classes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoleClassArray>) ostream)
  "Serializes a message object of type '<PoleClassArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pole_classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pole_classes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoleClassArray>) istream)
  "Deserializes a message object of type '<PoleClassArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pole_classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pole_classes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:PoleClass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoleClassArray>)))
  "Returns string type for a message object of type '<PoleClassArray>"
  "map_file/PoleClassArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoleClassArray)))
  "Returns string type for a message object of type 'PoleClassArray"
  "map_file/PoleClassArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoleClassArray>)))
  "Returns md5sum for a message object of type '<PoleClassArray>"
  "2893f59dd92b27208213dbd40aed1af3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoleClassArray)))
  "Returns md5sum for a message object of type 'PoleClassArray"
  "2893f59dd92b27208213dbd40aed1af3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoleClassArray>)))
  "Returns full string definition for message of type '<PoleClassArray>"
  (cl:format cl:nil "Header header~%PoleClass[] pole_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/PoleClass~%int32 plid~%int32 vid~%float64 length~%float64 dim~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoleClassArray)))
  "Returns full string definition for message of type 'PoleClassArray"
  (cl:format cl:nil "Header header~%PoleClass[] pole_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/PoleClass~%int32 plid~%int32 vid~%float64 length~%float64 dim~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoleClassArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pole_classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoleClassArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PoleClassArray
    (cl:cons ':header (header msg))
    (cl:cons ':pole_classes (pole_classes msg))
))
