; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude DTLaneArray.msg.html

(cl:defclass <DTLaneArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dtlanes
    :reader dtlanes
    :initarg :dtlanes
    :type (cl:vector map_file-msg:DTLane)
   :initform (cl:make-array 0 :element-type 'map_file-msg:DTLane :initial-element (cl:make-instance 'map_file-msg:DTLane))))
)

(cl:defclass DTLaneArray (<DTLaneArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DTLaneArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DTLaneArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<DTLaneArray> is deprecated: use map_file-msg:DTLaneArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DTLaneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dtlanes-val :lambda-list '(m))
(cl:defmethod dtlanes-val ((m <DTLaneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:dtlanes-val is deprecated.  Use map_file-msg:dtlanes instead.")
  (dtlanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DTLaneArray>) ostream)
  "Serializes a message object of type '<DTLaneArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dtlanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dtlanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DTLaneArray>) istream)
  "Deserializes a message object of type '<DTLaneArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dtlanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dtlanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:DTLane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DTLaneArray>)))
  "Returns string type for a message object of type '<DTLaneArray>"
  "map_file/DTLaneArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DTLaneArray)))
  "Returns string type for a message object of type 'DTLaneArray"
  "map_file/DTLaneArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DTLaneArray>)))
  "Returns md5sum for a message object of type '<DTLaneArray>"
  "41017b0a2f1aaea0781c37f932c0da96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DTLaneArray)))
  "Returns md5sum for a message object of type 'DTLaneArray"
  "41017b0a2f1aaea0781c37f932c0da96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DTLaneArray>)))
  "Returns full string definition for message of type '<DTLaneArray>"
  (cl:format cl:nil "Header header~%DTLane[] dtlanes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/DTLane~%int32 did~%float64 dist~%int32 pid~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DTLaneArray)))
  "Returns full string definition for message of type 'DTLaneArray"
  (cl:format cl:nil "Header header~%DTLane[] dtlanes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/DTLane~%int32 did~%float64 dist~%int32 pid~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DTLaneArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dtlanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DTLaneArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DTLaneArray
    (cl:cons ':header (header msg))
    (cl:cons ':dtlanes (dtlanes msg))
))
