//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppScreenshotSet: AppStoreConnectBaseModel {

  public enum ASCType: String, Codable, Equatable, CaseIterable {
    case appScreenshotSets = "appScreenshotSets"
  }

  public var links: ASCResourceLinks

  public var _id: String

  public var type: ASCType

  public var attributes: Attributes?

  public var relationships: Relationships?

  public struct Attributes: AppStoreConnectBaseModel {

    public var screenshotDisplayType: ASCScreenshotDisplayType?

    public init(screenshotDisplayType: ASCScreenshotDisplayType? = nil) {
      self.screenshotDisplayType = screenshotDisplayType
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      screenshotDisplayType = try container.decodeIfPresent("screenshotDisplayType")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(screenshotDisplayType, forKey: "screenshotDisplayType")
    }

  }

  public struct Relationships: AppStoreConnectBaseModel {

    public var appScreenshots: AppScreenshots?

    public var appStoreVersionLocalization: AppStoreVersionLocalization?

    public struct AppScreenshots: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case appScreenshots = "appScreenshots"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var _self: String?

        public init(related: String? = nil, _self: String? = nil) {
          self.related = related
          self._self = _self
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          _self = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(_self, forKey: "self")
        }

      }

      public init(data: [DataType]? = nil, links: Links? = nil, meta: ASCPagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArrayIfPresent("data")
        links = try container.decodeIfPresent("links")
        meta = try container.decodeIfPresent("meta")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(links, forKey: "links")
        try container.encodeIfPresent(meta, forKey: "meta")
      }

    }

    public struct AppStoreVersionLocalization: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var _self: String?

        public init(related: String? = nil, _self: String? = nil) {
          self.related = related
          self._self = _self
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          _self = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(_self, forKey: "self")
        }

      }

      public init(data: DataType? = nil, links: Links? = nil) {
        self.data = data
        self.links = links
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeIfPresent("data")
        links = try container.decodeIfPresent("links")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(links, forKey: "links")
      }

    }

    public init(
      appScreenshots: AppScreenshots? = nil,
      appStoreVersionLocalization: AppStoreVersionLocalization? = nil
    ) {
      self.appScreenshots = appScreenshots
      self.appStoreVersionLocalization = appStoreVersionLocalization
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      appScreenshots = try container.decodeIfPresent("appScreenshots")
      appStoreVersionLocalization = try container.decodeIfPresent("appStoreVersionLocalization")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(appScreenshots, forKey: "appScreenshots")
      try container.encodeIfPresent(
        appStoreVersionLocalization, forKey: "appStoreVersionLocalization")
    }

  }

  public init(
    links: ASCResourceLinks, _id: String, type: ASCType, attributes: Attributes? = nil,
    relationships: Relationships? = nil
  ) {
    self.links = links
    self._id = _id
    self.type = type
    self.attributes = attributes
    self.relationships = relationships
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    links = try container.decode("links")
    _id = try container.decode("id")
    type = try container.decode("type")
    attributes = try container.decodeIfPresent("attributes")
    relationships = try container.decodeIfPresent("relationships")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(links, forKey: "links")
    try container.encode(_id, forKey: "id")
    try container.encode(type, forKey: "type")
    try container.encodeIfPresent(attributes, forKey: "attributes")
    try container.encodeIfPresent(relationships, forKey: "relationships")
  }

}
