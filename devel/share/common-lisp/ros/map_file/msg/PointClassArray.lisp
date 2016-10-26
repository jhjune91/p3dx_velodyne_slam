; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude PointClassArray.msg.html

(cl:defclass <PointClassArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (point_classes
    :reader point_classes
    :initarg :point_classes
    :type (cl:vector map_file-msg:PointClass)
   :initform (cl:make-array 0 :element-type 'map_file-msg:PointClass :initial-element (cl:make-instance 'map_file-msg:PointClass))))
)

(cl:defclass PointClassArray (<PointClassArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointClassArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointClassArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<PointClassArray> is deprecated: use map_file-msg:PointClassArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'point_classes-val :lambda-list '(m))
(cl:defmethod point_classes-val ((m <PointClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:point_classes-val is deprecated.  Use map_file-msg:point_classes instead.")
  (point_classes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointClassArray>) ostream)
  "Serializes a message object of type '<PointClassArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point_classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'point_classes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointClassArray>) istream)
  "Deserializes a message object of type '<PointClassArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point_classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point_classes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:PointClass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointClassArray>)))
  "Returns string type for a message object of type '<PointClassArray>"
  "map_file/PointClassArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointClassArray)))
  "Returns string type for a message object of type 'PointClassArray"
  "map_file/PointClassArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointClassArray>)))
  "Returns md5sum for a message object of type '<PointClassArray>"
  "42f4de6a90fe90d129e6fa4bdbc1cee8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointClassArray)))
  "Returns md5sum for a message object of type 'PointClassArray"
  "42f4de6a90fe90d129e6fa4bdbc1cee8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointClassArray>)))
  "Returns full string definition for message of type '<PointClassArray>"
  (cl:format cl:nil "Header header~%PointClass[] point_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/PointClass~%int32 pid~%float64 b~%float64 l~%float64 h~%float64 bx~%float64 ly~%int32 ref~%int32 mcode1~%int32 mcode2~%int32 mcode3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointClassArray)))
  "Returns full string definition for message of type 'PointClassArray"
  (cl:format cl:nil "Header header~%PointClass[] point_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/PointClass~%int32 pid~%float64 b~%float64 l~%float64 h~%float64 bx~%float64 ly~%int32 ref~%int32 mcode1~%int32 mcode2~%int32 mcode3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointClassArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point_classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointClassArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PointClassArray
    (cl:cons ':header (header msg))
    (cl:cons ':point_classes (point_classes msg))
))
