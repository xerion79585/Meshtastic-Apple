// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: meshtastic/localonly.proto
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

struct LocalConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The part of the config that is specific to the Device
  var device: Config.DeviceConfig {
    get {return _storage._device ?? Config.DeviceConfig()}
    set {_uniqueStorage()._device = newValue}
  }
  /// Returns true if `device` has been explicitly set.
  var hasDevice: Bool {return _storage._device != nil}
  /// Clears the value of `device`. Subsequent reads from it will return its default value.
  mutating func clearDevice() {_uniqueStorage()._device = nil}

  ///
  /// The part of the config that is specific to the GPS Position
  var position: Config.PositionConfig {
    get {return _storage._position ?? Config.PositionConfig()}
    set {_uniqueStorage()._position = newValue}
  }
  /// Returns true if `position` has been explicitly set.
  var hasPosition: Bool {return _storage._position != nil}
  /// Clears the value of `position`. Subsequent reads from it will return its default value.
  mutating func clearPosition() {_uniqueStorage()._position = nil}

  ///
  /// The part of the config that is specific to the Power settings
  var power: Config.PowerConfig {
    get {return _storage._power ?? Config.PowerConfig()}
    set {_uniqueStorage()._power = newValue}
  }
  /// Returns true if `power` has been explicitly set.
  var hasPower: Bool {return _storage._power != nil}
  /// Clears the value of `power`. Subsequent reads from it will return its default value.
  mutating func clearPower() {_uniqueStorage()._power = nil}

  ///
  /// The part of the config that is specific to the Wifi Settings
  var network: Config.NetworkConfig {
    get {return _storage._network ?? Config.NetworkConfig()}
    set {_uniqueStorage()._network = newValue}
  }
  /// Returns true if `network` has been explicitly set.
  var hasNetwork: Bool {return _storage._network != nil}
  /// Clears the value of `network`. Subsequent reads from it will return its default value.
  mutating func clearNetwork() {_uniqueStorage()._network = nil}

  ///
  /// The part of the config that is specific to the Display
  var display: Config.DisplayConfig {
    get {return _storage._display ?? Config.DisplayConfig()}
    set {_uniqueStorage()._display = newValue}
  }
  /// Returns true if `display` has been explicitly set.
  var hasDisplay: Bool {return _storage._display != nil}
  /// Clears the value of `display`. Subsequent reads from it will return its default value.
  mutating func clearDisplay() {_uniqueStorage()._display = nil}

  ///
  /// The part of the config that is specific to the Lora Radio
  var lora: Config.LoRaConfig {
    get {return _storage._lora ?? Config.LoRaConfig()}
    set {_uniqueStorage()._lora = newValue}
  }
  /// Returns true if `lora` has been explicitly set.
  var hasLora: Bool {return _storage._lora != nil}
  /// Clears the value of `lora`. Subsequent reads from it will return its default value.
  mutating func clearLora() {_uniqueStorage()._lora = nil}

  ///
  /// The part of the config that is specific to the Bluetooth settings
  var bluetooth: Config.BluetoothConfig {
    get {return _storage._bluetooth ?? Config.BluetoothConfig()}
    set {_uniqueStorage()._bluetooth = newValue}
  }
  /// Returns true if `bluetooth` has been explicitly set.
  var hasBluetooth: Bool {return _storage._bluetooth != nil}
  /// Clears the value of `bluetooth`. Subsequent reads from it will return its default value.
  mutating func clearBluetooth() {_uniqueStorage()._bluetooth = nil}

  ///
  /// A version integer used to invalidate old save files when we make
  /// incompatible changes This integer is set at build time and is private to
  /// NodeDB.cpp in the device code.
  var version: UInt32 {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct LocalModuleConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// The part of the config that is specific to the MQTT module
  var mqtt: ModuleConfig.MQTTConfig {
    get {return _storage._mqtt ?? ModuleConfig.MQTTConfig()}
    set {_uniqueStorage()._mqtt = newValue}
  }
  /// Returns true if `mqtt` has been explicitly set.
  var hasMqtt: Bool {return _storage._mqtt != nil}
  /// Clears the value of `mqtt`. Subsequent reads from it will return its default value.
  mutating func clearMqtt() {_uniqueStorage()._mqtt = nil}

  ///
  /// The part of the config that is specific to the Serial module
  var serial: ModuleConfig.SerialConfig {
    get {return _storage._serial ?? ModuleConfig.SerialConfig()}
    set {_uniqueStorage()._serial = newValue}
  }
  /// Returns true if `serial` has been explicitly set.
  var hasSerial: Bool {return _storage._serial != nil}
  /// Clears the value of `serial`. Subsequent reads from it will return its default value.
  mutating func clearSerial() {_uniqueStorage()._serial = nil}

  ///
  /// The part of the config that is specific to the ExternalNotification module
  var externalNotification: ModuleConfig.ExternalNotificationConfig {
    get {return _storage._externalNotification ?? ModuleConfig.ExternalNotificationConfig()}
    set {_uniqueStorage()._externalNotification = newValue}
  }
  /// Returns true if `externalNotification` has been explicitly set.
  var hasExternalNotification: Bool {return _storage._externalNotification != nil}
  /// Clears the value of `externalNotification`. Subsequent reads from it will return its default value.
  mutating func clearExternalNotification() {_uniqueStorage()._externalNotification = nil}

  ///
  /// The part of the config that is specific to the Store & Forward module
  var storeForward: ModuleConfig.StoreForwardConfig {
    get {return _storage._storeForward ?? ModuleConfig.StoreForwardConfig()}
    set {_uniqueStorage()._storeForward = newValue}
  }
  /// Returns true if `storeForward` has been explicitly set.
  var hasStoreForward: Bool {return _storage._storeForward != nil}
  /// Clears the value of `storeForward`. Subsequent reads from it will return its default value.
  mutating func clearStoreForward() {_uniqueStorage()._storeForward = nil}

  ///
  /// The part of the config that is specific to the RangeTest module
  var rangeTest: ModuleConfig.RangeTestConfig {
    get {return _storage._rangeTest ?? ModuleConfig.RangeTestConfig()}
    set {_uniqueStorage()._rangeTest = newValue}
  }
  /// Returns true if `rangeTest` has been explicitly set.
  var hasRangeTest: Bool {return _storage._rangeTest != nil}
  /// Clears the value of `rangeTest`. Subsequent reads from it will return its default value.
  mutating func clearRangeTest() {_uniqueStorage()._rangeTest = nil}

  ///
  /// The part of the config that is specific to the Telemetry module
  var telemetry: ModuleConfig.TelemetryConfig {
    get {return _storage._telemetry ?? ModuleConfig.TelemetryConfig()}
    set {_uniqueStorage()._telemetry = newValue}
  }
  /// Returns true if `telemetry` has been explicitly set.
  var hasTelemetry: Bool {return _storage._telemetry != nil}
  /// Clears the value of `telemetry`. Subsequent reads from it will return its default value.
  mutating func clearTelemetry() {_uniqueStorage()._telemetry = nil}

  ///
  /// The part of the config that is specific to the Canned Message module
  var cannedMessage: ModuleConfig.CannedMessageConfig {
    get {return _storage._cannedMessage ?? ModuleConfig.CannedMessageConfig()}
    set {_uniqueStorage()._cannedMessage = newValue}
  }
  /// Returns true if `cannedMessage` has been explicitly set.
  var hasCannedMessage: Bool {return _storage._cannedMessage != nil}
  /// Clears the value of `cannedMessage`. Subsequent reads from it will return its default value.
  mutating func clearCannedMessage() {_uniqueStorage()._cannedMessage = nil}

  ///
  /// The part of the config that is specific to the Audio module
  var audio: ModuleConfig.AudioConfig {
    get {return _storage._audio ?? ModuleConfig.AudioConfig()}
    set {_uniqueStorage()._audio = newValue}
  }
  /// Returns true if `audio` has been explicitly set.
  var hasAudio: Bool {return _storage._audio != nil}
  /// Clears the value of `audio`. Subsequent reads from it will return its default value.
  mutating func clearAudio() {_uniqueStorage()._audio = nil}

  ///
  /// The part of the config that is specific to the Remote Hardware module
  var remoteHardware: ModuleConfig.RemoteHardwareConfig {
    get {return _storage._remoteHardware ?? ModuleConfig.RemoteHardwareConfig()}
    set {_uniqueStorage()._remoteHardware = newValue}
  }
  /// Returns true if `remoteHardware` has been explicitly set.
  var hasRemoteHardware: Bool {return _storage._remoteHardware != nil}
  /// Clears the value of `remoteHardware`. Subsequent reads from it will return its default value.
  mutating func clearRemoteHardware() {_uniqueStorage()._remoteHardware = nil}

  ///
  /// The part of the config that is specific to the Neighbor Info module
  var neighborInfo: ModuleConfig.NeighborInfoConfig {
    get {return _storage._neighborInfo ?? ModuleConfig.NeighborInfoConfig()}
    set {_uniqueStorage()._neighborInfo = newValue}
  }
  /// Returns true if `neighborInfo` has been explicitly set.
  var hasNeighborInfo: Bool {return _storage._neighborInfo != nil}
  /// Clears the value of `neighborInfo`. Subsequent reads from it will return its default value.
  mutating func clearNeighborInfo() {_uniqueStorage()._neighborInfo = nil}

  ///
  /// A version integer used to invalidate old save files when we make
  /// incompatible changes This integer is set at build time and is private to
  /// NodeDB.cpp in the device code.
  var version: UInt32 {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=5.5) && canImport(_Concurrency)
extension LocalConfig: @unchecked Sendable {}
extension LocalModuleConfig: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "meshtastic"

extension LocalConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LocalConfig"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "device"),
    2: .same(proto: "position"),
    3: .same(proto: "power"),
    4: .same(proto: "network"),
    5: .same(proto: "display"),
    6: .same(proto: "lora"),
    7: .same(proto: "bluetooth"),
    8: .same(proto: "version"),
  ]

  fileprivate class _StorageClass {
    var _device: Config.DeviceConfig? = nil
    var _position: Config.PositionConfig? = nil
    var _power: Config.PowerConfig? = nil
    var _network: Config.NetworkConfig? = nil
    var _display: Config.DisplayConfig? = nil
    var _lora: Config.LoRaConfig? = nil
    var _bluetooth: Config.BluetoothConfig? = nil
    var _version: UInt32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _device = source._device
      _position = source._position
      _power = source._power
      _network = source._network
      _display = source._display
      _lora = source._lora
      _bluetooth = source._bluetooth
      _version = source._version
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._device) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._position) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._power) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._network) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._display) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._lora) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._bluetooth) }()
        case 8: try { try decoder.decodeSingularUInt32Field(value: &_storage._version) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._device {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      } }()
      try { if let v = _storage._position {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._power {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      try { if let v = _storage._network {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      } }()
      try { if let v = _storage._display {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      } }()
      try { if let v = _storage._lora {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      } }()
      try { if let v = _storage._bluetooth {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      } }()
      if _storage._version != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._version, fieldNumber: 8)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LocalConfig, rhs: LocalConfig) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._device != rhs_storage._device {return false}
        if _storage._position != rhs_storage._position {return false}
        if _storage._power != rhs_storage._power {return false}
        if _storage._network != rhs_storage._network {return false}
        if _storage._display != rhs_storage._display {return false}
        if _storage._lora != rhs_storage._lora {return false}
        if _storage._bluetooth != rhs_storage._bluetooth {return false}
        if _storage._version != rhs_storage._version {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LocalModuleConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LocalModuleConfig"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mqtt"),
    2: .same(proto: "serial"),
    3: .standard(proto: "external_notification"),
    4: .standard(proto: "store_forward"),
    5: .standard(proto: "range_test"),
    6: .same(proto: "telemetry"),
    7: .standard(proto: "canned_message"),
    9: .same(proto: "audio"),
    10: .standard(proto: "remote_hardware"),
    11: .standard(proto: "neighbor_info"),
    8: .same(proto: "version"),
  ]

  fileprivate class _StorageClass {
    var _mqtt: ModuleConfig.MQTTConfig? = nil
    var _serial: ModuleConfig.SerialConfig? = nil
    var _externalNotification: ModuleConfig.ExternalNotificationConfig? = nil
    var _storeForward: ModuleConfig.StoreForwardConfig? = nil
    var _rangeTest: ModuleConfig.RangeTestConfig? = nil
    var _telemetry: ModuleConfig.TelemetryConfig? = nil
    var _cannedMessage: ModuleConfig.CannedMessageConfig? = nil
    var _audio: ModuleConfig.AudioConfig? = nil
    var _remoteHardware: ModuleConfig.RemoteHardwareConfig? = nil
    var _neighborInfo: ModuleConfig.NeighborInfoConfig? = nil
    var _version: UInt32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _mqtt = source._mqtt
      _serial = source._serial
      _externalNotification = source._externalNotification
      _storeForward = source._storeForward
      _rangeTest = source._rangeTest
      _telemetry = source._telemetry
      _cannedMessage = source._cannedMessage
      _audio = source._audio
      _remoteHardware = source._remoteHardware
      _neighborInfo = source._neighborInfo
      _version = source._version
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._mqtt) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._serial) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._externalNotification) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._storeForward) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._rangeTest) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._telemetry) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._cannedMessage) }()
        case 8: try { try decoder.decodeSingularUInt32Field(value: &_storage._version) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._audio) }()
        case 10: try { try decoder.decodeSingularMessageField(value: &_storage._remoteHardware) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._neighborInfo) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      try { if let v = _storage._mqtt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      } }()
      try { if let v = _storage._serial {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._externalNotification {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      try { if let v = _storage._storeForward {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      } }()
      try { if let v = _storage._rangeTest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      } }()
      try { if let v = _storage._telemetry {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      } }()
      try { if let v = _storage._cannedMessage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      } }()
      if _storage._version != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._version, fieldNumber: 8)
      }
      try { if let v = _storage._audio {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      } }()
      try { if let v = _storage._remoteHardware {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      } }()
      try { if let v = _storage._neighborInfo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LocalModuleConfig, rhs: LocalModuleConfig) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._mqtt != rhs_storage._mqtt {return false}
        if _storage._serial != rhs_storage._serial {return false}
        if _storage._externalNotification != rhs_storage._externalNotification {return false}
        if _storage._storeForward != rhs_storage._storeForward {return false}
        if _storage._rangeTest != rhs_storage._rangeTest {return false}
        if _storage._telemetry != rhs_storage._telemetry {return false}
        if _storage._cannedMessage != rhs_storage._cannedMessage {return false}
        if _storage._audio != rhs_storage._audio {return false}
        if _storage._remoteHardware != rhs_storage._remoteHardware {return false}
        if _storage._neighborInfo != rhs_storage._neighborInfo {return false}
        if _storage._version != rhs_storage._version {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
