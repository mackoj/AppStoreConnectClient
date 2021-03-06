//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppStoreVersionLocalizationCreateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case appStoreVersionLocalizations = "appStoreVersionLocalizations"
    }

    public var relationships: Relationships

    public var attributes: Attributes

    public var type: ASCType

    public struct Relationships: AppStoreConnectBaseModel {

      public var appStoreVersion: AppStoreVersion

      public struct AppStoreVersion: AppStoreConnectBaseModel {

        public var data: DataType

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

      public init(appStoreVersion: AppStoreVersion) {
        self.appStoreVersion = appStoreVersion
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        appStoreVersion = try container.decode("appStoreVersion")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(appStoreVersion, forKey: "appStoreVersion")
      }

    }

    public struct Attributes: AppStoreConnectBaseModel {

      public var locale: String

      public var description: String?

      public var keywords: String?

      public var marketingUrl: URL?

      public var promotionalText: String?

      public var supportUrl: URL?

      public var whatsNew: String?

      public init(
        locale: String, description: String? = nil, keywords: String? = nil,
        marketingUrl: URL? = nil, promotionalText: String? = nil, supportUrl: URL? = nil,
        whatsNew: String? = nil
      ) {
        self.locale = locale
        self.description = description
        self.keywords = keywords
        self.marketingUrl = marketingUrl
        self.promotionalText = promotionalText
        self.supportUrl = supportUrl
        self.whatsNew = whatsNew
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        locale = try container.decode("locale")
        description = try container.decodeIfPresent("description")
        keywords = try container.decodeIfPresent("keywords")
        marketingUrl = try container.decodeIfPresent("marketingUrl")
        promotionalText = try container.decodeIfPresent("promotionalText")
        supportUrl = try container.decodeIfPresent("supportUrl")
        whatsNew = try container.decodeIfPresent("whatsNew")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(locale, forKey: "locale")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(keywords, forKey: "keywords")
        try container.encodeIfPresent(marketingUrl, forKey: "marketingUrl")
        try container.encodeIfPresent(promotionalText, forKey: "promotionalText")
        try container.encodeIfPresent(supportUrl, forKey: "supportUrl")
        try container.encodeIfPresent(whatsNew, forKey: "whatsNew")
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
