; Auto-generated. Do not edit!


(cl:in-package motion_layer-msg)


;//! \htmlinclude pitchPIDFeedback.msg.html

(cl:defclass <pitchPIDFeedback> (roslisp-msg-protocol:ros-message)
  ((current_pitch
    :reader current_pitch
    :initarg :current_pitch
    :type cl:float
    :initform 0.0))
)

(cl:defclass pitchPIDFeedback (<pitchPIDFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pitchPIDFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pitchPIDFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_layer-msg:<pitchPIDFeedback> is deprecated: use motion_layer-msg:pitchPIDFeedback instead.")))

(cl:ensure-generic-function 'current_pitch-val :lambda-list '(m))
(cl:defmethod current_pitch-val ((m <pitchPIDFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_layer-msg:current_pitch-val is deprecated.  Use motion_layer-msg:current_pitch instead.")
  (current_pitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pitchPIDFeedback>) ostream)
  "Serializes a message object of type '<pitchPIDFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pitchPIDFeedback>) istream)
  "Deserializes a message object of type '<pitchPIDFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_pitch) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pitchPIDFeedback>)))
  "Returns string type for a message object of type '<pitchPIDFeedback>"
  "motion_layer/pitchPIDFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pitchPIDFeedback)))
  "Returns string type for a message object of type 'pitchPIDFeedback"
  "motion_layer/pitchPIDFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pitchPIDFeedback>)))
  "Returns md5sum for a message object of type '<pitchPIDFeedback>"
  "4a3adda3d08a8fafdac976fb1d309ab9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pitchPIDFeedback)))
  "Returns md5sum for a message object of type 'pitchPIDFeedback"
  "4a3adda3d08a8fafdac976fb1d309ab9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pitchPIDFeedback>)))
  "Returns full string definition for message of type '<pitchPIDFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float32 current_pitch~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pitchPIDFeedback)))
  "Returns full string definition for message of type 'pitchPIDFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float32 current_pitch~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pitchPIDFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pitchPIDFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'pitchPIDFeedback
    (cl:cons ':current_pitch (current_pitch msg))
))
