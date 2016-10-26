# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from runtime_manager/ConfigWaypointFollower.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class ConfigWaypointFollower(genpy.Message):
  _md5sum = "d9202059bf10b2a90035f4b7f2895bf0"
  _type = "runtime_manager/ConfigWaypointFollower"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
int32 param_flag
float32 velocity
float32 lookahead_threshold
float32 threshold_ratio
float32 minimum_lookahead_threshold
float32 displacement_threshold
float32 relative_angle_threshold

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
"""
  __slots__ = ['header','param_flag','velocity','lookahead_threshold','threshold_ratio','minimum_lookahead_threshold','displacement_threshold','relative_angle_threshold']
  _slot_types = ['std_msgs/Header','int32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,param_flag,velocity,lookahead_threshold,threshold_ratio,minimum_lookahead_threshold,displacement_threshold,relative_angle_threshold

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ConfigWaypointFollower, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.param_flag is None:
        self.param_flag = 0
      if self.velocity is None:
        self.velocity = 0.
      if self.lookahead_threshold is None:
        self.lookahead_threshold = 0.
      if self.threshold_ratio is None:
        self.threshold_ratio = 0.
      if self.minimum_lookahead_threshold is None:
        self.minimum_lookahead_threshold = 0.
      if self.displacement_threshold is None:
        self.displacement_threshold = 0.
      if self.relative_angle_threshold is None:
        self.relative_angle_threshold = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.param_flag = 0
      self.velocity = 0.
      self.lookahead_threshold = 0.
      self.threshold_ratio = 0.
      self.minimum_lookahead_threshold = 0.
      self.displacement_threshold = 0.
      self.relative_angle_threshold = 0.

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
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_i6f.pack(_x.param_flag, _x.velocity, _x.lookahead_threshold, _x.threshold_ratio, _x.minimum_lookahead_threshold, _x.displacement_threshold, _x.relative_angle_threshold))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.param_flag, _x.velocity, _x.lookahead_threshold, _x.threshold_ratio, _x.minimum_lookahead_threshold, _x.displacement_threshold, _x.relative_angle_threshold,) = _struct_i6f.unpack(str[start:end])
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
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_i6f.pack(_x.param_flag, _x.velocity, _x.lookahead_threshold, _x.threshold_ratio, _x.minimum_lookahead_threshold, _x.displacement_threshold, _x.relative_angle_threshold))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.param_flag, _x.velocity, _x.lookahead_threshold, _x.threshold_ratio, _x.minimum_lookahead_threshold, _x.displacement_threshold, _x.relative_angle_threshold,) = _struct_i6f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_i6f = struct.Struct("<i6f")