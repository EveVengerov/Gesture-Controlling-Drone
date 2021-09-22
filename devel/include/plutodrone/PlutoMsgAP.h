// Generated by gencpp from file plutodrone/PlutoMsgAP.msg
// DO NOT EDIT!


#ifndef PLUTODRONE_MESSAGE_PLUTOMSGAP_H
#define PLUTODRONE_MESSAGE_PLUTOMSGAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace plutodrone
{
template <class ContainerAllocator>
struct PlutoMsgAP_
{
  typedef PlutoMsgAP_<ContainerAllocator> Type;

  PlutoMsgAP_()
    : rcRoll(0)
    , rcPitch(0)
    , rcYaw(0)
    , rcThrottle(0)
    , plutoIndex(0)
    , commandType(0)  {
    }
  PlutoMsgAP_(const ContainerAllocator& _alloc)
    : rcRoll(0)
    , rcPitch(0)
    , rcYaw(0)
    , rcThrottle(0)
    , plutoIndex(0)
    , commandType(0)  {
  (void)_alloc;
    }



   typedef int64_t _rcRoll_type;
  _rcRoll_type rcRoll;

   typedef int64_t _rcPitch_type;
  _rcPitch_type rcPitch;

   typedef int64_t _rcYaw_type;
  _rcYaw_type rcYaw;

   typedef int64_t _rcThrottle_type;
  _rcThrottle_type rcThrottle;

   typedef int64_t _plutoIndex_type;
  _plutoIndex_type plutoIndex;

   typedef int8_t _commandType_type;
  _commandType_type commandType;





  typedef boost::shared_ptr< ::plutodrone::PlutoMsgAP_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::plutodrone::PlutoMsgAP_<ContainerAllocator> const> ConstPtr;

}; // struct PlutoMsgAP_

typedef ::plutodrone::PlutoMsgAP_<std::allocator<void> > PlutoMsgAP;

typedef boost::shared_ptr< ::plutodrone::PlutoMsgAP > PlutoMsgAPPtr;
typedef boost::shared_ptr< ::plutodrone::PlutoMsgAP const> PlutoMsgAPConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::plutodrone::PlutoMsgAP_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace plutodrone

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'plutodrone': ['/home/maha/catkin_ws/src/pluto-ros-package/plutodrone/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::plutodrone::PlutoMsgAP_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::plutodrone::PlutoMsgAP_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::plutodrone::PlutoMsgAP_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d14e97c50a8a33e16533e3af6806fc5";
  }

  static const char* value(const ::plutodrone::PlutoMsgAP_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d14e97c50a8a33eULL;
  static const uint64_t static_value2 = 0x16533e3af6806fc5ULL;
};

template<class ContainerAllocator>
struct DataType< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >
{
  static const char* value()
  {
    return "plutodrone/PlutoMsgAP";
  }

  static const char* value(const ::plutodrone::PlutoMsgAP_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 rcRoll\n\
int64 rcPitch\n\
int64 rcYaw\n\
int64 rcThrottle\n\
int64 plutoIndex\n\
int8 commandType\n\
";
  }

  static const char* value(const ::plutodrone::PlutoMsgAP_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.rcRoll);
      stream.next(m.rcPitch);
      stream.next(m.rcYaw);
      stream.next(m.rcThrottle);
      stream.next(m.plutoIndex);
      stream.next(m.commandType);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlutoMsgAP_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::plutodrone::PlutoMsgAP_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::plutodrone::PlutoMsgAP_<ContainerAllocator>& v)
  {
    s << indent << "rcRoll: ";
    Printer<int64_t>::stream(s, indent + "  ", v.rcRoll);
    s << indent << "rcPitch: ";
    Printer<int64_t>::stream(s, indent + "  ", v.rcPitch);
    s << indent << "rcYaw: ";
    Printer<int64_t>::stream(s, indent + "  ", v.rcYaw);
    s << indent << "rcThrottle: ";
    Printer<int64_t>::stream(s, indent + "  ", v.rcThrottle);
    s << indent << "plutoIndex: ";
    Printer<int64_t>::stream(s, indent + "  ", v.plutoIndex);
    s << indent << "commandType: ";
    Printer<int8_t>::stream(s, indent + "  ", v.commandType);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLUTODRONE_MESSAGE_PLUTOMSGAP_H
