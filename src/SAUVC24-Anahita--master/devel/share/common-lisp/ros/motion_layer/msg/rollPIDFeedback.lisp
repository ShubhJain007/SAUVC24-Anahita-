; Auto-generated. Do not edit!


(cl:in-package motion_layer-msg)


;//! \htmlinclude rollPIDFeedback.msg.html

(cl:defclass <rollPIDFeedback> (roslisp-msg-protocol:ros-message)
  ((current_roll
    :reader current_roll
    :initarg :current_roll
    :type cl:float
    :initform 0.0))
)

(cl:defclass rollPIDFeedback (<rollPIDFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rollPIDFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rollPIDFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_layer-msg:<rollPIDFeedback> is deprecated: use motion_layer-msg:rollPIDFeedback instead.")))

(cl:ensure-generic-function 'current_roll-val :lambda-list '(m))
(cl:defmethod current_roll-val ((m <rollPIDFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_layer-msg:current_roll-val is deprecated.  Use motion_layer-msg:current_roll instead.")
  (current_roll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rollPIDFeedback>) ostream)
  "Serializes a message object of type '<rollPIDFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rollPIDFeedback>) istream)
  "Deserializes a message object of type '<rollPIDFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_roll) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rollPIDFeedback>)))
  "Returns string type for a message object of type '<rollPIDFeedback>"
  "motion_layer/rollPIDFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rollPIDFeedback)))
  "Returns string type for a message object of type 'rollPIDFeedback"
  "motion_layer/rollPIDFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rollPIDFeedback>)))
  "Returns md5sum for a message object of type '<rollPIDFeedback>"
  "0b1c3bb55f73ee21b48520acf40dcb7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rollPIDFeedback)))
  "Returns md5sum for a message object of type 'rollPIDFeedback"
  "0b1c3bb55f73ee21b48520acf40dcb7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rollPIDFeedback>)))
  "Returns full string definition for message of type '<rollPIDFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float32 current_roll~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rollPIDFeedback)))
  "Returns full string definition for message of type 'rollPIDFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float32 current_roll~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rollPIDFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rollPIDFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'rollPIDFeedback
    (cl:cons ':current_roll (current_roll msg))
))
