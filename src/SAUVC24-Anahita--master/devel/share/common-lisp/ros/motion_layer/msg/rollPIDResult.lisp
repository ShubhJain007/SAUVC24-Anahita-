; Auto-generated. Do not edit!


(cl:in-package motion_layer-msg)


;//! \htmlinclude rollPIDResult.msg.html

(cl:defclass <rollPIDResult> (roslisp-msg-protocol:ros-message)
  ((final_roll
    :reader final_roll
    :initarg :final_roll
    :type cl:float
    :initform 0.0))
)

(cl:defclass rollPIDResult (<rollPIDResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rollPIDResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rollPIDResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_layer-msg:<rollPIDResult> is deprecated: use motion_layer-msg:rollPIDResult instead.")))

(cl:ensure-generic-function 'final_roll-val :lambda-list '(m))
(cl:defmethod final_roll-val ((m <rollPIDResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_layer-msg:final_roll-val is deprecated.  Use motion_layer-msg:final_roll instead.")
  (final_roll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rollPIDResult>) ostream)
  "Serializes a message object of type '<rollPIDResult>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'final_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rollPIDResult>) istream)
  "Deserializes a message object of type '<rollPIDResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_roll) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rollPIDResult>)))
  "Returns string type for a message object of type '<rollPIDResult>"
  "motion_layer/rollPIDResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rollPIDResult)))
  "Returns string type for a message object of type 'rollPIDResult"
  "motion_layer/rollPIDResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rollPIDResult>)))
  "Returns md5sum for a message object of type '<rollPIDResult>"
  "4cd57ac3ec9ec5136175152d30d31d48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rollPIDResult)))
  "Returns md5sum for a message object of type 'rollPIDResult"
  "4cd57ac3ec9ec5136175152d30d31d48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rollPIDResult>)))
  "Returns full string definition for message of type '<rollPIDResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float32 final_roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rollPIDResult)))
  "Returns full string definition for message of type 'rollPIDResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float32 final_roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rollPIDResult>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rollPIDResult>))
  "Converts a ROS message object to a list"
  (cl:list 'rollPIDResult
    (cl:cons ':final_roll (final_roll msg))
))
