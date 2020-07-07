//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCGameCenterEnabledVersion: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
        case gameCenterEnabledVersions = "gameCenterEnabledVersions"
    }

    public var links: ASCResourceLinks

    public var id: String

    public var type: ASCType

    public var attributes: Attributes?

    public var relationships: Relationships?

    public struct Attributes: AppStoreConnectBaseModel {

        public var iconAsset: ASCImageAsset?

        public var platform: ASCPlatform?

        public var versionString: String?

        public init(iconAsset: ASCImageAsset? = nil, platform: ASCPlatform? = nil, versionString: String? = nil) {
            self.iconAsset = iconAsset
            self.platform = platform
            self.versionString = versionString
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            iconAsset = try container.decodeIfPresent("iconAsset")
            platform = try container.decodeIfPresent("platform")
            versionString = try container.decodeIfPresent("versionString")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(iconAsset, forKey: "iconAsset")
            try container.encodeIfPresent(platform, forKey: "platform")
            try container.encodeIfPresent(versionString, forKey: "versionString")
        }

    }

    public struct Relationships: AppStoreConnectBaseModel {

        public var app: App?

        public var compatibleVersions: CompatibleVersions?

        public struct App: AppStoreConnectBaseModel {

            public var data: DataType?

            public var links: Links?

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

        public struct CompatibleVersions: AppStoreConnectBaseModel {

            public var data: [DataType]?

            public var links: Links?

            public var meta: ASCPagingInformation?

            public struct DataType: AppStoreConnectBaseModel {

                public enum ASCType: String, Codable, Equatable, CaseIterable {
                    case gameCenterEnabledVersions = "gameCenterEnabledVersions"
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

        public init(app: App? = nil, compatibleVersions: CompatibleVersions? = nil) {
            self.app = app
            self.compatibleVersions = compatibleVersions
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            app = try container.decodeIfPresent("app")
            compatibleVersions = try container.decodeIfPresent("compatibleVersions")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(app, forKey: "app")
            try container.encodeIfPresent(compatibleVersions, forKey: "compatibleVersions")
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
