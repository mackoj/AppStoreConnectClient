//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppStoreVersionLocalizationUpdateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case appStoreVersionLocalizations = "appStoreVersionLocalizations"
    }

    public var _id: String

    public var type: ASCType

    public var attributes: Attributes?

    public struct Attributes: AppStoreConnectBaseModel {

      public var description: String?

      public var keywords: String?

      public var marketingUrl: URL?

      public var promotionalText: String?

      public var supportUrl: URL?

      public var whatsNew: String?

      public init(
        description: String? = nil, keywords: String? = nil, marketingUrl: URL? = nil,
        promotionalText: String? = nil, supportUrl: URL? = nil, whatsNew: String? = nil
      ) {
        self.description = description
        self.keywords = keywords
        self.marketingUrl = marketingUrl
        self.promotionalText = promotionalText
        self.supportUrl = supportUrl
        self.whatsNew = whatsNew
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        keywords = try container.decodeIfPresent("keywords")
        marketingUrl = try container.decodeIfPresent("marketingUrl")
        promotionalText = try container.decodeIfPresent("promotionalText")
        supportUrl = try container.decodeIfPresent("supportUrl")
        whatsNew = try container.decodeIfPresent("whatsNew")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(keywords, forKey: "keywords")
        try container.encodeIfPresent(marketingUrl, forKey: "marketingUrl")
        try container.encodeIfPresent(promotionalText, forKey: "promotionalText")
        try container.encodeIfPresent(supportUrl, forKey: "supportUrl")
        try container.encodeIfPresent(whatsNew, forKey: "whatsNew")
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
