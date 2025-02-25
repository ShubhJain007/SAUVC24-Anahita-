// Auto-generated. Do not edit!

// (in-package motion_layer.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class heavePIDGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_heave = null;
    }
    else {
      if (initObj.hasOwnProperty('target_heave')) {
        this.target_heave = initObj.target_heave
      }
      else {
        this.target_heave = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type heavePIDGoal
    // Serialize message field [target_heave]
    bufferOffset = _serializer.float32(obj.target_heave, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type heavePIDGoal
    let len;
    let data = new heavePIDGoal(null);
    // Deserialize message field [target_heave]
    data.target_heave = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motion_layer/heavePIDGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3e0196b6c96119284595cf4c2ac78a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    float32 target_heave
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new heavePIDGoal(null);
    if (msg.target_heave !== undefined) {
      resolved.target_heave = msg.target_heave;
    }
    else {
      resolved.target_heave = 0.0
    }

    return resolved;
    }
};

module.exports = heavePIDGoal;
