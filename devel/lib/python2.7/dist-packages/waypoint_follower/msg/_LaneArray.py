# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from waypoint_follower/LaneArray.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import waypoint_follower.msg
import geometry_msgs.msg
import std_msgs.msg

class LaneArray(genpy.Message):
  _md5sum = "92d871fae788ffe89a2471f84797cb3e"
  _type = "waypoint_follower/LaneArray"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """lane[] lanes
================================================================================
MSG: waypoint_follower/lane
Header header
int32 increment
waypoint[] waypoints
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: waypoint_follower/waypoint
geometry_msgs/PoseStamped pose
geometry_msgs/TwistStamped twist
dtlane dtlane

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: waypoint_follower/dtlane
float64 dist
float64 dir
float64 apara
float64 r
float64 slope
float64 cant
float64 lw
float64 rw
"""
  __slots__ = ['lanes']
  _slot_types = ['waypoint_follower/lane[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       lanes

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LaneArray, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.lanes is None:
        self.lanes = []
    else:
      self.lanes = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.lanes)
      buff.write(_struct_I.pack(length))
      for val1 in self.lanes:
        _v1 = val1.header
        buff.write(_struct_I.pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_struct_i.pack(val1.increment))
        length = len(val1.waypoints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.waypoints:
          _v3 = val2.pose
          _v4 = _v3.header
          buff.write(_struct_I.pack(_v4.seq))
          _v5 = _v4.stamp
          _x = _v5
          buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
          _x = _v4.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _v6 = _v3.pose
          _v7 = _v6.position
          _x = _v7
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v8 = _v6.orientation
          _x = _v8
          buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
          _v9 = val2.twist
          _v10 = _v9.header
          buff.write(_struct_I.pack(_v10.seq))
          _v11 = _v10.stamp
          _x = _v11
          buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
          _x = _v10.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _v12 = _v9.twist
          _v13 = _v12.linear
          _x = _v13
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v14 = _v12.angular
          _x = _v14
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v15 = val2.dtlane
          _x = _v15
          buff.write(_struct_8d.pack(_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.lanes is None:
        self.lanes = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lanes = []
      for i in range(0, length):
        val1 = waypoint_follower.msg.lane()
        _v16 = val1.header
        start = end
        end += 4
        (_v16.seq,) = _struct_I.unpack(str[start:end])
        _v17 = _v16.stamp
        _x = _v17
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.frame_id = str[start:end].decode('utf-8')
        else:
          _v16.frame_id = str[start:end]
        start = end
        end += 4
        (val1.increment,) = _struct_i.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.waypoints = []
        for i in range(0, length):
          val2 = waypoint_follower.msg.waypoint()
          _v18 = val2.pose
          _v19 = _v18.header
          start = end
          end += 4
          (_v19.seq,) = _struct_I.unpack(str[start:end])
          _v20 = _v19.stamp
          _x = _v20
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v19.frame_id = str[start:end].decode('utf-8')
          else:
            _v19.frame_id = str[start:end]
          _v21 = _v18.pose
          _v22 = _v21.position
          _x = _v22
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v23 = _v21.orientation
          _x = _v23
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
          _v24 = val2.twist
          _v25 = _v24.header
          start = end
          end += 4
          (_v25.seq,) = _struct_I.unpack(str[start:end])
          _v26 = _v25.stamp
          _x = _v26
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v25.frame_id = str[start:end].decode('utf-8')
          else:
            _v25.frame_id = str[start:end]
          _v27 = _v24.twist
          _v28 = _v27.linear
          _x = _v28
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v29 = _v27.angular
          _x = _v29
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v30 = val2.dtlane
          _x = _v30
          start = end
          end += 64
          (_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw,) = _struct_8d.unpack(str[start:end])
          val1.waypoints.append(val2)
        self.lanes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.lanes)
      buff.write(_struct_I.pack(length))
      for val1 in self.lanes:
        _v31 = val1.header
        buff.write(_struct_I.pack(_v31.seq))
        _v32 = _v31.stamp
        _x = _v32
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v31.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_struct_i.pack(val1.increment))
        length = len(val1.waypoints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.waypoints:
          _v33 = val2.pose
          _v34 = _v33.header
          buff.write(_struct_I.pack(_v34.seq))
          _v35 = _v34.stamp
          _x = _v35
          buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
          _x = _v34.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _v36 = _v33.pose
          _v37 = _v36.position
          _x = _v37
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v38 = _v36.orientation
          _x = _v38
          buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
          _v39 = val2.twist
          _v40 = _v39.header
          buff.write(_struct_I.pack(_v40.seq))
          _v41 = _v40.stamp
          _x = _v41
          buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
          _x = _v40.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _v42 = _v39.twist
          _v43 = _v42.linear
          _x = _v43
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v44 = _v42.angular
          _x = _v44
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v45 = val2.dtlane
          _x = _v45
          buff.write(_struct_8d.pack(_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.lanes is None:
        self.lanes = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lanes = []
      for i in range(0, length):
        val1 = waypoint_follower.msg.lane()
        _v46 = val1.header
        start = end
        end += 4
        (_v46.seq,) = _struct_I.unpack(str[start:end])
        _v47 = _v46.stamp
        _x = _v47
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v46.frame_id = str[start:end].decode('utf-8')
        else:
          _v46.frame_id = str[start:end]
        start = end
        end += 4
        (val1.increment,) = _struct_i.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.waypoints = []
        for i in range(0, length):
          val2 = waypoint_follower.msg.waypoint()
          _v48 = val2.pose
          _v49 = _v48.header
          start = end
          end += 4
          (_v49.seq,) = _struct_I.unpack(str[start:end])
          _v50 = _v49.stamp
          _x = _v50
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v49.frame_id = str[start:end].decode('utf-8')
          else:
            _v49.frame_id = str[start:end]
          _v51 = _v48.pose
          _v52 = _v51.position
          _x = _v52
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v53 = _v51.orientation
          _x = _v53
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
          _v54 = val2.twist
          _v55 = _v54.header
          start = end
          end += 4
          (_v55.seq,) = _struct_I.unpack(str[start:end])
          _v56 = _v55.stamp
          _x = _v56
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v55.frame_id = str[start:end].decode('utf-8')
          else:
            _v55.frame_id = str[start:end]
          _v57 = _v54.twist
          _v58 = _v57.linear
          _x = _v58
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v59 = _v57.angular
          _x = _v59
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v60 = val2.dtlane
          _x = _v60
          start = end
          end += 64
          (_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw,) = _struct_8d.unpack(str[start:end])
          val1.waypoints.append(val2)
        self.lanes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_8d = struct.Struct("<8d")
_struct_i = struct.Struct("<i")
_struct_4d = struct.Struct("<4d")
_struct_2I = struct.Struct("<2I")
_struct_3d = struct.Struct("<3d")
