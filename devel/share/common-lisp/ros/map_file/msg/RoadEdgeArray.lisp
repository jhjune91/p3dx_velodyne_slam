; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude RoadEdgeArray.msg.html

(cl:defclass <RoadEdgeArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (road_edges
    :reader road_edges
    :initarg :road_edges
    :type (cl:vector map_file-msg:RoadEdge)
   :initform (cl:make-array 0 :element-type 'map_file-msg:RoadEdge :initial-element (cl:make-instance 'map_file-msg:RoadEdge))))
)

(cl:defclass RoadEdgeArray (<RoadEdgeArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadEdgeArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadEdgeArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<RoadEdgeArray> is deprecated: use map_file-msg:RoadEdgeArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoadEdgeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:header-val is deprecated.  Use map_file-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'road_edges-val :lambda-list '(m))
(cl:defmethod road_edges-val ((m <RoadEdgeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:road_edges-val is deprecated.  Use map_file-msg:road_edges instead.")
  (road_edges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadEdgeArray>) ostream)
  "Serializes a message object of type '<RoadEdgeArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road_edges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'road_edges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadEdgeArray>) istream)
  "Deserializes a message object of type '<RoadEdgeArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road_edges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road_edges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_file-msg:RoadEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadEdgeArray>)))
  "Returns string type for a message object of type '<RoadEdgeArray>"
  "map_file/RoadEdgeArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadEdgeArray)))
  "Returns string type for a message object of type 'RoadEdgeArray"
  "map_file/RoadEdgeArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadEdgeArray>)))
  "Returns md5sum for a message object of type '<RoadEdgeArray>"
  "8bded8ef8aa85d15d445b67278f73afe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadEdgeArray)))
  "Returns md5sum for a message object of type 'RoadEdgeArray"
  "8bded8ef8aa85d15d445b67278f73afe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadEdgeArray>)))
  "Returns full string definition for message of type '<RoadEdgeArray>"
  (cl:format cl:nil "Header header~%RoadEdge[] road_edges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/RoadEdge~%int32 id~%int32 lid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadEdgeArray)))
  "Returns full string definition for message of type 'RoadEdgeArray"
  (cl:format cl:nil "Header header~%RoadEdge[] road_edges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: map_file/RoadEdge~%int32 id~%int32 lid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadEdgeArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road_edges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadEdgeArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadEdgeArray
    (cl:cons ':header (header msg))
    (cl:cons ':road_edges (road_edges msg))
))
