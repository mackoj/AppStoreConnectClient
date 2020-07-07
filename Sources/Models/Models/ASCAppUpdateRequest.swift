//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppUpdateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case apps = "apps"
    }

    public var _id: String

    public var type: ASCType

    public var attributes: Attributes?

    public var relationships: Relationships?

    public struct Attributes: AppStoreConnectBaseModel {

      public enum ASCContentRightsDeclaration: String, Codable, Equatable, CaseIterable {
        case doesNotUseThirdPartyContent = "DOES_NOT_USE_THIRD_PARTY_CONTENT"
        case usesThirdPartyContent = "USES_THIRD_PARTY_CONTENT"
      }

      public var availableInNewTerritories: Bool?

      public var bundleId: String?

      public var contentRightsDeclaration: ASCContentRightsDeclaration?

      public var primaryLocale: String?

      public init(
        availableInNewTerritories: Bool? = nil, bundleId: String? = nil,
        contentRightsDeclaration: ASCContentRightsDeclaration? = nil, primaryLocale: String? = nil
      ) {
        self.availableInNewTerritories = availableInNewTerritories
        self.bundleId = bundleId
        self.contentRightsDeclaration = contentRightsDeclaration
        self.primaryLocale = primaryLocale
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        availableInNewTerritories = try container.decodeIfPresent("availableInNewTerritories")
        bundleId = try container.decodeIfPresent("bundleId")
        contentRightsDeclaration = try container.decodeIfPresent("contentRightsDeclaration")
        primaryLocale = try container.decodeIfPresent("primaryLocale")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(
          availableInNewTerritories, forKey: "availableInNewTerritories")
        try container.encodeIfPresent(bundleId, forKey: "bundleId")
        try container.encodeIfPresent(contentRightsDeclaration, forKey: "contentRightsDeclaration")
        try container.encodeIfPresent(primaryLocale, forKey: "primaryLocale")
      }

    }

    public struct Relationships: AppStoreConnectBaseModel {

      public var availableTerritories: AvailableTerritories?

      public var prices: Prices?

      public struct AvailableTerritories: AppStoreConnectBaseModel {

        public var data: [DataType]?

        public struct DataType: AppStoreConnectBaseModel {

          public enum ASCType: String, Codable, Equatable, CaseIterable {
            case territories = "territories"
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

        public init(data: [DataType]? = nil) {
          self.data = data
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          data = try container.decodeArrayIfPresent("data")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(data, forKey: "data")
        }

      }

      public struct Prices: AppStoreConnectBaseModel {

        public var data: [DataType]?

        public struct DataType: AppStoreConnectBaseModel {

          public enum ASCType: String, Codable, Equatable, CaseIterable {
            case appPrices = "appPrices"
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

        public init(data: [DataType]? = nil) {
          self.data = data
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          data = try container.decodeArrayIfPresent("data")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(data, forKey: "data")
        }

      }

      public init(availableTerritories: AvailableTerritories? = nil, prices: Prices? = nil) {
        self.availableTerritories = availableTerritories
        self.prices = prices
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        availableTerritories = try container.decodeIfPresent("availableTerritories")
        prices = try container.decodeIfPresent("prices")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(availableTerritories, forKey: "availableTerritories")
        try container.encodeIfPresent(prices, forKey: "prices")
      }

    }

    public init(
      _id: String, type: ASCType, attributes: Attributes? = nil, relationships: Relationships? = nil
    ) {
      self._id = _id
      self.type = type
      self.attributes = attributes
      self.relationships = relationships
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      _id = try container.decode("id")
      type = try container.decode("type")
      attributes = try container.decodeIfPresent("attributes")
      relationships = try container.decodeIfPresent("relationships")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encode(_id, forKey: "id")
      try container.encode(type, forKey: "type")
      try container.encodeIfPresent(attributes, forKey: "attributes")
      try container.encodeIfPresent(relationships, forKey: "relationships")
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
