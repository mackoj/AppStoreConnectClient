//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppStoreVersionPhasedReleaseUpdateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case appStoreVersionPhasedReleases = "appStoreVersionPhasedReleases"
    }

    public var _id: String

    public var type: ASCType

    public var attributes: Attributes?

    public struct Attributes: AppStoreConnectBaseModel {

      public var phasedReleaseState: ASCPhasedReleaseState?

      public init(phasedReleaseState: ASCPhasedReleaseState? = nil) {
        self.phasedReleaseState = phasedReleaseState
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        phasedReleaseState = try container.decodeIfPresent("phasedReleaseState")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(phasedReleaseState, forKey: "phasedReleaseState")
      }

    }

    public init(_id: String, type: ASCType, attributes: Attributes? = nil) {
      self._id = _id
      self.type = type
      self.attributes = attributes
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      _id = try container.decode("id")
      type = try container.decode("type")
      attributes = try container.decodeIfPresent("attributes")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encode(_id, forKey: "id")
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
