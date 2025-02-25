;; Auto-generated. Do not edit!


(when (boundp 'motion_layer::rollPIDFeedback)
  (if (not (find-package "MOTION_LAYER"))
    (make-package "MOTION_LAYER"))
  (shadow 'rollPIDFeedback (find-package "MOTION_LAYER")))
(unless (find-package "MOTION_LAYER::ROLLPIDFEEDBACK")
  (make-package "MOTION_LAYER::ROLLPIDFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude rollPIDFeedback.msg.html


(defclass motion_layer::rollPIDFeedback
  :super ros::object
  :slots (_current_roll ))

(defmethod motion_layer::rollPIDFeedback
  (:init
   (&key
    ((:current_roll __current_roll) 0.0)
    )
   (send-super :init)
   (setq _current_roll (float __current_roll))
   self)
  (:current_roll
   (&optional __current_roll)
   (if __current_roll (setq _current_roll __current_roll)) _current_roll)
  (:serialization-length
   ()
   (+
    ;; float32 _current_roll
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current_roll
       (sys::poke _current_roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current_roll
     (setq _current_roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motion_layer::rollPIDFeedback :md5sum-) "0b1c3bb55f73ee21b48520acf40dcb7f")
(setf (get motion_layer::rollPIDFeedback :datatype-) "motion_layer/rollPIDFeedback")
(setf (get motion_layer::rollPIDFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
float32 current_roll


")



(provide :motion_layer/rollPIDFeedback "0b1c3bb55f73ee21b48520acf40dcb7f")


