// Generated by gencpp from file map_file/NodeArray.msg
// DO NOT EDIT!


#ifndef MAP_FILE_MESSAGE_NODEARRAY_H
#define MAP_FILE_MESSAGE_NODEARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <map_file/Node.h>

namespace map_file
{
template <class ContainerAllocator>
struct NodeArray_
{
  typedef NodeArray_<ContainerAllocator> Type;

  NodeArray_()
    : header()
    , nodes()  {
    }
  NodeArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , nodes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::map_file::Node_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::map_file::Node_<ContainerAllocator> >::other >  _nodes_type;
  _nodes_type nodes;




  typedef boost::shared_ptr< ::map_file::NodeArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_file::NodeArray_<ContainerAllocator> const> ConstPtr;

}; // struct NodeArray_

typedef ::map_file::NodeArray_<std::allocator<void> > NodeArray;

typedef boost::shared_ptr< ::map_file::NodeArray > NodeArrayPtr;
typedef boost::shared_ptr< ::map_file::NodeArray const> NodeArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_file::NodeArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_file::NodeArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace map_file

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'map_file': ['/home/hj/catkin_ws/src/data/packages/map_file/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::map_file::NodeArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_file::NodeArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_file::NodeArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_file::NodeArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_file::NodeArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_file::NodeArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_file::NodeArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ff22e40336044c3896b35b7f61d26f1";
  }

  static const char* value(const ::map_file::NodeArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ff22e40336044c3ULL;
  static const uint64_t static_value2 = 0x896b35b7f61d26f1ULL;
};

template<class ContainerAllocator>
struct DataType< ::map_file::NodeArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_file/NodeArray";
  }

  static const char* value(const ::map_file::NodeArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_file::NodeArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
Node[] nodes\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: map_file/Node\n\
int32 nid\n\
int32 pid\n\
";
  }

  static const char* value(const ::map_file::NodeArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_file::NodeArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.nodes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NodeArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_file::NodeArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::map_file::NodeArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "nodes[]" << std::endl;
    for (size_t i = 0; i < v.nodes.size(); ++i)
    {
      s << indent << "  nodes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::map_file::Node_<ContainerAllocator> >::stream(s, indent + "    ", v.nodes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAP_FILE_MESSAGE_NODEARRAY_H
