; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude BoxClassArray.msg.html

(cl:defclass <BoxClassArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (box_classes
    :reader box_classes
    :initarg :box_classes
    :type (cl:vector map_file-msg:BoxClass)
   :initform (cl:make-array 0 :element-type 'map_file-msg:BoxClass :initial-element (cl:make-instance 'map_file-msg:BoxClass))))
)

(cl:defclass BoxClassArray (<BoxClassArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoxClassArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoxClassArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<BoxClassArray> is deprecated: use map_file-msg:BoxClassArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BoxClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'box_classes-val :lambda-list '(m))
(cl:defmethod box_classes-val ((m <BoxClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:box_classes-val is deprecated.  Use map_file-msg:box_classes instead.")
  (box_classes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoxClassArray>) ostream)
  "Serializes a message object of type '<BoxClassArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'box_classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'box_classes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoxClassArray>) istream)
  "Deserializes a message object of type '<BoxClassArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'box_classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'box_classes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:BoxClass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoxClassArray>)))
  "Returns string type for a message object of type '<BoxClassArray>"
  "map_file/BoxClassArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoxClassArray)))
  "Returns string type for a message object of type 'BoxClassArray"
  "map_file/BoxClassArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoxClassArray>)))
  "Returns md5sum for a message object of type '<BoxClassArray>"
  "ae45de66e3666b6e9b4f168b4102e82c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoxClassArray)))
  "Returns md5sum for a message object of type 'BoxClassArray"
  "ae45de66e3666b6e9b4f168b4102e82c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoxClassArray>)))
  "Returns full string definition for message of type '<BoxClassArray>"
  (cl:format cl:nil "Header header~%BoxClass[] box_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/BoxClass~%int32 bid~%int32 pid1~%int32 pid2~%int32 pid3~%int32 pid4~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoxClassArray)))
  "Returns full string definition for message of type 'BoxClassArray"
  (cl:format cl:nil "Header header~%BoxClass[] box_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/BoxClass~%int32 bid~%int32 pid1~%int32 pid2~%int32 pid3~%int32 pid4~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoxClassArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'box_classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoxClassArray>))
  "Converts a ROS message object to a list"
  (cl:list 'BoxClassArray
    (cl:cons ':header (header msg))
    (cl:cons ':box_classes (box_classes msg))
))
