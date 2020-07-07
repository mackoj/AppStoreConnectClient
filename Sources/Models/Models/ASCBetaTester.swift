//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCBetaTester: AppStoreConnectBaseModel {

  public enum ASCType: String, Codable, Equatable, CaseIterable {
    case betaTesters = "betaTesters"
  }

  public var links: ASCResourceLinks

  public var _id: String

  public var type: ASCType

  public var attributes: Attributes?

  public var relationships: Relationships?

  public struct Attributes: AppStoreConnectBaseModel {

    public var email: String?

    public var firstName: String?

    public var inviteType: ASCBetaInviteType?

    public var lastName: String?

    public init(
      email: String? = nil, firstName: String? = nil, inviteType: ASCBetaInviteType? = nil,
      lastName: String? = nil
    ) {
      self.email = email
      self.firstName = firstName
      self.inviteType = inviteType
      self.lastName = lastName
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      email = try container.decodeIfPresent("email")
      firstName = try container.decodeIfPresent("firstName")
      inviteType = try container.decodeIfPresent("inviteType")
      lastName = try container.decodeIfPresent("lastName")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(email, forKey: "email")
      try container.encodeIfPresent(firstName, forKey: "firstName")
      try container.encodeIfPresent(inviteType, forKey: "inviteType")
      try container.encodeIfPresent(lastName, forKey: "lastName")
    }

  }

  public struct Relationships: AppStoreConnectBaseModel {

    public var apps: Apps?

    public var betaGroups: BetaGroups?

    public var builds: Builds?

    public struct Apps: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

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

    public struct BetaGroups: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case betaGroups = "betaGroups"
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

    public struct Builds: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case builds = "builds"
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

    public init(apps: Apps? = nil, betaGroups: BetaGroups? = nil, builds: Builds? = nil) {
      self.apps = apps
      self.betaGroups = betaGroups
      self.builds = builds
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      apps = try container.decodeIfPresent("apps")
      betaGroups = try container.decodeIfPresent("betaGroups")
      builds = try container.decodeIfPresent("builds")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(apps, forKey: "apps")
      try container.encodeIfPresent(betaGroups, forKey: "betaGroups")
      try container.encodeIfPresent(builds, forKey: "builds")
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
