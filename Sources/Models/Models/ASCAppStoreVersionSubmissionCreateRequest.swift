//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppStoreVersionSubmissionCreateRequest: AppStoreConnectBaseModel {

    public var data: DataType

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case appStoreVersionSubmissions = "appStoreVersionSubmissions"
        }

        public var relationships: Relationships

        public var type: ASCType

        public struct Relationships: AppStoreConnectBaseModel {

            public var appStoreVersion: AppStoreVersion

            public struct AppStoreVersion: AppStoreConnectBaseModel {

                public var data: DataType

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

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                appStoreVersion = try container.decode("appStoreVersion")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(appStoreVersion, forKey: "appStoreVersion")
            }

        }

        public init(relationships: Relationships, type: ASCType) {
            self.relationships = relationships
            self.type = type
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            relationships = try container.decode("relationships")
            type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(relationships, forKey: "relationships")
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
