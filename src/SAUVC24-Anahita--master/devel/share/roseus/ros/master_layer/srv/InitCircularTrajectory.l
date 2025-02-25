;; Auto-generated. Do not edit!


(when (boundp 'master_layer::InitCircularTrajectory)
  (if (not (find-package "MASTER_LAYER"))
    (make-package "MASTER_LAYER"))
  (shadow 'InitCircularTrajectory (find-package "MASTER_LAYER")))
(unless (find-package "MASTER_LAYER::INITCIRCULARTRAJECTORY")
  (make-package "MASTER_LAYER::INITCIRCULARTRAJECTORY"))
(unless (find-package "MASTER_LAYER::INITCIRCULARTRAJECTORYREQUEST")
  (make-package "MASTER_LAYER::INITCIRCULARTRAJECTORYREQUEST"))
(unless (find-package "MASTER_LAYER::INITCIRCULARTRAJECTORYRESPONSE")
  (make-package "MASTER_LAYER::INITCIRCULARTRAJECTORYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass master_layer::InitCircularTrajectoryRequest
  :super ros::object
  :slots (_start_time _start_now _radius _center _is_clockwise _angle_offset _n_points _heading_offset _max_forward_speed _duration ))

(defmethod master_layer::InitCircularTrajectoryRequest
  (:init
   (&key
    ((:start_time __start_time) (instance std_msgs::Time :init))
    ((:start_now __start_now) nil)
    ((:radius __radius) 0.0)
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:is_clockwise __is_clockwise) nil)
    ((:angle_offset __angle_offset) 0.0)
    ((:n_points __n_points) 0)
    ((:heading_offset __heading_offset) 0.0)
    ((:max_forward_speed __max_forward_speed) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _start_time __start_time)
   (setq _start_now __start_now)
   (setq _radius (float __radius))
   (setq _center __center)
   (setq _is_clockwise __is_clockwise)
   (setq _angle_offset (float __angle_offset))
   (setq _n_points (round __n_points))
   (setq _heading_offset (float __heading_offset))
   (setq _max_forward_speed (float __max_forward_speed))
   (setq _duration (float __duration))
   self)
  (:start_time
   (&rest __start_time)
   (if (keywordp (car __start_time))
       (send* _start_time __start_time)
     (progn
       (if __start_time (setq _start_time (car __start_time)))
       _start_time)))
  (:start_now
   (&optional __start_now)
   (if __start_now (setq _start_now __start_now)) _start_now)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:is_clockwise
   (&optional __is_clockwise)
   (if __is_clockwise (setq _is_clockwise __is_clockwise)) _is_clockwise)
  (:angle_offset
   (&optional __angle_offset)
   (if __angle_offset (setq _angle_offset __angle_offset)) _angle_offset)
  (:n_points
   (&optional __n_points)
   (if __n_points (setq _n_points __n_points)) _n_points)
  (:heading_offset
   (&optional __heading_offset)
   (if __heading_offset (setq _heading_offset __heading_offset)) _heading_offset)
  (:max_forward_speed
   (&optional __max_forward_speed)
   (if __max_forward_speed (setq _max_forward_speed __max_forward_speed)) _max_forward_speed)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Time _start_time
    (send _start_time :serialization-length)
    ;; bool _start_now
    1
    ;; float64 _radius
    8
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; bool _is_clockwise
    1
    ;; float64 _angle_offset
    8
    ;; int32 _n_points
    4
    ;; float64 _heading_offset
    8
    ;; float64 _max_forward_speed
    8
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Time _start_time
       (send _start_time :serialize s)
     ;; bool _start_now
       (if _start_now (write-byte -1 s) (write-byte 0 s))
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; bool _is_clockwise
       (if _is_clockwise (write-byte -1 s) (write-byte 0 s))
     ;; float64 _angle_offset
       (sys::poke _angle_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _n_points
       (write-long _n_points s)
     ;; float64 _heading_offset
       (sys::poke _heading_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_forward_speed
       (sys::poke _max_forward_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Time _start_time
     (send _start_time :deserialize buf ptr-) (incf ptr- (send _start_time :serialization-length))
   ;; bool _start_now
     (setq _start_now (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; bool _is_clockwise
     (setq _is_clockwise (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _angle_offset
     (setq _angle_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _n_points
     (setq _n_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _heading_offset
     (setq _heading_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_forward_speed
     (setq _max_forward_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass master_layer::InitCircularTrajectoryResponse
  :super ros::object
  :slots (_success ))

(defmethod master_layer::InitCircularTrajectoryResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass master_layer::InitCircularTrajectory
  :super ros::object
  :slots ())

(setf (get master_layer::InitCircularTrajectory :md5sum-) "4e2b6d8506f8a3b1f6ffe498d85ccc39")
(setf (get master_layer::InitCircularTrajectory :datatype-) "master_layer/InitCircularTrajectory")
(setf (get master_layer::InitCircularTrajectory :request) master_layer::InitCircularTrajectoryRequest)
(setf (get master_layer::InitCircularTrajectory :response) master_layer::InitCircularTrajectoryResponse)

(defmethod master_layer::InitCircularTrajectoryRequest
  (:response () (instance master_layer::InitCircularTrajectoryResponse :init)))

(setf (get master_layer::InitCircularTrajectoryRequest :md5sum-) "4e2b6d8506f8a3b1f6ffe498d85ccc39")
(setf (get master_layer::InitCircularTrajectoryRequest :datatype-) "master_layer/InitCircularTrajectoryRequest")
(setf (get master_layer::InitCircularTrajectoryRequest :definition-)
      "# Copyright (c) 2016 The UUV Simulator Authors.
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

std_msgs/Time start_time
bool start_now
float64 radius
geometry_msgs/Point center
bool is_clockwise
float64 angle_offset
int32 n_points
float64 heading_offset
float64 max_forward_speed
float64 duration

================================================================================
MSG: std_msgs/Time
time data

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")

(setf (get master_layer::InitCircularTrajectoryResponse :md5sum-) "4e2b6d8506f8a3b1f6ffe498d85ccc39")
(setf (get master_layer::InitCircularTrajectoryResponse :datatype-) "master_layer/InitCircularTrajectoryResponse")
(setf (get master_layer::InitCircularTrajectoryResponse :definition-)
      "# Copyright (c) 2016 The UUV Simulator Authors.
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

std_msgs/Time start_time
bool start_now
float64 radius
geometry_msgs/Point center
bool is_clockwise
float64 angle_offset
int32 n_points
float64 heading_offset
float64 max_forward_speed
float64 duration

================================================================================
MSG: std_msgs/Time
time data

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")



(provide :master_layer/InitCircularTrajectory "4e2b6d8506f8a3b1f6ffe498d85ccc39")


