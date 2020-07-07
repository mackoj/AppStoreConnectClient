//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppStoreVersionLocalization: AppStoreConnectBaseModel {

  public enum ASCType: String, Codable, Equatable, CaseIterable {
    case appStoreVersionLocalizations = "appStoreVersionLocalizations"
  }

  public var links: ASCResourceLinks

  public var _id: String

  public var type: ASCType

  public var attributes: Attributes?

  public var relationships: Relationships?

  public struct Attributes: AppStoreConnectBaseModel {

    public var description: String?

    public var keywords: String?

    public var locale: String?

    public var marketingUrl: URL?

    public var promotionalText: String?

    public var supportUrl: URL?

    public var whatsNew: String?

    public init(
      description: String? = nil, keywords: String? = nil, locale: String? = nil,
      marketingUrl: URL? = nil, promotionalText: String? = nil, supportUrl: URL? = nil,
      whatsNew: String? = nil
    ) {
      self.description = description
      self.keywords = keywords
      self.locale = locale
      self.marketingUrl = marketingUrl
      self.promotionalText = promotionalText
      self.supportUrl = supportUrl
      self.whatsNew = whatsNew
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      description = try container.decodeIfPresent("description")
      keywords = try container.decodeIfPresent("keywords")
      locale = try container.decodeIfPresent("locale")
      marketingUrl = try container.decodeIfPresent("marketingUrl")
      promotionalText = try container.decodeIfPresent("promotionalText")
      supportUrl = try container.decodeIfPresent("supportUrl")
      whatsNew = try container.decodeIfPresent("whatsNew")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(description, forKey: "description")
      try container.encodeIfPresent(keywords, forKey: "keywords")
      try container.encodeIfPresent(locale, forKey: "locale")
      try container.encodeIfPresent(marketingUrl, forKey: "marketingUrl")
      try container.encodeIfPresent(promotionalText, forKey: "promotionalText")
      try container.encodeIfPresent(supportUrl, forKey: "supportUrl")
      try container.encodeIfPresent(whatsNew, forKey: "whatsNew")
    }

  }

  public struct Relationships: AppStoreConnectBaseModel {

    public var appPreviewSets: AppPreviewSets?

    public var appScreenshotSets: AppScreenshotSets?

    public var appStoreVersion: AppStoreVersion?

    public struct AppPreviewSets: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case appPreviewSets = "appPreviewSets"
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

    public struct AppScreenshotSets: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case appScreenshotSets = "appScreenshotSets"
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

    public struct AppStoreVersion: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case appStoreVersions = "appStoreVersions"
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
      appPreviewSets: AppPreviewSets? = nil, appScreenshotSets: AppScreenshotSets? = nil,
      appStoreVersion: AppStoreVersion? = nil
    ) {
      self.appPreviewSets = appPreviewSets
      self.appScreenshotSets = appScreenshotSets
      self.appStoreVersion = appStoreVersion
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      appPreviewSets = try container.decodeIfPresent("appPreviewSets")
      appScreenshotSets = try container.decodeIfPresent("appScreenshotSets")
      appStoreVersion = try container.decodeIfPresent("appStoreVersion")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(appPreviewSets, forKey: "appPreviewSets")
      try container.encodeIfPresent(appScreenshotSets, forKey: "appScreenshotSets")
      try container.encodeIfPresent(appStoreVersion, forKey: "appStoreVersion")
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
