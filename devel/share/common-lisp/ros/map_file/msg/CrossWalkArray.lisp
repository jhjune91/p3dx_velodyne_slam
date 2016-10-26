; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude CrossWalkArray.msg.html

(cl:defclass <CrossWalkArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cross_walks
    :reader cross_walks
    :initarg :cross_walks
    :type (cl:vector map_file-msg:CrossWalk)
   :initform (cl:make-array 0 :element-type 'map_file-msg:CrossWalk :initial-element (cl:make-instance 'map_file-msg:CrossWalk))))
)

(cl:defclass CrossWalkArray (<CrossWalkArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CrossWalkArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CrossWalkArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<CrossWalkArray> is deprecated: use map_file-msg:CrossWalkArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CrossWalkArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cross_walks-val :lambda-list '(m))
(cl:defmethod cross_walks-val ((m <CrossWalkArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:cross_walks-val is deprecated.  Use map_file-msg:cross_walks instead.")
  (cross_walks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CrossWalkArray>) ostream)
  "Serializes a message object of type '<CrossWalkArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cross_walks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cross_walks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CrossWalkArray>) istream)
  "Deserializes a message object of type '<CrossWalkArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cross_walks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cross_walks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:CrossWalk))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CrossWalkArray>)))
  "Returns string type for a message object of type '<CrossWalkArray>"
  "map_file/CrossWalkArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CrossWalkArray)))
  "Returns string type for a message object of type 'CrossWalkArray"
  "map_file/CrossWalkArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CrossWalkArray>)))
  "Returns md5sum for a message object of type '<CrossWalkArray>"
  "6188cab2c1e707ecf4d3644a90f0ec9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CrossWalkArray)))
  "Returns md5sum for a message object of type 'CrossWalkArray"
  "6188cab2c1e707ecf4d3644a90f0ec9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CrossWalkArray>)))
  "Returns full string definition for message of type '<CrossWalkArray>"
  (cl:format cl:nil "Header header~%CrossWalk[] cross_walks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/CrossWalk~%int32 id~%int32 aid~%int32 type~%int32 bdid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CrossWalkArray)))
  "Returns full string definition for message of type 'CrossWalkArray"
  (cl:format cl:nil "Header header~%CrossWalk[] cross_walks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/CrossWalk~%int32 id~%int32 aid~%int32 type~%int32 bdid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CrossWalkArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cross_walks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CrossWalkArray>))
  "Converts a ROS message object to a list"
  (cl:list 'CrossWalkArray
    (cl:cons ':header (header msg))
    (cl:cons ':cross_walks (cross_walks msg))
))
