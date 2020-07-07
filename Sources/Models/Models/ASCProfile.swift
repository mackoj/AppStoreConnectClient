//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCProfile: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
        case profiles = "profiles"
    }

    public var links: ASCResourceLinks

    public var id: String

    public var type: ASCType

    public var attributes: Attributes?

    public var relationships: Relationships?

    public struct Attributes: AppStoreConnectBaseModel {

        public enum ASCProfileState: String, Codable, Equatable, CaseIterable {
            case active = "ACTIVE"
            case invalid = "INVALID"
        }

        public enum ASCProfileType: String, Codable, Equatable, CaseIterable {
            case iosAppDevelopment = "IOS_APP_DEVELOPMENT"
            case iosAppStore = "IOS_APP_STORE"
            case iosAppAdhoc = "IOS_APP_ADHOC"
            case iosAppInhouse = "IOS_APP_INHOUSE"
            case macAppDevelopment = "MAC_APP_DEVELOPMENT"
            case macAppStore = "MAC_APP_STORE"
            case macAppDirect = "MAC_APP_DIRECT"
            case tvosAppDevelopment = "TVOS_APP_DEVELOPMENT"
            case tvosAppStore = "TVOS_APP_STORE"
            case tvosAppAdhoc = "TVOS_APP_ADHOC"
            case tvosAppInhouse = "TVOS_APP_INHOUSE"
            case macCatalystAppDevelopment = "MAC_CATALYST_APP_DEVELOPMENT"
            case macCatalystAppStore = "MAC_CATALYST_APP_STORE"
            case macCatalystAppDirect = "MAC_CATALYST_APP_DIRECT"
        }

        public var createdDate: DateTime?

        public var expirationDate: DateTime?

        public var name: String?

        public var platform: ASCBundleIdPlatform?

        public var profileContent: String?

        public var profileState: ASCProfileState?

        public var profileType: ASCProfileType?

        public var uuid: String?

        public init(createdDate: DateTime? = nil, expirationDate: DateTime? = nil, name: String? = nil, platform: ASCBundleIdPlatform? = nil, profileContent: String? = nil, profileState: ASCProfileState? = nil, profileType: ASCProfileType? = nil, uuid: String? = nil) {
            self.createdDate = createdDate
            self.expirationDate = expirationDate
            self.name = name
            self.platform = platform
            self.profileContent = profileContent
            self.profileState = profileState
            self.profileType = profileType
            self.uuid = uuid
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            createdDate = try container.decodeIfPresent("createdDate")
            expirationDate = try container.decodeIfPresent("expirationDate")
            name = try container.decodeIfPresent("name")
            platform = try container.decodeIfPresent("platform")
            profileContent = try container.decodeIfPresent("profileContent")
            profileState = try container.decodeIfPresent("profileState")
            profileType = try container.decodeIfPresent("profileType")
            uuid = try container.decodeIfPresent("uuid")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(createdDate, forKey: "createdDate")
            try container.encodeIfPresent(expirationDate, forKey: "expirationDate")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(platform, forKey: "platform")
            try container.encodeIfPresent(profileContent, forKey: "profileContent")
            try container.encodeIfPresent(profileState, forKey: "profileState")
            try container.encodeIfPresent(profileType, forKey: "profileType")
            try container.encodeIfPresent(uuid, forKey: "uuid")
        }

    }

    public struct Relationships: AppStoreConnectBaseModel {

        public var bundleId: BundleId?

        public var certificates: Certificates?

        public var devices: Devices?

        public struct BundleId: AppStoreConnectBaseModel {

            public var data: DataType?

            public var links: Links?

            public struct DataType: AppStoreConnectBaseModel {

                public enum ASCType: String, Codable, Equatable, CaseIterable {
                    case bundleIds = "bundleIds"
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

        public struct Certificates: AppStoreConnectBaseModel {

            public var data: [DataType]?

            public var links: Links?

            public var meta: ASCPagingInformation?

            public struct DataType: AppStoreConnectBaseModel {

                public enum ASCType: String, Codable, Equatable, CaseIterable {
                    case certificates = "certificates"
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

        public struct Devices: AppStoreConnectBaseModel {

            public var data: [DataType]?

            public var links: Links?

            public var meta: ASCPagingInformation?

            public struct DataType: AppStoreConnectBaseModel {

                public enum ASCType: String, Codable, Equatable, CaseIterable {
                    case devices = "devices"
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

        public init(bundleId: BundleId? = nil, certificates: Certificates? = nil, devices: Devices? = nil) {
            self.bundleId = bundleId
            self.certificates = certificates
            self.devices = devices
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            bundleId = try container.decodeIfPresent("bundleId")
            certificates = try container.decodeIfPresent("certificates")
            devices = try container.decodeIfPresent("devices")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(bundleId, forKey: "bundleId")
            try container.encodeIfPresent(certificates, forKey: "certificates")
            try container.encodeIfPresent(devices, forKey: "devices")
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