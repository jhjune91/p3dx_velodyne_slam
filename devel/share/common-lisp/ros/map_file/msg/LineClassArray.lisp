; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude LineClassArray.msg.html

(cl:defclass <LineClassArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (line_classes
    :reader line_classes
    :initarg :line_classes
    :type (cl:vector map_file-msg:LineClass)
   :initform (cl:make-array 0 :element-type 'map_file-msg:LineClass :initial-element (cl:make-instance 'map_file-msg:LineClass))))
)

(cl:defclass LineClassArray (<LineClassArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineClassArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineClassArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<LineClassArray> is deprecated: use map_file-msg:LineClassArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LineClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'line_classes-val :lambda-list '(m))
(cl:defmethod line_classes-val ((m <LineClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:line_classes-val is deprecated.  Use map_file-msg:line_classes instead.")
  (line_classes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineClassArray>) ostream)
  "Serializes a message object of type '<LineClassArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_classes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineClassArray>) istream)
  "Deserializes a message object of type '<LineClassArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'line_classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'line_classes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:LineClass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineClassArray>)))
  "Returns string type for a message object of type '<LineClassArray>"
  "map_file/LineClassArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineClassArray)))
  "Returns string type for a message object of type 'LineClassArray"
  "map_file/LineClassArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineClassArray>)))
  "Returns md5sum for a message object of type '<LineClassArray>"
  "b6617d3d076804dc44baef8560ae2d95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineClassArray)))
  "Returns md5sum for a message object of type 'LineClassArray"
  "b6617d3d076804dc44baef8560ae2d95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineClassArray>)))
  "Returns full string definition for message of type '<LineClassArray>"
  (cl:format cl:nil "Header header~%LineClass[] line_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/LineClass~%int32 lid~%int32 bpid~%int32 fpid~%int32 blid~%int32 flid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineClassArray)))
  "Returns full string definition for message of type 'LineClassArray"
  (cl:format cl:nil "Header header~%LineClass[] line_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/LineClass~%int32 lid~%int32 bpid~%int32 fpid~%int32 blid~%int32 flid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineClassArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineClassArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LineClassArray
    (cl:cons ':header (header msg))
    (cl:cons ':line_classes (line_classes msg))
))
