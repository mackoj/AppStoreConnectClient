//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCBundleIdCapabilityCreateRequest: AppStoreConnectBaseModel {

    public var data: DataType

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case bundleIdCapabilities = "bundleIdCapabilities"
        }

        public var relationships: Relationships

        public var attributes: Attributes

        public var type: ASCType

        public struct Relationships: AppStoreConnectBaseModel {

            public var bundleId: BundleId

            public struct BundleId: AppStoreConnectBaseModel {

                public var data: DataType

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case bundleIds = "bundleIds"
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

            public init(bundleId: BundleId) {
                self.bundleId = bundleId
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                bundleId = try container.decode("bundleId")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(bundleId, forKey: "bundleId")
            }

        }

        public struct Attributes: AppStoreConnectBaseModel {

            public var capabilityType: ASCCapabilityType

            public var settings: [ASCCapabilitySetting]?

            public init(capabilityType: ASCCapabilityType, settings: [ASCCapabilitySetting]? = nil) {
                self.capabilityType = capabilityType
                self.settings = settings
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                capabilityType = try container.decode("capabilityType")
                settings = try container.decodeArrayIfPresent("settings")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(capabilityType, forKey: "capabilityType")
                try container.encodeIfPresent(settings, forKey: "settings")
            }

        }

        public init(relationships: Relationships, attributes: Attributes, type: ASCType) {
            self.relationships = relationships
            self.attributes = attributes
            self.type = type
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            relationships = try container.decode("relationships")
            attributes = try container.decode("attributes")
            type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(relationships, forKey: "relationships")
            try container.encode(attributes, forKey: "attributes")
            try container.encode(type, forKey: "type")
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
