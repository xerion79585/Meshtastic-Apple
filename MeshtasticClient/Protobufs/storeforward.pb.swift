// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: storeforward.proto
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
/// TODO: REPLACE
struct StoreAndForward {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///
  /// TODO: REPLACE
  var rr: StoreAndForward.RequestResponse = .unset

  ///
  /// TODO: REPLACE
  var stats: StoreAndForward.Statistics {
    get {return _stats ?? StoreAndForward.Statistics()}
    set {_stats = newValue}
  }
  /// Returns true if `stats` has been explicitly set.
  var hasStats: Bool {return self._stats != nil}
  /// Clears the value of `stats`. Subsequent reads from it will return its default value.
  mutating func clearStats() {self._stats = nil}

  ///
  /// TODO: REPLACE
  var history: StoreAndForward.History {
    get {return _history ?? StoreAndForward.History()}
    set {_history = newValue}
  }
  /// Returns true if `history` has been explicitly set.
  var hasHistory: Bool {return self._history != nil}
  /// Clears the value of `history`. Subsequent reads from it will return its default value.
  mutating func clearHistory() {self._history = nil}

  ///
  /// TODO: REPLACE
  var heartbeat: StoreAndForward.Heartbeat {
    get {return _heartbeat ?? StoreAndForward.Heartbeat()}
    set {_heartbeat = newValue}
  }
  /// Returns true if `heartbeat` has been explicitly set.
  var hasHeartbeat: Bool {return self._heartbeat != nil}
  /// Clears the value of `heartbeat`. Subsequent reads from it will return its default value.
  mutating func clearHeartbeat() {self._heartbeat = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  ///
  /// 1   - 99  = From Router
  /// 101 - 199 = From Client
  enum RequestResponse: SwiftProtobuf.Enum {
    typealias RawValue = Int

    ///
    /// Unset/unused
    case unset // = 0

    ///
    /// Router is an in error state.
    case routerError // = 1

    ///
    /// Router heartbeat
    case routerHeartbeat // = 2

    ///
    /// Router has requested the client respond. This can work as a
    /// "are you there" message.
    case routerPing // = 3

    ///
    /// The response to a "Ping"
    case routerPong // = 4

    ///
    /// Router is currently busy. Please try again later.
    case routerBusy // = 5

    ///
    /// Router is responding to a request for history.
    case routerHistory // = 6

    ///
    /// Client is an in error state.
    case clientError // = 101

    ///
    /// Client has requested a replay from the router.
    case clientHistory // = 102

    ///
    /// Client has requested stats from the router.
    case clientStats // = 103

    ///
    /// Client has requested the router respond. This can work as a
    /// "are you there" message.
    case clientPing // = 104

    ///
    /// The response to a "Ping"
    case clientPong // = 105

    ///
    /// Client has requested that the router abort processing the client's request
    case clientAbort // = 106
    case UNRECOGNIZED(Int)

    init() {
      self = .unset
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unset
      case 1: self = .routerError
      case 2: self = .routerHeartbeat
      case 3: self = .routerPing
      case 4: self = .routerPong
      case 5: self = .routerBusy
      case 6: self = .routerHistory
      case 101: self = .clientError
      case 102: self = .clientHistory
      case 103: self = .clientStats
      case 104: self = .clientPing
      case 105: self = .clientPong
      case 106: self = .clientAbort
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unset: return 0
      case .routerError: return 1
      case .routerHeartbeat: return 2
      case .routerPing: return 3
      case .routerPong: return 4
      case .routerBusy: return 5
      case .routerHistory: return 6
      case .clientError: return 101
      case .clientHistory: return 102
      case .clientStats: return 103
      case .clientPing: return 104
      case .clientPong: return 105
      case .clientAbort: return 106
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  ///
  /// TODO: REPLACE
  struct Statistics {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    ///
    /// Number of messages we have ever seen
    var messagesTotal: UInt32 = 0

    ///
    /// Number of messages we have currently saved our history.
    var messagesSaved: UInt32 = 0

    ///
    /// Maximum number of messages we will save
    var messagesMax: UInt32 = 0

    ///
    /// Router uptime in seconds
    var upTime: UInt32 = 0

    ///
    /// Number of times any client sent a request to the S&F.
    var requests: UInt32 = 0

    ///
    /// Number of times the history was requested.
    var requestsHistory: UInt32 = 0

    ///
    /// Is the heartbeat enabled on the server?
    var heartbeat: Bool = false

    ///
    /// Is the heartbeat enabled on the server?
    var returnMax: UInt32 = 0

    ///
    /// Is the heartbeat enabled on the server?
    var returnWindow: UInt32 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  ///
  /// TODO: REPLACE
  struct History {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    ///
    /// Number of that will be sent to the client
    var historyMessages: UInt32 = 0

    ///
    /// The window of messages that was used to filter the history client requested
    var window: UInt32 = 0

    ///
    /// The window of messages that was used to filter the history client requested
    var lastRequest: UInt32 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  ///
  /// TODO: REPLACE
  struct Heartbeat {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    ///
    /// Number of that will be sent to the client
    var period: UInt32 = 0

    ///
    /// If set, this is not the primary Store & Forward router on the mesh
    var secondary: UInt32 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _stats: StoreAndForward.Statistics? = nil
  fileprivate var _history: StoreAndForward.History? = nil
  fileprivate var _heartbeat: StoreAndForward.Heartbeat? = nil
}

#if swift(>=4.2)

extension StoreAndForward.RequestResponse: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [StoreAndForward.RequestResponse] = [
    .unset,
    .routerError,
    .routerHeartbeat,
    .routerPing,
    .routerPong,
    .routerBusy,
    .routerHistory,
    .clientError,
    .clientHistory,
    .clientStats,
    .clientPing,
    .clientPong,
    .clientAbort,
  ]
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension StoreAndForward: @unchecked Sendable {}
extension StoreAndForward.RequestResponse: @unchecked Sendable {}
extension StoreAndForward.Statistics: @unchecked Sendable {}
extension StoreAndForward.History: @unchecked Sendable {}
extension StoreAndForward.Heartbeat: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension StoreAndForward: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "StoreAndForward"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "rr"),
    2: .same(proto: "stats"),
    3: .same(proto: "history"),
    4: .same(proto: "heartbeat"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.rr) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._stats) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._history) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._heartbeat) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.rr != .unset {
      try visitor.visitSingularEnumField(value: self.rr, fieldNumber: 1)
    }
    try { if let v = self._stats {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._history {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._heartbeat {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StoreAndForward, rhs: StoreAndForward) -> Bool {
    if lhs.rr != rhs.rr {return false}
    if lhs._stats != rhs._stats {return false}
    if lhs._history != rhs._history {return false}
    if lhs._heartbeat != rhs._heartbeat {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StoreAndForward.RequestResponse: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSET"),
    1: .same(proto: "ROUTER_ERROR"),
    2: .same(proto: "ROUTER_HEARTBEAT"),
    3: .same(proto: "ROUTER_PING"),
    4: .same(proto: "ROUTER_PONG"),
    5: .same(proto: "ROUTER_BUSY"),
    6: .same(proto: "ROUTER_HISTORY"),
    101: .same(proto: "CLIENT_ERROR"),
    102: .same(proto: "CLIENT_HISTORY"),
    103: .same(proto: "CLIENT_STATS"),
    104: .same(proto: "CLIENT_PING"),
    105: .same(proto: "CLIENT_PONG"),
    106: .same(proto: "CLIENT_ABORT"),
  ]
}

extension StoreAndForward.Statistics: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = StoreAndForward.protoMessageName + ".Statistics"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "messages_total"),
    2: .standard(proto: "messages_saved"),
    3: .standard(proto: "messages_max"),
    4: .standard(proto: "up_time"),
    5: .same(proto: "requests"),
    6: .standard(proto: "requests_history"),
    7: .same(proto: "heartbeat"),
    8: .standard(proto: "return_max"),
    9: .standard(proto: "return_window"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.messagesTotal) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.messagesSaved) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.messagesMax) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self.upTime) }()
      case 5: try { try decoder.decodeSingularUInt32Field(value: &self.requests) }()
      case 6: try { try decoder.decodeSingularUInt32Field(value: &self.requestsHistory) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self.heartbeat) }()
      case 8: try { try decoder.decodeSingularUInt32Field(value: &self.returnMax) }()
      case 9: try { try decoder.decodeSingularUInt32Field(value: &self.returnWindow) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.messagesTotal != 0 {
      try visitor.visitSingularUInt32Field(value: self.messagesTotal, fieldNumber: 1)
    }
    if self.messagesSaved != 0 {
      try visitor.visitSingularUInt32Field(value: self.messagesSaved, fieldNumber: 2)
    }
    if self.messagesMax != 0 {
      try visitor.visitSingularUInt32Field(value: self.messagesMax, fieldNumber: 3)
    }
    if self.upTime != 0 {
      try visitor.visitSingularUInt32Field(value: self.upTime, fieldNumber: 4)
    }
    if self.requests != 0 {
      try visitor.visitSingularUInt32Field(value: self.requests, fieldNumber: 5)
    }
    if self.requestsHistory != 0 {
      try visitor.visitSingularUInt32Field(value: self.requestsHistory, fieldNumber: 6)
    }
    if self.heartbeat != false {
      try visitor.visitSingularBoolField(value: self.heartbeat, fieldNumber: 7)
    }
    if self.returnMax != 0 {
      try visitor.visitSingularUInt32Field(value: self.returnMax, fieldNumber: 8)
    }
    if self.returnWindow != 0 {
      try visitor.visitSingularUInt32Field(value: self.returnWindow, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StoreAndForward.Statistics, rhs: StoreAndForward.Statistics) -> Bool {
    if lhs.messagesTotal != rhs.messagesTotal {return false}
    if lhs.messagesSaved != rhs.messagesSaved {return false}
    if lhs.messagesMax != rhs.messagesMax {return false}
    if lhs.upTime != rhs.upTime {return false}
    if lhs.requests != rhs.requests {return false}
    if lhs.requestsHistory != rhs.requestsHistory {return false}
    if lhs.heartbeat != rhs.heartbeat {return false}
    if lhs.returnMax != rhs.returnMax {return false}
    if lhs.returnWindow != rhs.returnWindow {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StoreAndForward.History: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = StoreAndForward.protoMessageName + ".History"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "history_messages"),
    2: .same(proto: "window"),
    3: .standard(proto: "last_request"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.historyMessages) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.window) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.lastRequest) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.historyMessages != 0 {
      try visitor.visitSingularUInt32Field(value: self.historyMessages, fieldNumber: 1)
    }
    if self.window != 0 {
      try visitor.visitSingularUInt32Field(value: self.window, fieldNumber: 2)
    }
    if self.lastRequest != 0 {
      try visitor.visitSingularUInt32Field(value: self.lastRequest, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StoreAndForward.History, rhs: StoreAndForward.History) -> Bool {
    if lhs.historyMessages != rhs.historyMessages {return false}
    if lhs.window != rhs.window {return false}
    if lhs.lastRequest != rhs.lastRequest {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension StoreAndForward.Heartbeat: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = StoreAndForward.protoMessageName + ".Heartbeat"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "period"),
    2: .same(proto: "secondary"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.period) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.secondary) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.period != 0 {
      try visitor.visitSingularUInt32Field(value: self.period, fieldNumber: 1)
    }
    if self.secondary != 0 {
      try visitor.visitSingularUInt32Field(value: self.secondary, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: StoreAndForward.Heartbeat, rhs: StoreAndForward.Heartbeat) -> Bool {
    if lhs.period != rhs.period {return false}
    if lhs.secondary != rhs.secondary {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
