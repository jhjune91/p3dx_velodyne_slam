; Auto-generated. Do not edit!


(cl:in-package map_file-msg)


;//! \htmlinclude PoleClass.msg.html

(cl:defclass <PoleClass> (roslisp-msg-protocol:ros-message)
  ((plid
    :reader plid
    :initarg :plid
    :type cl:integer
    :initform 0)
   (vid
    :reader vid
    :initarg :vid
    :type cl:integer
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (dim
    :reader dim
    :initarg :dim
    :type cl:float
    :initform 0.0))
)

(cl:defclass PoleClass (<PoleClass>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoleClass>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoleClass)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_file-msg:<PoleClass> is deprecated: use map_file-msg:PoleClass instead.")))

(cl:ensure-generic-function 'plid-val :lambda-list '(m))
(cl:defmethod plid-val ((m <PoleClass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:plid-val is deprecated.  Use map_file-msg:plid instead.")
  (plid m))

(cl:ensure-generic-function 'vid-val :lambda-list '(m))
(cl:defmethod vid-val ((m <PoleClass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:vid-val is deprecated.  Use map_file-msg:vid instead.")
  (vid m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <PoleClass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:length-val is deprecated.  Use map_file-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'dim-val :lambda-list '(m))
(cl:defmethod dim-val ((m <PoleClass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_file-msg:dim-val is deprecated.  Use map_file-msg:dim instead.")
  (dim m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoleClass>) ostream)
  "Serializes a message object of type '<PoleClass>"
  (cl:let* ((signed (cl:slot-value msg 'plid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoleClass>) istream)
  "Deserializes a message object of type '<PoleClass>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dim) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoleClass>)))
  "Returns string type for a message object of type '<PoleClass>"
  "map_file/PoleClass")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoleClass)))
  "Returns string type for a message object of type 'PoleClass"
  "map_file/PoleClass")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoleClass>)))
  "Returns md5sum for a message object of type '<PoleClass>"
  "d9d65404b5e1f838856c9aeaa9d94be8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoleClass)))
  "Returns md5sum for a message object of type 'PoleClass"
  "d9d65404b5e1f838856c9aeaa9d94be8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoleClass>)))
  "Returns full string definition for message of type '<PoleClass>"
  (cl:format cl:nil "int32 plid~%int32 vid~%float64 length~%float64 dim~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoleClass)))
  "Returns full string definition for message of type 'PoleClass"
  (cl:format cl:nil "int32 plid~%int32 vid~%float64 length~%float64 dim~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoleClass>))
  (cl:+ 0
     4
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoleClass>))
  "Converts a ROS message object to a list"
  (cl:list 'PoleClass
    (cl:cons ':plid (plid msg))
    (cl:cons ':vid (vid msg))
    (cl:cons ':length (length msg))
    (cl:cons ':dim (dim msg))
))
