// Generated by gencpp from file master_layer/CurrentTaskResponse.msg
// DO NOT EDIT!


#ifndef MASTER_LAYER_MESSAGE_CURRENTTASKRESPONSE_H
#define MASTER_LAYER_MESSAGE_CURRENTTASKRESPONSE_H


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
struct CurrentTaskResponse_
{
  typedef CurrentTaskResponse_<ContainerAllocator> Type;

  CurrentTaskResponse_()
    : status(false)  {
    }
  CurrentTaskResponse_(const ContainerAllocator& _alloc)
    : status(false)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::master_layer::CurrentTaskResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::master_layer::CurrentTaskResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CurrentTaskResponse_

typedef ::master_layer::CurrentTaskResponse_<std::allocator<void> > CurrentTaskResponse;

typedef boost::shared_ptr< ::master_layer::CurrentTaskResponse > CurrentTaskResponsePtr;
typedef boost::shared_ptr< ::master_layer::CurrentTaskResponse const> CurrentTaskResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::master_layer::CurrentTaskResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::master_layer::CurrentTaskResponse_<ContainerAllocator1> & lhs, const ::master_layer::CurrentTaskResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::master_layer::CurrentTaskResponse_<ContainerAllocator1> & lhs, const ::master_layer::CurrentTaskResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace master_layer

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::master_layer::CurrentTaskResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master_layer::CurrentTaskResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master_layer::CurrentTaskResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a1255d4d998bd4d6585c64639b5ee9a";
  }

  static const char* value(const ::master_layer::CurrentTaskResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a1255d4d998bd4dULL;
  static const uint64_t static_value2 = 0x6585c64639b5ee9aULL;
};

template<class ContainerAllocator>
struct DataType< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "master_layer/CurrentTaskResponse";
  }

  static const char* value(const ::master_layer::CurrentTaskResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool status\n"
;
  }

  static const char* value(const ::master_layer::CurrentTaskResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CurrentTaskResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::master_layer::CurrentTaskResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::master_layer::CurrentTaskResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MASTER_LAYER_MESSAGE_CURRENTTASKRESPONSE_H
