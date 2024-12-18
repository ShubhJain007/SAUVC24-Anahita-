// Generated by gencpp from file master_layer/RequestMarkerAngleRequest.msg
// DO NOT EDIT!


#ifndef MASTER_LAYER_MESSAGE_REQUESTMARKERANGLEREQUEST_H
#define MASTER_LAYER_MESSAGE_REQUESTMARKERANGLEREQUEST_H


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
struct RequestMarkerAngleRequest_
{
  typedef RequestMarkerAngleRequest_<ContainerAllocator> Type;

  RequestMarkerAngleRequest_()
    {
    }
  RequestMarkerAngleRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RequestMarkerAngleRequest_

typedef ::master_layer::RequestMarkerAngleRequest_<std::allocator<void> > RequestMarkerAngleRequest;

typedef boost::shared_ptr< ::master_layer::RequestMarkerAngleRequest > RequestMarkerAngleRequestPtr;
typedef boost::shared_ptr< ::master_layer::RequestMarkerAngleRequest const> RequestMarkerAngleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace master_layer

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "master_layer/RequestMarkerAngleRequest";
  }

  static const char* value(const ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RequestMarkerAngleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::master_layer::RequestMarkerAngleRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MASTER_LAYER_MESSAGE_REQUESTMARKERANGLEREQUEST_H
