; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude AreaClassArray.msg.html

(cl:defclass <AreaClassArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (area_classes
    :reader area_classes
    :initarg :area_classes
    :type (cl:vector map_file-msg:AreaClass)
   :initform (cl:make-array 0 :element-type 'map_file-msg:AreaClass :initial-element (cl:make-instance 'map_file-msg:AreaClass))))
)

(cl:defclass AreaClassArray (<AreaClassArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AreaClassArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AreaClassArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<AreaClassArray> is deprecated: use map_file-msg:AreaClassArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AreaClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'area_classes-val :lambda-list '(m))
(cl:defmethod area_classes-val ((m <AreaClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:area_classes-val is deprecated.  Use map_file-msg:area_classes instead.")
  (area_classes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AreaClassArray>) ostream)
  "Serializes a message object of type '<AreaClassArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'area_classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'area_classes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AreaClassArray>) istream)
  "Deserializes a message object of type '<AreaClassArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'area_classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'area_classes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:AreaClass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AreaClassArray>)))
  "Returns string type for a message object of type '<AreaClassArray>"
  "map_file/AreaClassArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AreaClassArray)))
  "Returns string type for a message object of type 'AreaClassArray"
  "map_file/AreaClassArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AreaClassArray>)))
  "Returns md5sum for a message object of type '<AreaClassArray>"
  "4aaa95b1c59af3143bf8643213371665")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AreaClassArray)))
  "Returns md5sum for a message object of type 'AreaClassArray"
  "4aaa95b1c59af3143bf8643213371665")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AreaClassArray>)))
  "Returns full string definition for message of type '<AreaClassArray>"
  (cl:format cl:nil "Header header~%AreaClass[] area_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/AreaClass~%int32 aid~%int32 slid~%int32 elid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AreaClassArray)))
  "Returns full string definition for message of type 'AreaClassArray"
  (cl:format cl:nil "Header header~%AreaClass[] area_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/AreaClass~%int32 aid~%int32 slid~%int32 elid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AreaClassArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'area_classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AreaClassArray>))
  "Converts a ROS message object to a list"
  (cl:list 'AreaClassArray
    (cl:cons ':header (header msg))
    (cl:cons ':area_classes (area_classes msg))
))
