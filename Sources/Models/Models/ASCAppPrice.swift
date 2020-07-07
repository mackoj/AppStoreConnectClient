//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppPrice: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
        case appPrices = "appPrices"
    }

    public var links: ASCResourceLinks

    public var _id: String

    public var type: ASCType

    public var relationships: Relationships?

    public struct Relationships: AppStoreConnectBaseModel {

        public var app: App?

        public var priceTier: PriceTier?

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

        public struct PriceTier: AppStoreConnectBaseModel {

            public var data: DataType?

            public var links: Links?

            public struct DataType: AppStoreConnectBaseModel {

                public enum ASCType: String, Codable, Equatable, CaseIterable {
                    case appPriceTiers = "appPriceTiers"
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

        public init(app: App? = nil, priceTier: PriceTier? = nil) {
            self.app = app
            self.priceTier = priceTier
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            app = try container.decodeIfPresent("app")
            priceTier = try container.decodeIfPresent("priceTier")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(app, forKey: "app")
            try container.encodeIfPresent(priceTier, forKey: "priceTier")
        }

    }

    public init(links: ASCResourceLinks, _id: String, type: ASCType, relationships: Relationships? = nil) {
        self.links = links
        self._id = _id
        self.type = type
        self.relationships = relationships
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        links = try container.decode("links")
        _id = try container.decode("id")
        type = try container.decode("type")
        relationships = try container.decodeIfPresent("relationships")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(links, forKey: "links")
        try container.encode(_id, forKey: "id")
        try container.encode(type, forKey: "type")
        try container.encodeIfPresent(relationships, forKey: "relationships")
    }

}
