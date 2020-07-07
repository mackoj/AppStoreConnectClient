//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCUserInvitation: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
        case userInvitations = "userInvitations"
    }

    public var links: ASCResourceLinks

    public var id: String

    public var type: ASCType

    public var attributes: Attributes?

    public var relationships: Relationships?

    public struct Attributes: AppStoreConnectBaseModel {

        public var allAppsVisible: Bool?

        public var email: String?

        public var expirationDate: DateTime?

        public var firstName: String?

        public var lastName: String?

        public var provisioningAllowed: Bool?

        public var roles: [ASCUserRole]?

        public init(allAppsVisible: Bool? = nil, email: String? = nil, expirationDate: DateTime? = nil, firstName: String? = nil, lastName: String? = nil, provisioningAllowed: Bool? = nil, roles: [ASCUserRole]? = nil) {
            self.allAppsVisible = allAppsVisible
            self.email = email
            self.expirationDate = expirationDate
            self.firstName = firstName
            self.lastName = lastName
            self.provisioningAllowed = provisioningAllowed
            self.roles = roles
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            allAppsVisible = try container.decodeIfPresent("allAppsVisible")
            email = try container.decodeIfPresent("email")
            expirationDate = try container.decodeIfPresent("expirationDate")
            firstName = try container.decodeIfPresent("firstName")
            lastName = try container.decodeIfPresent("lastName")
            provisioningAllowed = try container.decodeIfPresent("provisioningAllowed")
            roles = try container.decodeArrayIfPresent("roles")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(allAppsVisible, forKey: "allAppsVisible")
            try container.encodeIfPresent(email, forKey: "email")
            try container.encodeIfPresent(expirationDate, forKey: "expirationDate")
            try container.encodeIfPresent(firstName, forKey: "firstName")
            try container.encodeIfPresent(lastName, forKey: "lastName")
            try container.encodeIfPresent(provisioningAllowed, forKey: "provisioningAllowed")
            try container.encodeIfPresent(roles, forKey: "roles")
        }

    }

    public struct Relationships: AppStoreConnectBaseModel {

        public var visibleApps: VisibleApps?

        public struct VisibleApps: AppStoreConnectBaseModel {

            public var data: [DataType]?

            public var links: Links?

            public var meta: ASCPagingInformation?

            public struct DataType: AppStoreConnectBaseModel {

                public enum ASCType: String, Codable, Equatable, CaseIterable {
                    case apps = "apps"
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

    public init(links: ASCResourceLinks, id: String, type: ASCType, attributes: Attributes? = nil, relationships: Relationships? = nil) {
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