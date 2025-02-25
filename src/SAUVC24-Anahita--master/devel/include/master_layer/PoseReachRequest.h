// Generated by gencpp from file master_layer/PoseReachRequest.msg
// DO NOT EDIT!


#ifndef MASTER_LAYER_MESSAGE_POSEREACHREQUEST_H
#define MASTER_LAYER_MESSAGE_POSEREACHREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace master_layer
{
template <class ContainerAllocator>
struct PoseReachRequest_
{
  typedef PoseReachRequest_<ContainerAllocator> Type;

  PoseReachRequest_()
    : time_out(0.0)  {
    }
  PoseReachRequest_(const ContainerAllocator& _alloc)
    : time_out(0.0)  {
  (void)_alloc;
    }



   typedef double _time_out_type;
  _time_out_type time_out;





  typedef boost::shared_ptr< ::master_layer::PoseReachRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::master_layer::PoseReachRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PoseReachRequest_

typedef ::master_layer::PoseReachRequest_<std::allocator<void> > PoseReachRequest;

typedef boost::shared_ptr< ::master_layer::PoseReachRequest > PoseReachRequestPtr;
typedef boost::shared_ptr< ::master_layer::PoseReachRequest const> PoseReachRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::master_layer::PoseReachRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::master_layer::PoseReachRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::master_layer::PoseReachRequest_<ContainerAllocator1> & lhs, const ::master_layer::PoseReachRequest_<ContainerAllocator2> & rhs)
{
  return lhs.time_out == rhs.time_out;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::master_layer::PoseReachRequest_<ContainerAllocator1> & lhs, const ::master_layer::PoseReachRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace master_layer

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::master_layer::PoseReachRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::master_layer::PoseReachRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_layer::PoseReachRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_layer::PoseReachRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_layer::PoseReachRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_layer::PoseReachRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::master_layer::PoseReachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c54f013c0155ba411cc664492d85ea3d";
  }

  static const char* value(const ::master_layer::PoseReachRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc54f013c0155ba41ULL;
  static const uint64_t static_value2 = 0x1cc664492d85ea3dULL;
};

template<class ContainerAllocator>
struct DataType< ::master_layer::PoseReachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "master_layer/PoseReachRequest";
  }

  static const char* value(const ::master_layer::PoseReachRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::master_layer::PoseReachRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 time_out\n"
;
  }

  static const char* value(const ::master_layer::PoseReachRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::master_layer::PoseReachRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_out);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseReachRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::master_layer::PoseReachRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::master_layer::PoseReachRequest_<ContainerAllocator>& v)
  {
    s << indent << "time_out: ";
    Printer<double>::stream(s, indent + "  ", v.time_out);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MASTER_LAYER_MESSAGE_POSEREACHREQUEST_H
