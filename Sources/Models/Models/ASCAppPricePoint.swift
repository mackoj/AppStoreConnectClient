//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppPricePoint: AppStoreConnectBaseModel {

  public enum ASCType: String, Codable, Equatable, CaseIterable {
    case appPricePoints = "appPricePoints"
  }

  public var links: ASCResourceLinks

  public var id: String

  public var type: ASCType

  public var attributes: Attributes?

  public var relationships: Relationships?

  public struct Attributes: AppStoreConnectBaseModel {

    public var customerPrice: String?

    public var proceeds: String?

    public init(customerPrice: String? = nil, proceeds: String? = nil) {
      self.customerPrice = customerPrice
      self.proceeds = proceeds
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      customerPrice = try container.decodeIfPresent("customerPrice")
      proceeds = try container.decodeIfPresent("proceeds")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(customerPrice, forKey: "customerPrice")
      try container.encodeIfPresent(proceeds, forKey: "proceeds")
    }

  }

  public struct Relationships: AppStoreConnectBaseModel {

    public var priceTier: PriceTier?

    public var territory: Territory?

    public struct PriceTier: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case appPriceTiers = "appPriceTiers"
        }

        public var id: String

        public var type: ASCType

        public init(id: String, type: ASCType) {
          self.id = id
          self.type = type
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          id = try container.decode("id")
          type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(id, forKey: "id")
          try container.encode(type, forKey: "type")
        }

      }

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
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

    public struct Territory: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case territories = "territories"
        }

        public var id: String

        public var type: ASCType

        public init(id: String, type: ASCType) {
          self.id = id
          self.type = type
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          id = try container.decode("id")
          type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(id, forKey: "id")
          try container.encode(type, forKey: "type")
        }

      }

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
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

    public init(priceTier: PriceTier? = nil, territory: Territory? = nil) {
      self.priceTier = priceTier
      self.territory = territory
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      priceTier = try container.decodeIfPresent("priceTier")
      territory = try container.decodeIfPresent("territory")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(priceTier, forKey: "priceTier")
      try container.encodeIfPresent(territory, forKey: "territory")
    }

  }

  public init(
    links: ASCResourceLinks, id: String, type: ASCType, attributes: Attributes? = nil,
    relationships: Relationships? = nil
  ) {
    self.links = links
    self.id = id
    self.type = type
    self.attributes = attributes
    self.relationships = relationships
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    links = try container.decode("links")
    id = try container.decode("id")
    type = try container.decode("type")
    attributes = try container.decodeIfPresent("attributes")
    relationships = try container.decodeIfPresent("relationships")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(links, forKey: "links")
    try container.encode(id, forKey: "id")
    try container.encode(type, forKey: "type")
    try container.encodeIfPresent(attributes, forKey: "attributes")
    try container.encodeIfPresent(relationships, forKey: "relationships")
  }

}
