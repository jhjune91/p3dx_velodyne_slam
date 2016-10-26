// Generated by gencpp from file runtime_manager/lamp_cmd.msg
// DO NOT EDIT!


#ifndef RUNTIME_MANAGER_MESSAGE_LAMP_CMD_H
#define RUNTIME_MANAGER_MESSAGE_LAMP_CMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace runtime_manager
{
template <class ContainerAllocator>
struct lamp_cmd_
{
  typedef lamp_cmd_<ContainerAllocator> Type;

  lamp_cmd_()
    : header()
    , l(0)
    , r(0)  {
    }
  lamp_cmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , l(0)
    , r(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _l_type;
  _l_type l;

   typedef int32_t _r_type;
  _r_type r;




  typedef boost::shared_ptr< ::runtime_manager::lamp_cmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::runtime_manager::lamp_cmd_<ContainerAllocator> const> ConstPtr;

}; // struct lamp_cmd_

typedef ::runtime_manager::lamp_cmd_<std::allocator<void> > lamp_cmd;

typedef boost::shared_ptr< ::runtime_manager::lamp_cmd > lamp_cmdPtr;
typedef boost::shared_ptr< ::runtime_manager::lamp_cmd const> lamp_cmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::runtime_manager::lamp_cmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::runtime_manager::lamp_cmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace runtime_manager

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'runtime_manager': ['/home/hj/catkin_ws/src/util/packages/runtime_manager/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::runtime_manager::lamp_cmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::runtime_manager::lamp_cmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::runtime_manager::lamp_cmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::runtime_manager::lamp_cmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::runtime_manager::lamp_cmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::runtime_manager::lamp_cmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::runtime_manager::lamp_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f01795e0c1fa842f366906ad189e0f0a";
  }

  static const char* value(const ::runtime_manager::lamp_cmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf01795e0c1fa842fULL;
  static const uint64_t static_value2 = 0x366906ad189e0f0aULL;
};

template<class ContainerAllocator>
struct DataType< ::runtime_manager::lamp_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "runtime_manager/lamp_cmd";
  }

  static const char* value(const ::runtime_manager::lamp_cmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::runtime_manager::lamp_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int32 l\n\
int32 r\n\
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
";
  }

  static const char* value(const ::runtime_manager::lamp_cmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::runtime_manager::lamp_cmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.l);
      stream.next(m.r);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lamp_cmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::runtime_manager::lamp_cmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::runtime_manager::lamp_cmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "l: ";
    Printer<int32_t>::stream(s, indent + "  ", v.l);
    s << indent << "r: ";
    Printer<int32_t>::stream(s, indent + "  ", v.r);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RUNTIME_MANAGER_MESSAGE_LAMP_CMD_H