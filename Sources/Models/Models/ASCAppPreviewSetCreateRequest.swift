//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppPreviewSetCreateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case appPreviewSets = "appPreviewSets"
    }

    public var relationships: Relationships

    public var attributes: Attributes

    public var type: ASCType

    public struct Relationships: AppStoreConnectBaseModel {

      public var appStoreVersionLocalization: AppStoreVersionLocalization

      public struct AppStoreVersionLocalization: AppStoreConnectBaseModel {

        public var data: DataType

        public struct DataType: AppStoreConnectBaseModel {

          public enum ASCType: String, Codable, Equatable, CaseIterable {
            case appStoreVersionLocalizations = "appStoreVersionLocalizations"
          }

          public var _id: String

          public var type: ASCType

          public init(_id: String, type: ASCType) {
            self._id = _id
            self.type = type
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            _id = try container.decode("id")
            type = try container.decode("type")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(_id, forKey: "id")
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

      public init(appStoreVersionLocalization: AppStoreVersionLocalization) {
        self.appStoreVersionLocalization = appStoreVersionLocalization
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        appStoreVersionLocalization = try container.decode("appStoreVersionLocalization")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(appStoreVersionLocalization, forKey: "appStoreVersionLocalization")
      }

    }

    public struct Attributes: AppStoreConnectBaseModel {

      public var previewType: ASCPreviewType

      public init(previewType: ASCPreviewType) {
        self.previewType = previewType
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        previewType = try container.decode("previewType")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(previewType, forKey: "previewType")
      }

    }

    public init(relationships: Relationships, attributes: Attributes, type: ASCType) {
      self.relationships = relationships
      self.attributes = attributes
      self.type = type
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      relationships = try container.decode("relationships")
      attributes = try container.decode("attributes")
      type = try container.decode("type")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encode(relationships, forKey: "relationships")
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
