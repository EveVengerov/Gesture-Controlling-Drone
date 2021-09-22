// Auto-generated. Do not edit!

// (in-package plutodrone.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlutoMsgAP {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcRoll = null;
      this.rcPitch = null;
      this.rcYaw = null;
      this.rcThrottle = null;
      this.plutoIndex = null;
      this.commandType = null;
    }
    else {
      if (initObj.hasOwnProperty('rcRoll')) {
        this.rcRoll = initObj.rcRoll
      }
      else {
        this.rcRoll = 0;
      }
      if (initObj.hasOwnProperty('rcPitch')) {
        this.rcPitch = initObj.rcPitch
      }
      else {
        this.rcPitch = 0;
      }
      if (initObj.hasOwnProperty('rcYaw')) {
        this.rcYaw = initObj.rcYaw
      }
      else {
        this.rcYaw = 0;
      }
      if (initObj.hasOwnProperty('rcThrottle')) {
        this.rcThrottle = initObj.rcThrottle
      }
      else {
        this.rcThrottle = 0;
      }
      if (initObj.hasOwnProperty('plutoIndex')) {
        this.plutoIndex = initObj.plutoIndex
      }
      else {
        this.plutoIndex = 0;
      }
      if (initObj.hasOwnProperty('commandType')) {
        this.commandType = initObj.commandType
      }
      else {
        this.commandType = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlutoMsgAP
    // Serialize message field [rcRoll]
    bufferOffset = _serializer.int64(obj.rcRoll, buffer, bufferOffset);
    // Serialize message field [rcPitch]
    bufferOffset = _serializer.int64(obj.rcPitch, buffer, bufferOffset);
    // Serialize message field [rcYaw]
    bufferOffset = _serializer.int64(obj.rcYaw, buffer, bufferOffset);
    // Serialize message field [rcThrottle]
    bufferOffset = _serializer.int64(obj.rcThrottle, buffer, bufferOffset);
    // Serialize message field [plutoIndex]
    bufferOffset = _serializer.int64(obj.plutoIndex, buffer, bufferOffset);
    // Serialize message field [commandType]
    bufferOffset = _serializer.int8(obj.commandType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlutoMsgAP
    let len;
    let data = new PlutoMsgAP(null);
    // Deserialize message field [rcRoll]
    data.rcRoll = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcPitch]
    data.rcPitch = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcYaw]
    data.rcYaw = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcThrottle]
    data.rcThrottle = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [plutoIndex]
    data.plutoIndex = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [commandType]
    data.commandType = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plutodrone/PlutoMsgAP';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d14e97c50a8a33e16533e3af6806fc5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 rcRoll
    int64 rcPitch
    int64 rcYaw
    int64 rcThrottle
    int64 plutoIndex
    int8 commandType
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlutoMsgAP(null);
    if (msg.rcRoll !== undefined) {
      resolved.rcRoll = msg.rcRoll;
    }
    else {
      resolved.rcRoll = 0
    }

    if (msg.rcPitch !== undefined) {
      resolved.rcPitch = msg.rcPitch;
    }
    else {
      resolved.rcPitch = 0
    }

    if (msg.rcYaw !== undefined) {
      resolved.rcYaw = msg.rcYaw;
    }
    else {
      resolved.rcYaw = 0
    }

    if (msg.rcThrottle !== undefined) {
      resolved.rcThrottle = msg.rcThrottle;
    }
    else {
      resolved.rcThrottle = 0
    }

    if (msg.plutoIndex !== undefined) {
      resolved.plutoIndex = msg.plutoIndex;
    }
    else {
      resolved.plutoIndex = 0
    }

    if (msg.commandType !== undefined) {
      resolved.commandType = msg.commandType;
    }
    else {
      resolved.commandType = 0
    }

    return resolved;
    }
};

module.exports = PlutoMsgAP;
