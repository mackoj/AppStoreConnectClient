//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCBuildBetaDetailUpdateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case buildBetaDetails = "buildBetaDetails"
    }

    public var id: String

    public var type: ASCType

    public var attributes: Attributes?

    public struct Attributes: AppStoreConnectBaseModel {

      public var autoNotifyEnabled: Bool?

      public init(autoNotifyEnabled: Bool? = nil) {
        self.autoNotifyEnabled = autoNotifyEnabled
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        autoNotifyEnabled = try container.decodeIfPresent("autoNotifyEnabled")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(autoNotifyEnabled, forKey: "autoNotifyEnabled")
      }

    }

    public init(id: String, type: ASCType, attributes: Attributes? = nil) {
      self.id = id
      self.type = type
      self.attributes = attributes
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      id = try container.decode("id")
      type = try container.decode("type")
      attributes = try container.decodeIfPresent("attributes")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encode(id, forKey: "id")
      try container.encode(type, forKey: "type")
      try container.encodeIfPresent(attributes, forKey: "attributes")
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
