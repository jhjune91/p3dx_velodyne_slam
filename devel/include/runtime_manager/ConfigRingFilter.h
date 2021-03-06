// Generated by gencpp from file runtime_manager/ConfigRingFilter.msg
// DO NOT EDIT!


#ifndef RUNTIME_MANAGER_MESSAGE_CONFIGRINGFILTER_H
#define RUNTIME_MANAGER_MESSAGE_CONFIGRINGFILTER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace runtime_manager
{
template <class ContainerAllocator>
struct ConfigRingFilter_
{
  typedef ConfigRingFilter_<ContainerAllocator> Type;

  ConfigRingFilter_()
    : ring_div(0)
    , voxel_leaf_size(0.0)  {
    }
  ConfigRingFilter_(const ContainerAllocator& _alloc)
    : ring_div(0)
    , voxel_leaf_size(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _ring_div_type;
  _ring_div_type ring_div;

   typedef float _voxel_leaf_size_type;
  _voxel_leaf_size_type voxel_leaf_size;




  typedef boost::shared_ptr< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> const> ConstPtr;

}; // struct ConfigRingFilter_

typedef ::runtime_manager::ConfigRingFilter_<std::allocator<void> > ConfigRingFilter;

typedef boost::shared_ptr< ::runtime_manager::ConfigRingFilter > ConfigRingFilterPtr;
typedef boost::shared_ptr< ::runtime_manager::ConfigRingFilter const> ConfigRingFilterConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::runtime_manager::ConfigRingFilter_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace runtime_manager

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'runtime_manager': ['/home/hj/catkin_ws/src/util/packages/runtime_manager/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2962bd173a548074fde20317048312c";
  }

  static const char* value(const ::runtime_manager::ConfigRingFilter_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2962bd173a54807ULL;
  static const uint64_t static_value2 = 0x4fde20317048312cULL;
};

template<class ContainerAllocator>
struct DataType< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "runtime_manager/ConfigRingFilter";
  }

  static const char* value(const ::runtime_manager::ConfigRingFilter_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 ring_div\n\
float32 voxel_leaf_size\n\
\n\
";
  }

  static const char* value(const ::runtime_manager::ConfigRingFilter_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ring_div);
      stream.next(m.voxel_leaf_size);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConfigRingFilter_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::runtime_manager::ConfigRingFilter_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::runtime_manager::ConfigRingFilter_<ContainerAllocator>& v)
  {
    s << indent << "ring_div: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ring_div);
    s << indent << "voxel_leaf_size: ";
    Printer<float>::stream(s, indent + "  ", v.voxel_leaf_size);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RUNTIME_MANAGER_MESSAGE_CONFIGRINGFILTER_H
