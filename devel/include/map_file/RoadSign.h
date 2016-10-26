// Generated by gencpp from file map_file/RoadSign.msg
// DO NOT EDIT!


#ifndef MAP_FILE_MESSAGE_ROADSIGN_H
#define MAP_FILE_MESSAGE_ROADSIGN_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace map_file
{
template <class ContainerAllocator>
struct RoadSign_
{
  typedef RoadSign_<ContainerAllocator> Type;

  RoadSign_()
    : id(0)
    , vid(0)
    , plid(0)
    , type(0)
    , linkid(0)  {
    }
  RoadSign_(const ContainerAllocator& _alloc)
    : id(0)
    , vid(0)
    , plid(0)
    , type(0)
    , linkid(0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef int32_t _vid_type;
  _vid_type vid;

   typedef int32_t _plid_type;
  _plid_type plid;

   typedef int32_t _type_type;
  _type_type type;

   typedef int32_t _linkid_type;
  _linkid_type linkid;




  typedef boost::shared_ptr< ::map_file::RoadSign_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_file::RoadSign_<ContainerAllocator> const> ConstPtr;

}; // struct RoadSign_

typedef ::map_file::RoadSign_<std::allocator<void> > RoadSign;

typedef boost::shared_ptr< ::map_file::RoadSign > RoadSignPtr;
typedef boost::shared_ptr< ::map_file::RoadSign const> RoadSignConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_file::RoadSign_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_file::RoadSign_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace map_file

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'map_file': ['/home/hj/catkin_ws/src/data/packages/map_file/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::map_file::RoadSign_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_file::RoadSign_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_file::RoadSign_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_file::RoadSign_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_file::RoadSign_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_file::RoadSign_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_file::RoadSign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b77ca92f4f478f9746572f6ef94ad9e4";
  }

  static const char* value(const ::map_file::RoadSign_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb77ca92f4f478f97ULL;
  static const uint64_t static_value2 = 0x46572f6ef94ad9e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::map_file::RoadSign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_file/RoadSign";
  }

  static const char* value(const ::map_file::RoadSign_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_file::RoadSign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n\
int32 vid\n\
int32 plid\n\
int32 type # Don't use wide character\n\
int32 linkid\n\
";
  }

  static const char* value(const ::map_file::RoadSign_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_file::RoadSign_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.vid);
      stream.next(m.plid);
      stream.next(m.type);
      stream.next(m.linkid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoadSign_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_file::RoadSign_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::map_file::RoadSign_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "vid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.vid);
    s << indent << "plid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.plid);
    s << indent << "type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.type);
    s << indent << "linkid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.linkid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAP_FILE_MESSAGE_ROADSIGN_H