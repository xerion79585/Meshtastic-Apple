// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: telemetry.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///
/// Key native device metrics such as battery level
struct DeviceMetrics {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// 1-100 (0 means powered)
  var batteryLevel: UInt32 = 0

  ///
  /// Voltage measured
  var voltage: Float = 0

  ///
  /// Utilization for the current channel, including well formed TX, RX and malformed RX (aka noise).
  var channelUtilization: Float = 0

  ///
  /// Percent of airtime for transmission used within the last hour.
  var airUtilTx: Float = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// Weather station or other environmental metrics
struct EnvironmentMetrics {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// Temperature measured
  var temperature: Float = 0

  ///
  /// Relative humidity percent measured
  var relativeHumidity: Float = 0

  ///
  /// Barometric pressure in hPA measured
  var barometricPressure: Float = 0

  ///
  /// Gas resistance in mOhm measured
  var gasResistance: Float = 0

  ///
  /// Voltage measured
  var voltage: Float = 0

  ///
  /// Current measured
  var current: Float = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

///
/// Types of Measurements the telemetry module is equipped to handle
struct Telemetry {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// This is usually not sent over the mesh (to save space), but it is sent
  /// from the phone so that the local device can set its RTC If it is sent over
  /// the mesh (because there are devices on the mesh without GPS), it will only
  /// be sent by devices which has a hardware GPS clock (IE Mobile Phone).
  /// seconds since 1970
  var time: UInt32 = 0

  var variant: Telemetry.OneOf_Variant? = nil

  ///
  /// Key native device metrics such as battery level
  var deviceMetrics: DeviceMetrics {
    get {
      if case .deviceMetrics(let v)? = variant {return v}
      return DeviceMetrics()
    }
    set {variant = .deviceMetrics(newValue)}
  }

  ///
  /// Weather station or other environmental metrics
  var environmentMetrics: EnvironmentMetrics {
    get {
      if case .environmentMetrics(let v)? = variant {return v}
      return EnvironmentMetrics()
    }
    set {variant = .environmentMetrics(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Variant: Equatable {
    ///
    /// Key native device metrics such as battery level
    case deviceMetrics(DeviceMetrics)
    ///
    /// Weather station or other environmental metrics
    case environmentMetrics(EnvironmentMetrics)

  #if !swift(>=4.1)
    static func ==(lhs: Telemetry.OneOf_Variant, rhs: Telemetry.OneOf_Variant) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.deviceMetrics, .deviceMetrics): return {
        guard case .deviceMetrics(let l) = lhs, case .deviceMetrics(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.environmentMetrics, .environmentMetrics): return {
        guard case .environmentMetrics(let l) = lhs, case .environmentMetrics(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension DeviceMetrics: @unchecked Sendable {}
extension EnvironmentMetrics: @unchecked Sendable {}
extension Telemetry: @unchecked Sendable {}
extension Telemetry.OneOf_Variant: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension DeviceMetrics: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "DeviceMetrics"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "battery_level"),
    2: .same(proto: "voltage"),
    3: .standard(proto: "channel_utilization"),
    4: .standard(proto: "air_util_tx"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.batteryLevel) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.voltage) }()
      case 3: try { try decoder.decodeSingularFloatField(value: &self.channelUtilization) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.airUtilTx) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.batteryLevel != 0 {
      try visitor.visitSingularUInt32Field(value: self.batteryLevel, fieldNumber: 1)
    }
    if self.voltage != 0 {
      try visitor.visitSingularFloatField(value: self.voltage, fieldNumber: 2)
    }
    if self.channelUtilization != 0 {
      try visitor.visitSingularFloatField(value: self.channelUtilization, fieldNumber: 3)
    }
    if self.airUtilTx != 0 {
      try visitor.visitSingularFloatField(value: self.airUtilTx, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: DeviceMetrics, rhs: DeviceMetrics) -> Bool {
    if lhs.batteryLevel != rhs.batteryLevel {return false}
    if lhs.voltage != rhs.voltage {return false}
    if lhs.channelUtilization != rhs.channelUtilization {return false}
    if lhs.airUtilTx != rhs.airUtilTx {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension EnvironmentMetrics: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "EnvironmentMetrics"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "temperature"),
    2: .standard(proto: "relative_humidity"),
    3: .standard(proto: "barometric_pressure"),
    4: .standard(proto: "gas_resistance"),
    5: .same(proto: "voltage"),
    6: .same(proto: "current"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.temperature) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.relativeHumidity) }()
      case 3: try { try decoder.decodeSingularFloatField(value: &self.barometricPressure) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.gasResistance) }()
      case 5: try { try decoder.decodeSingularFloatField(value: &self.voltage) }()
      case 6: try { try decoder.decodeSingularFloatField(value: &self.current) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.temperature != 0 {
      try visitor.visitSingularFloatField(value: self.temperature, fieldNumber: 1)
    }
    if self.relativeHumidity != 0 {
      try visitor.visitSingularFloatField(value: self.relativeHumidity, fieldNumber: 2)
    }
    if self.barometricPressure != 0 {
      try visitor.visitSingularFloatField(value: self.barometricPressure, fieldNumber: 3)
    }
    if self.gasResistance != 0 {
      try visitor.visitSingularFloatField(value: self.gasResistance, fieldNumber: 4)
    }
    if self.voltage != 0 {
      try visitor.visitSingularFloatField(value: self.voltage, fieldNumber: 5)
    }
    if self.current != 0 {
      try visitor.visitSingularFloatField(value: self.current, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: EnvironmentMetrics, rhs: EnvironmentMetrics) -> Bool {
    if lhs.temperature != rhs.temperature {return false}
    if lhs.relativeHumidity != rhs.relativeHumidity {return false}
    if lhs.barometricPressure != rhs.barometricPressure {return false}
    if lhs.gasResistance != rhs.gasResistance {return false}
    if lhs.voltage != rhs.voltage {return false}
    if lhs.current != rhs.current {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Telemetry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Telemetry"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "time"),
    2: .standard(proto: "device_metrics"),
    3: .standard(proto: "environment_metrics"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed32Field(value: &self.time) }()
      case 2: try {
        var v: DeviceMetrics?
        var hadOneofValue = false
        if let current = self.variant {
          hadOneofValue = true
          if case .deviceMetrics(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.variant = .deviceMetrics(v)
        }
      }()
      case 3: try {
        var v: EnvironmentMetrics?
        var hadOneofValue = false
        if let current = self.variant {
          hadOneofValue = true
          if case .environmentMetrics(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.variant = .environmentMetrics(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.time != 0 {
      try visitor.visitSingularFixed32Field(value: self.time, fieldNumber: 1)
    }
    switch self.variant {
    case .deviceMetrics?: try {
      guard case .deviceMetrics(let v)? = self.variant else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .environmentMetrics?: try {
      guard case .environmentMetrics(let v)? = self.variant else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Telemetry, rhs: Telemetry) -> Bool {
    if lhs.time != rhs.time {return false}
    if lhs.variant != rhs.variant {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
