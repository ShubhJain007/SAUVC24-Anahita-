// Generated by gencpp from file uuv_control_msgs/FrontSearch.msg
// DO NOT EDIT!


#ifndef UUV_CONTROL_MSGS_MESSAGE_FRONTSEARCH_H
#define UUV_CONTROL_MSGS_MESSAGE_FRONTSEARCH_H

#include <ros/service_traits.h>


#include <uuv_control_msgs/FrontSearchRequest.h>
#include <uuv_control_msgs/FrontSearchResponse.h>


namespace uuv_control_msgs
{

struct FrontSearch
{

typedef FrontSearchRequest Request;
typedef FrontSearchResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FrontSearch
} // namespace uuv_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::uuv_control_msgs::FrontSearch > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::uuv_control_msgs::FrontSearch&) { return value(); }
};

template<>
struct DataType< ::uuv_control_msgs::FrontSearch > {
  static const char* value()
  {
    return "uuv_control_msgs/FrontSearch";
  }

  static const char* value(const ::uuv_control_msgs::FrontSearch&) { return value(); }
};


// service_traits::MD5Sum< ::uuv_control_msgs::FrontSearchRequest> should match
// service_traits::MD5Sum< ::uuv_control_msgs::FrontSearch >
template<>
struct MD5Sum< ::uuv_control_msgs::FrontSearchRequest>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_control_msgs::FrontSearch >::value();
  }
  static const char* value(const ::uuv_control_msgs::FrontSearchRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_control_msgs::FrontSearchRequest> should match
// service_traits::DataType< ::uuv_control_msgs::FrontSearch >
template<>
struct DataType< ::uuv_control_msgs::FrontSearchRequest>
{
  static const char* value()
  {
    return DataType< ::uuv_control_msgs::FrontSearch >::value();
  }
  static const char* value(const ::uuv_control_msgs::FrontSearchRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::uuv_control_msgs::FrontSearchResponse> should match
// service_traits::MD5Sum< ::uuv_control_msgs::FrontSearch >
template<>
struct MD5Sum< ::uuv_control_msgs::FrontSearchResponse>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_control_msgs::FrontSearch >::value();
  }
  static const char* value(const ::uuv_control_msgs::FrontSearchResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_control_msgs::FrontSearchResponse> should match
// service_traits::DataType< ::uuv_control_msgs::FrontSearch >
template<>
struct DataType< ::uuv_control_msgs::FrontSearchResponse>
{
  static const char* value()
  {
    return DataType< ::uuv_control_msgs::FrontSearch >::value();
  }
  static const char* value(const ::uuv_control_msgs::FrontSearchResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UUV_CONTROL_MSGS_MESSAGE_FRONTSEARCH_H
