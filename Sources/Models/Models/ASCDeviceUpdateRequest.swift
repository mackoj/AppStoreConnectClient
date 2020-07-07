//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCDeviceUpdateRequest: AppStoreConnectBaseModel {

    public var data: DataType

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case devices = "devices"
        }

        public var id: String

        public var type: ASCType

        public var attributes: Attributes?

        public struct Attributes: AppStoreConnectBaseModel {

            public enum ASCStatus: String, Codable, Equatable, CaseIterable {
                case enabled = "ENABLED"
                case disabled = "DISABLED"
            }

            public var name: String?

            public var status: ASCStatus?

            public init(name: String? = nil, status: ASCStatus? = nil) {
                self.name = name
                self.status = status
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                name = try container.decodeIfPresent("name")
                status = try container.decodeIfPresent("status")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(name, forKey: "name")
                try container.encodeIfPresent(status, forKey: "status")
            }

        }

        public init(id: String, type: ASCType, attributes: Attributes? = nil) {
            self.id = id
            self.type = type
            self.attributes = attributes
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            id = try container.decode("id")
            type = try container.decode("type")
            attributes = try container.decodeIfPresent("attributes")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(id, forKey: "id")
            try container.encode(type, forKey: "type")
            try container.encodeIfPresent(attributes, forKey: "attributes")
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
