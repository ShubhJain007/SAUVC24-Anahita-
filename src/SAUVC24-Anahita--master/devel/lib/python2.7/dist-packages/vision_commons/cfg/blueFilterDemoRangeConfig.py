## *********************************************************
##
## File autogenerated for the vision_commons package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'Clip limit for CLAHE', 'max': 40.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'clahe_clip', 'edit_method': '', 'default': 0.15, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'Grid size of the CLAHE operator', 'max': 16, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'clahe_grid_size', 'edit_method': '', 'default': 3, 'level': 0, 'min': 1, 'type': 'int'}, {'srcline': 291, 'description': 'Number of iterations of bilateral filter after CLAHE is applied', 'max': 16, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'clahe_bilateral_iter', 'edit_method': '', 'default': 2, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'Number of iterations of bilateral filter after white balancing is applied', 'max': 8, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'balanced_bilateral_iter', 'edit_method': '', 'default': 2, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 291, 'description': 'h value for fast non-local means denoising applied on the final blue-filtered image', 'max': 20.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'denoise_h', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 0.0, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

