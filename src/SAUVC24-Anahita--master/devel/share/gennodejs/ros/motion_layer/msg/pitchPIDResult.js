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

class pitchPIDResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_pitch = null;
    }
    else {
      if (initObj.hasOwnProperty('final_pitch')) {
        this.final_pitch = initObj.final_pitch
      }
      else {
        this.final_pitch = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pitchPIDResult
    // Serialize message field [final_pitch]
    bufferOffset = _serializer.float32(obj.final_pitch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pitchPIDResult
    let len;
    let data = new pitchPIDResult(null);
    // Deserialize message field [final_pitch]
    data.final_pitch = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motion_layer/pitchPIDResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '023d6e0d38c16492952462da3f10ef90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    float32 final_pitch
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pitchPIDResult(null);
    if (msg.final_pitch !== undefined) {
      resolved.final_pitch = msg.final_pitch;
    }
    else {
      resolved.final_pitch = 0.0
    }

    return resolved;
    }
};

module.exports = pitchPIDResult;
