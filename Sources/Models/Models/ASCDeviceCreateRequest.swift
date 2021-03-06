//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCDeviceCreateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case devices = "devices"
    }

    public var attributes: Attributes

    public var type: ASCType

    public struct Attributes: AppStoreConnectBaseModel {

      public var name: String

      public var udid: String

      public var platform: ASCBundleIdPlatform

      public init(name: String, udid: String, platform: ASCBundleIdPlatform) {
        self.name = name
        self.udid = udid
        self.platform = platform
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        name = try container.decode("name")
        udid = try container.decode("udid")
        platform = try container.decode("platform")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(name, forKey: "name")
        try container.encode(udid, forKey: "udid")
        try container.encode(platform, forKey: "platform")
      }

    }

    public init(attributes: Attributes, type: ASCType) {
      self.attributes = attributes
      self.type = type
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      attributes = try container.decode("attributes")
      type = try container.decode("type")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encode(attributes, forKey: "attributes")
      try container.encode(type, forKey: "type")
    }

  }

  public init(data: DataType) {
    self.data = data
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    data = try container.decode("data")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(data, forKey: "data")
  }

}
