// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: login.proto
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

public struct Jeak_NormalLoginRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// 手机号
  public var mobile: String = String()

  /// 密码
  public var password: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Jeak_NormalLoginResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var errCode: Int64 = 0

  public var errMsg: String = String()

  /// 用户 guid
  public var guid: String = String()

  /// 用户信息
  public var userInfo: Jeak_BasicProfile {
    get {return _userInfo ?? Jeak_BasicProfile()}
    set {_userInfo = newValue}
  }
  /// Returns true if `userInfo` has been explicitly set.
  public var hasUserInfo: Bool {return self._userInfo != nil}
  /// Clears the value of `userInfo`. Subsequent reads from it will return its default value.
  public mutating func clearUserInfo() {self._userInfo = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _userInfo: Jeak_BasicProfile? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "jeak"

extension Jeak_NormalLoginRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NormalLoginRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mobile"),
    2: .same(proto: "password"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.mobile) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.password) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.mobile.isEmpty {
      try visitor.visitSingularStringField(value: self.mobile, fieldNumber: 1)
    }
    if !self.password.isEmpty {
      try visitor.visitSingularStringField(value: self.password, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Jeak_NormalLoginRequest, rhs: Jeak_NormalLoginRequest) -> Bool {
    if lhs.mobile != rhs.mobile {return false}
    if lhs.password != rhs.password {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Jeak_NormalLoginResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NormalLoginResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "errCode"),
    2: .same(proto: "errMsg"),
    3: .same(proto: "guid"),
    4: .same(proto: "UserInfo"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.errCode) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.errMsg) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.guid) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._userInfo) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.errCode != 0 {
      try visitor.visitSingularInt64Field(value: self.errCode, fieldNumber: 1)
    }
    if !self.errMsg.isEmpty {
      try visitor.visitSingularStringField(value: self.errMsg, fieldNumber: 2)
    }
    if !self.guid.isEmpty {
      try visitor.visitSingularStringField(value: self.guid, fieldNumber: 3)
    }
    if let v = self._userInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Jeak_NormalLoginResponse, rhs: Jeak_NormalLoginResponse) -> Bool {
    if lhs.errCode != rhs.errCode {return false}
    if lhs.errMsg != rhs.errMsg {return false}
    if lhs.guid != rhs.guid {return false}
    if lhs._userInfo != rhs._userInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
