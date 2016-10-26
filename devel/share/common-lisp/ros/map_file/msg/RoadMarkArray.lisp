; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude RoadMarkArray.msg.html

(cl:defclass <RoadMarkArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (road_marks
    :reader road_marks
    :initarg :road_marks
    :type (cl:vector map_file-msg:RoadMark)
   :initform (cl:make-array 0 :element-type 'map_file-msg:RoadMark :initial-element (cl:make-instance 'map_file-msg:RoadMark))))
)

(cl:defclass RoadMarkArray (<RoadMarkArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadMarkArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadMarkArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<RoadMarkArray> is deprecated: use map_file-msg:RoadMarkArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoadMarkArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'road_marks-val :lambda-list '(m))
(cl:defmethod road_marks-val ((m <RoadMarkArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:road_marks-val is deprecated.  Use map_file-msg:road_marks instead.")
  (road_marks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadMarkArray>) ostream)
  "Serializes a message object of type '<RoadMarkArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road_marks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'road_marks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadMarkArray>) istream)
  "Deserializes a message object of type '<RoadMarkArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road_marks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road_marks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:RoadMark))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadMarkArray>)))
  "Returns string type for a message object of type '<RoadMarkArray>"
  "map_file/RoadMarkArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadMarkArray)))
  "Returns string type for a message object of type 'RoadMarkArray"
  "map_file/RoadMarkArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadMarkArray>)))
  "Returns md5sum for a message object of type '<RoadMarkArray>"
  "2894ff5b53ef6c901850e492b5f97de9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadMarkArray)))
  "Returns md5sum for a message object of type 'RoadMarkArray"
  "2894ff5b53ef6c901850e492b5f97de9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadMarkArray>)))
  "Returns full string definition for message of type '<RoadMarkArray>"
  (cl:format cl:nil "Header header~%RoadMark[] road_marks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/RoadMark~%int32 id~%int32 aid~%int32 type # Don't use wide character~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadMarkArray)))
  "Returns full string definition for message of type 'RoadMarkArray"
  (cl:format cl:nil "Header header~%RoadMark[] road_marks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/RoadMark~%int32 id~%int32 aid~%int32 type # Don't use wide character~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadMarkArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road_marks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadMarkArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadMarkArray
    (cl:cons ':header (header msg))
    (cl:cons ':road_marks (road_marks msg))
))
