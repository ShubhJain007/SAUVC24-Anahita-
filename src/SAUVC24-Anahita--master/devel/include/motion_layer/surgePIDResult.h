// Generated by gencpp from file motion_layer/surgePIDResult.msg
// DO NOT EDIT!


#ifndef MOTION_LAYER_MESSAGE_SURGEPIDRESULT_H
#define MOTION_LAYER_MESSAGE_SURGEPIDRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace motion_layer
{
template <class ContainerAllocator>
struct surgePIDResult_
{
  typedef surgePIDResult_<ContainerAllocator> Type;

  surgePIDResult_()
    : final_surge(0.0)  {
    }
  surgePIDResult_(const ContainerAllocator& _alloc)
    : final_surge(0.0)  {
  (void)_alloc;
    }



   typedef float _final_surge_type;
  _final_surge_type final_surge;





  typedef boost::shared_ptr< ::motion_layer::surgePIDResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motion_layer::surgePIDResult_<ContainerAllocator> const> ConstPtr;

}; // struct surgePIDResult_

typedef ::motion_layer::surgePIDResult_<std::allocator<void> > surgePIDResult;

typedef boost::shared_ptr< ::motion_layer::surgePIDResult > surgePIDResultPtr;
typedef boost::shared_ptr< ::motion_layer::surgePIDResult const> surgePIDResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motion_layer::surgePIDResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motion_layer::surgePIDResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::motion_layer::surgePIDResult_<ContainerAllocator1> & lhs, const ::motion_layer::surgePIDResult_<ContainerAllocator2> & rhs)
{
  return lhs.final_surge == rhs.final_surge;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::motion_layer::surgePIDResult_<ContainerAllocator1> & lhs, const ::motion_layer::surgePIDResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace motion_layer

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::motion_layer::surgePIDResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motion_layer::surgePIDResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motion_layer::surgePIDResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motion_layer::surgePIDResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motion_layer::surgePIDResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motion_layer::surgePIDResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motion_layer::surgePIDResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3358e285f4a1ea0341fb16dd8cb38d50";
  }

  static const char* value(const ::motion_layer::surgePIDResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3358e285f4a1ea03ULL;
  static const uint64_t static_value2 = 0x41fb16dd8cb38d50ULL;
};

template<class ContainerAllocator>
struct DataType< ::motion_layer::surgePIDResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motion_layer/surgePIDResult";
  }

  static const char* value(const ::motion_layer::surgePIDResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motion_layer::surgePIDResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"float32 final_surge\n"
;
  }

  static const char* value(const ::motion_layer::surgePIDResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motion_layer::surgePIDResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.final_surge);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct surgePIDResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motion_layer::surgePIDResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motion_layer::surgePIDResult_<ContainerAllocator>& v)
  {
    s << indent << "final_surge: ";
    Printer<float>::stream(s, indent + "  ", v.final_surge);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTION_LAYER_MESSAGE_SURGEPIDRESULT_H
