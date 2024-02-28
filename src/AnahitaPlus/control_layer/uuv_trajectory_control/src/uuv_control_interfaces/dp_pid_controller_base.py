# Copyright (c) 2016 The UUV Simulator Authors.
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import numpy as np
from std_msgs.msg import Float32MultiArray
import rospy
from uuv_control_msgs.srv import *
from uuv_control_interfaces.dp_controller_base import DPControllerBase
import tf.transformations as trans
import math
from PID import PIDRegulator

class DPPIDControllerBase(DPControllerBase):
    """
    This is an abstract class for PID-based controllers. The base class method
    update_controller must be overridden in other for a controller to work.
    """

    def __init__(self, *args):
        # Start the super class
        DPControllerBase.__init__(self, *args)
        self._logger.info('Initializing: PID controller')
        # Proportional gains
        self._Kp = np.zeros(shape=(6, 6))
        # Derivative gains
        self._Kd = np.zeros(shape=(6, 6))
        # Integral gains
        self._Ki = np.zeros(shape=(6, 6))
        # Integrator component
        self._int = np.zeros(6)
        # Error for the vehicle pose
        self._error_pose = np.zeros(6)
        arr= np.zeros(3)
        def wrench_callback(msg):
        # Extract .force.x value
            arr[0]= msg.data[0]
            arr[1]= msg.data[1]
            arr[2] = msg.data[2]  # Update the value in the list

        # Print for visualization (optional)
        
        rospy.Subscriber("/calibrate", Float32MultiArray, wrench_callback)
        if rospy.has_param('~Kp'):
            Kp_diag = rospy.get_param('~Kp')
            #if len(Kp_diag) == 6:
            Kp_diag[0]= arr[0]
            self._Kp = np.diag(Kp_diag)

        # for calibration using SMAC done by us (AUVIITK)
	

        #self._logger.info('Kp=' + str([self._Kp[i, i] for i in range(6)]))

        if rospy.has_param('~Kd'):
            Kd_diag = rospy.get_param('~Kd')
            #if len(Kd_diag) == 6:
            Kd_diag[0] = arr[1]
            self._Kd = np.diag(Kd_diag)
            #else:
                #raise rospy.ROSException('Kd matrix error: 6 coefficients '
                                         #'needed')

        #self._logger.info('Kd=' + str([self._Kd[i, i] for i in range(6)]))

        if rospy.has_param('~Ki'):
            Ki_diag = rospy.get_param('~Ki')
            #if len(Ki_diag) == 6:
	    Ki_diag[0] = arr[2]
            self._Ki = np.diag(Ki_diag)
           # else:
               # raise rospy.ROSException('Ki matrix error: 6 coefficients '
                                         #'needed')

        #self._logger.info('Ki=' + str([self._Ki[i, i] for i in range(6)]))

        self._services['set_pid_params'] = rospy.Service(
            'set_pid_params',
            SetPIDParams,
            self.set_pid_params_callback)
        self._services['get_pid_params'] = rospy.Service(
            'get_pid_params',
            GetPIDParams,
            self.get_pid_params_callback)

        self._logger.info('PID controller ready!')

    def _reset_controller(self):
        super(DPPIDControllerBase, self)._reset_controller()
        self._error_pose = np.zeros(6)
        self._int = np.zeros(6)

    def set_pid_params_callback(self, request):
        kp = request.Kp
        kd = request.Kd
        ki = request.Ki
        if len(kp) != 6 or len(kd) != 6 or len(ki) != 6:
            return SetPIDParamsResponse(False)
        self._Kp = np.diag(kp)
        self._Ki = np.diag(ki)
        self._Kd = np.diag(kd)
        return SetPIDParamsResponse(True)

    def get_pid_params_callback(self, request):
        return GetPIDParamsResponse(
            [self._Kp[i, i] for i in range(6)],
            [self._Kd[i, i] for i in range(6)],
            [self._Ki[i, i] for i in range(6)])

    def update_pid(self):
        if not self.odom_is_init:
            return

        # Update integrator
        self._int += 0.5 * (self.error_pose_euler + self._error_pose) * self._dt
        # Store current pose error
        self._error_pose = self.error_pose_euler
        return np.dot(self._Kp, self.error_pose_euler) \
            + np.dot(self._Kd, self._errors['vel']) \
            + np.dot(self._Ki, self._int)
        
