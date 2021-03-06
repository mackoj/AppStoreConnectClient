//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCBetaLicenseAgreement: AppStoreConnectBaseModel {

  public enum ASCType: String, Codable, Equatable, CaseIterable {
    case betaLicenseAgreements = "betaLicenseAgreements"
  }

  public var links: ASCResourceLinks

  public var _id: String

  public var type: ASCType

  public var attributes: Attributes?

  public var relationships: Relationships?

  public struct Attributes: AppStoreConnectBaseModel {

    public var agreementText: String?

    public init(agreementText: String? = nil) {
      self.agreementText = agreementText
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      agreementText = try container.decodeIfPresent("agreementText")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(agreementText, forKey: "agreementText")
    }

  }

  public struct Relationships: AppStoreConnectBaseModel {

    public var app: App?

    public struct App: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case apps = "apps"
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

    public init(app: App? = nil) {
      self.app = app
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      app = try container.decodeIfPresent("app")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(app, forKey: "app")
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
