// Generated by gencpp from file map_file/DTLane.msg
// DO NOT EDIT!


#ifndef MAP_FILE_MESSAGE_DTLANE_H
#define MAP_FILE_MESSAGE_DTLANE_H


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
struct DTLane_
{
  typedef DTLane_<ContainerAllocator> Type;

  DTLane_()
    : did(0)
    , dist(0.0)
    , pid(0)
    , dir(0.0)
    , apara(0.0)
    , r(0.0)
    , slope(0.0)
    , cant(0.0)
    , lw(0.0)
    , rw(0.0)  {
    }
  DTLane_(const ContainerAllocator& _alloc)
    : did(0)
    , dist(0.0)
    , pid(0)
    , dir(0.0)
    , apara(0.0)
    , r(0.0)
    , slope(0.0)
    , cant(0.0)
    , lw(0.0)
    , rw(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _did_type;
  _did_type did;

   typedef double _dist_type;
  _dist_type dist;

   typedef int32_t _pid_type;
  _pid_type pid;

   typedef double _dir_type;
  _dir_type dir;

   typedef double _apara_type;
  _apara_type apara;

   typedef double _r_type;
  _r_type r;

   typedef double _slope_type;
  _slope_type slope;

   typedef double _cant_type;
  _cant_type cant;

   typedef double _lw_type;
  _lw_type lw;

   typedef double _rw_type;
  _rw_type rw;




  typedef boost::shared_ptr< ::map_file::DTLane_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_file::DTLane_<ContainerAllocator> const> ConstPtr;

}; // struct DTLane_

typedef ::map_file::DTLane_<std::allocator<void> > DTLane;

typedef boost::shared_ptr< ::map_file::DTLane > DTLanePtr;
typedef boost::shared_ptr< ::map_file::DTLane const> DTLaneConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_file::DTLane_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_file::DTLane_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::map_file::DTLane_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_file::DTLane_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_file::DTLane_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_file::DTLane_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_file::DTLane_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_file::DTLane_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_file::DTLane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "50d83078491bca58f98774489d1f1ac9";
  }

  static const char* value(const ::map_file::DTLane_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x50d83078491bca58ULL;
  static const uint64_t static_value2 = 0xf98774489d1f1ac9ULL;
};

template<class ContainerAllocator>
struct DataType< ::map_file::DTLane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_file/DTLane";
  }

  static const char* value(const ::map_file::DTLane_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_file::DTLane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 did\n\
float64 dist\n\
int32 pid\n\
float64 dir\n\
float64 apara\n\
float64 r\n\
float64 slope\n\
float64 cant\n\
float64 lw\n\
float64 rw\n\
";
  }

  static const char* value(const ::map_file::DTLane_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_file::DTLane_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.did);
      stream.next(m.dist);
      stream.next(m.pid);
      stream.next(m.dir);
      stream.next(m.apara);
      stream.next(m.r);
      stream.next(m.slope);
      stream.next(m.cant);
      stream.next(m.lw);
      stream.next(m.rw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DTLane_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_file::DTLane_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::map_file::DTLane_<ContainerAllocator>& v)
  {
    s << indent << "did: ";
    Printer<int32_t>::stream(s, indent + "  ", v.did);
    s << indent << "dist: ";
    Printer<double>::stream(s, indent + "  ", v.dist);
    s << indent << "pid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pid);
    s << indent << "dir: ";
    Printer<double>::stream(s, indent + "  ", v.dir);
    s << indent << "apara: ";
    Printer<double>::stream(s, indent + "  ", v.apara);
    s << indent << "r: ";
    Printer<double>::stream(s, indent + "  ", v.r);
    s << indent << "slope: ";
    Printer<double>::stream(s, indent + "  ", v.slope);
    s << indent << "cant: ";
    Printer<double>::stream(s, indent + "  ", v.cant);
    s << indent << "lw: ";
    Printer<double>::stream(s, indent + "  ", v.lw);
    s << indent << "rw: ";
    Printer<double>::stream(s, indent + "  ", v.rw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAP_FILE_MESSAGE_DTLANE_H
