//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCIdfaDeclaration: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
        case idfaDeclarations = "idfaDeclarations"
    }

    public var links: ASCResourceLinks

    public var _id: String

    public var type: ASCType

    public var attributes: Attributes?

    public var relationships: Relationships?

    public struct Attributes: AppStoreConnectBaseModel {

        public var attributesActionWithPreviousAd: Bool?

        public var attributesAppInstallationToPreviousAd: Bool?

        public var honorsLimitedAdTracking: Bool?

        public var servesAds: Bool?

        public init(attributesActionWithPreviousAd: Bool? = nil, attributesAppInstallationToPreviousAd: Bool? = nil, honorsLimitedAdTracking: Bool? = nil, servesAds: Bool? = nil) {
            self.attributesActionWithPreviousAd = attributesActionWithPreviousAd
            self.attributesAppInstallationToPreviousAd = attributesAppInstallationToPreviousAd
            self.honorsLimitedAdTracking = honorsLimitedAdTracking
            self.servesAds = servesAds
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            attributesActionWithPreviousAd = try container.decodeIfPresent("attributesActionWithPreviousAd")
            attributesAppInstallationToPreviousAd = try container.decodeIfPresent("attributesAppInstallationToPreviousAd")
            honorsLimitedAdTracking = try container.decodeIfPresent("honorsLimitedAdTracking")
            servesAds = try container.decodeIfPresent("servesAds")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(attributesActionWithPreviousAd, forKey: "attributesActionWithPreviousAd")
            try container.encodeIfPresent(attributesAppInstallationToPreviousAd, forKey: "attributesAppInstallationToPreviousAd")
            try container.encodeIfPresent(honorsLimitedAdTracking, forKey: "honorsLimitedAdTracking")
            try container.encodeIfPresent(servesAds, forKey: "servesAds")
        }

    }

    public struct Relationships: AppStoreConnectBaseModel {

        public var appStoreVersion: AppStoreVersion?

        public struct AppStoreVersion: AppStoreConnectBaseModel {

            public var data: DataType?

            public var links: Links?

            public struct DataType: AppStoreConnectBaseModel {

                public enum ASCType: String, Codable, Equatable, CaseIterable {
                    case appStoreVersions = "appStoreVersions"
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

        public init(appStoreVersion: AppStoreVersion? = nil) {
            self.appStoreVersion = appStoreVersion
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            appStoreVersion = try container.decodeIfPresent("appStoreVersion")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(appStoreVersion, forKey: "appStoreVersion")
        }

    }

    public init(links: ASCResourceLinks, _id: String, type: ASCType, attributes: Attributes? = nil, relationships: Relationships? = nil) {
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
