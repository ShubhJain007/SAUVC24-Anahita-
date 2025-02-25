; Auto-generated. Do not edit!


(cl:in-package master_layer-msg)


;//! \htmlinclude Pressure.msg.html

(cl:defclass <Pressure> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fluid_pressure
    :reader fluid_pressure
    :initarg :fluid_pressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pressure (<Pressure>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pressure>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pressure)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name master_layer-msg:<Pressure> is deprecated: use master_layer-msg:Pressure instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Pressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_layer-msg:header-val is deprecated.  Use master_layer-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fluid_pressure-val :lambda-list '(m))
(cl:defmethod fluid_pressure-val ((m <Pressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_layer-msg:fluid_pressure-val is deprecated.  Use master_layer-msg:fluid_pressure instead.")
  (fluid_pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pressure>) ostream)
  "Serializes a message object of type '<Pressure>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fluid_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pressure>) istream)
  "Deserializes a message object of type '<Pressure>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fluid_pressure) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pressure>)))
  "Returns string type for a message object of type '<Pressure>"
  "master_layer/Pressure")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pressure)))
  "Returns string type for a message object of type 'Pressure"
  "master_layer/Pressure")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pressure>)))
  "Returns md5sum for a message object of type '<Pressure>"
  "c1e5cbdea79d3bac69c5dcce46192d44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pressure)))
  "Returns md5sum for a message object of type 'Pressure"
  "c1e5cbdea79d3bac69c5dcce46192d44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pressure>)))
  "Returns full string definition for message of type '<Pressure>"
  (cl:format cl:nil "# Single pressure reading.  This message is appropriate for measuring the~%# pressure inside of a fluid (air, water, etc).  This also includes~%# atmospheric or barometric pressure.~%~%Header header             # timestamp of the measurement~%                          # frame_id is the location of the pressure sensor~%~%float32 fluid_pressure    # Absolute pressure reading in Pascals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pressure)))
  "Returns full string definition for message of type 'Pressure"
  (cl:format cl:nil "# Single pressure reading.  This message is appropriate for measuring the~%# pressure inside of a fluid (air, water, etc).  This also includes~%# atmospheric or barometric pressure.~%~%Header header             # timestamp of the measurement~%                          # frame_id is the location of the pressure sensor~%~%float32 fluid_pressure    # Absolute pressure reading in Pascals~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pressure>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pressure>))
  "Converts a ROS message object to a list"
  (cl:list 'Pressure
    (cl:cons ':header (header msg))
    (cl:cons ':fluid_pressure (fluid_pressure msg))
))
