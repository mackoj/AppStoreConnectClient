//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCUserInvitationCreateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case userInvitations = "userInvitations"
    }

    public var attributes: Attributes

    public var type: ASCType

    public var relationships: Relationships?

    public struct Attributes: AppStoreConnectBaseModel {

      public var firstName: String

      public var lastName: String

      public var roles: [ASCUserRole]

      public var email: String

      public var allAppsVisible: Bool?

      public var provisioningAllowed: Bool?

      public init(
        firstName: String, lastName: String, roles: [ASCUserRole], email: String,
        allAppsVisible: Bool? = nil, provisioningAllowed: Bool? = nil
      ) {
        self.firstName = firstName
        self.lastName = lastName
        self.roles = roles
        self.email = email
        self.allAppsVisible = allAppsVisible
        self.provisioningAllowed = provisioningAllowed
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        firstName = try container.decode("firstName")
        lastName = try container.decode("lastName")
        roles = try container.decodeArray("roles")
        email = try container.decode("email")
        allAppsVisible = try container.decodeIfPresent("allAppsVisible")
        provisioningAllowed = try container.decodeIfPresent("provisioningAllowed")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(firstName, forKey: "firstName")
        try container.encode(lastName, forKey: "lastName")
        try container.encode(roles, forKey: "roles")
        try container.encode(email, forKey: "email")
        try container.encodeIfPresent(allAppsVisible, forKey: "allAppsVisible")
        try container.encodeIfPresent(provisioningAllowed, forKey: "provisioningAllowed")
      }

    }

    public struct Relationships: AppStoreConnectBaseModel {

      public var visibleApps: VisibleApps?

      public struct VisibleApps: AppStoreConnectBaseModel {

        public var data: [DataType]?

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

      public init(visibleApps: VisibleApps? = nil) {
        self.visibleApps = visibleApps
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        visibleApps = try container.decodeIfPresent("visibleApps")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(visibleApps, forKey: "visibleApps")
      }

    }

    public init(attributes: Attributes, type: ASCType, relationships: Relationships? = nil) {
      self.attributes = attributes
      self.type = type
      self.relationships = relationships
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      attributes = try container.decode("attributes")
      type = try container.decode("type")
      relationships = try container.decodeIfPresent("relationships")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encode(attributes, forKey: "attributes")
      try container.encode(type, forKey: "type")
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
