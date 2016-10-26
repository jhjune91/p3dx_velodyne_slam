; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude VectorClassArray.msg.html

(cl:defclass <VectorClassArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vector_classes
    :reader vector_classes
    :initarg :vector_classes
    :type (cl:vector map_file-msg:VectorClass)
   :initform (cl:make-array 0 :element-type 'map_file-msg:VectorClass :initial-element (cl:make-instance 'map_file-msg:VectorClass))))
)

(cl:defclass VectorClassArray (<VectorClassArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VectorClassArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VectorClassArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<VectorClassArray> is deprecated: use map_file-msg:VectorClassArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VectorClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vector_classes-val :lambda-list '(m))
(cl:defmethod vector_classes-val ((m <VectorClassArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:vector_classes-val is deprecated.  Use map_file-msg:vector_classes instead.")
  (vector_classes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VectorClassArray>) ostream)
  "Serializes a message object of type '<VectorClassArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vector_classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vector_classes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VectorClassArray>) istream)
  "Deserializes a message object of type '<VectorClassArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vector_classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vector_classes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:VectorClass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VectorClassArray>)))
  "Returns string type for a message object of type '<VectorClassArray>"
  "map_file/VectorClassArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VectorClassArray)))
  "Returns string type for a message object of type 'VectorClassArray"
  "map_file/VectorClassArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VectorClassArray>)))
  "Returns md5sum for a message object of type '<VectorClassArray>"
  "7648d6e649dec4c08d5861f97126dee2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VectorClassArray)))
  "Returns md5sum for a message object of type 'VectorClassArray"
  "7648d6e649dec4c08d5861f97126dee2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VectorClassArray>)))
  "Returns full string definition for message of type '<VectorClassArray>"
  (cl:format cl:nil "Header header~%VectorClass[] vector_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/VectorClass~%int32 vid~%int32 pid~%float64 hang~%float64 vang~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VectorClassArray)))
  "Returns full string definition for message of type 'VectorClassArray"
  (cl:format cl:nil "Header header~%VectorClass[] vector_classes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/VectorClass~%int32 vid~%int32 pid~%float64 hang~%float64 vang~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VectorClassArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vector_classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VectorClassArray>))
  "Converts a ROS message object to a list"
  (cl:list 'VectorClassArray
    (cl:cons ':header (header msg))
    (cl:cons ':vector_classes (vector_classes msg))
))
