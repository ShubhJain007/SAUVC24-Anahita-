// Generated by gencpp from file color_calibration/DumpRequest.msg
// DO NOT EDIT!


#ifndef COLOR_CALIBRATION_MESSAGE_DUMPREQUEST_H
#define COLOR_CALIBRATION_MESSAGE_DUMPREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace color_calibration
{
template <class ContainerAllocator>
struct DumpRequest_
{
  typedef DumpRequest_<ContainerAllocator> Type;

  DumpRequest_()
    : filename()  {
    }
  DumpRequest_(const ContainerAllocator& _alloc)
    : filename(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filename_type;
  _filename_type filename;





  typedef boost::shared_ptr< ::color_calibration::DumpRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::color_calibration::DumpRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DumpRequest_

typedef ::color_calibration::DumpRequest_<std::allocator<void> > DumpRequest;

typedef boost::shared_ptr< ::color_calibration::DumpRequest > DumpRequestPtr;
typedef boost::shared_ptr< ::color_calibration::DumpRequest const> DumpRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::color_calibration::DumpRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::color_calibration::DumpRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::color_calibration::DumpRequest_<ContainerAllocator1> & lhs, const ::color_calibration::DumpRequest_<ContainerAllocator2> & rhs)
{
  return lhs.filename == rhs.filename;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::color_calibration::DumpRequest_<ContainerAllocator1> & lhs, const ::color_calibration::DumpRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace color_calibration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::color_calibration::DumpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::color_calibration::DumpRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::color_calibration::DumpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::color_calibration::DumpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::color_calibration::DumpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::color_calibration::DumpRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::color_calibration::DumpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "030824f52a0628ead956fb9d67e66ae9";
  }

  static const char* value(const ::color_calibration::DumpRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x030824f52a0628eaULL;
  static const uint64_t static_value2 = 0xd956fb9d67e66ae9ULL;
};

template<class ContainerAllocator>
struct DataType< ::color_calibration::DumpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "color_calibration/DumpRequest";
  }

  static const char* value(const ::color_calibration::DumpRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::color_calibration::DumpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string filename\n"
;
  }

  static const char* value(const ::color_calibration::DumpRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::color_calibration::DumpRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filename);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DumpRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::color_calibration::DumpRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::color_calibration::DumpRequest_<ContainerAllocator>& v)
  {
    s << indent << "filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filename);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COLOR_CALIBRATION_MESSAGE_DUMPREQUEST_H
