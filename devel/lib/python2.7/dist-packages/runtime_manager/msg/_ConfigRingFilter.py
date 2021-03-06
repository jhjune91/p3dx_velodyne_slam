# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from runtime_manager/ConfigRingFilter.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ConfigRingFilter(genpy.Message):
  _md5sum = "b2962bd173a548074fde20317048312c"
  _type = "runtime_manager/ConfigRingFilter"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 ring_div
float32 voxel_leaf_size

"""
  __slots__ = ['ring_div','voxel_leaf_size']
  _slot_types = ['int32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ring_div,voxel_leaf_size

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ConfigRingFilter, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ring_div is None:
        self.ring_div = 0
      if self.voxel_leaf_size is None:
        self.voxel_leaf_size = 0.
    else:
      self.ring_div = 0
      self.voxel_leaf_size = 0.

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
      buff.write(_struct_if.pack(_x.ring_div, _x.voxel_leaf_size))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 8
      (_x.ring_div, _x.voxel_leaf_size,) = _struct_if.unpack(str[start:end])
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
      buff.write(_struct_if.pack(_x.ring_div, _x.voxel_leaf_size))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 8
      (_x.ring_div, _x.voxel_leaf_size,) = _struct_if.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_if = struct.Struct("<if")
