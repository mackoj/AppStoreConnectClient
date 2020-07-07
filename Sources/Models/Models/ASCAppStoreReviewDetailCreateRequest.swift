//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppStoreReviewDetailCreateRequest: AppStoreConnectBaseModel {

    public var data: DataType

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case appStoreReviewDetails = "appStoreReviewDetails"
        }

        public var relationships: Relationships

        public var type: ASCType

        public var attributes: Attributes?

        public struct Relationships: AppStoreConnectBaseModel {

            public var appStoreVersion: AppStoreVersion

            public struct AppStoreVersion: AppStoreConnectBaseModel {

                public var data: DataType

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case appStoreVersions = "appStoreVersions"
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

        public struct Attributes: AppStoreConnectBaseModel {

            public var contactEmail: String?

            public var contactFirstName: String?

            public var contactLastName: String?

            public var contactPhone: String?

            public var demoAccountName: String?

            public var demoAccountPassword: String?

            public var demoAccountRequired: Bool?

            public var notes: String?

            public init(contactEmail: String? = nil, contactFirstName: String? = nil, contactLastName: String? = nil, contactPhone: String? = nil, demoAccountName: String? = nil, demoAccountPassword: String? = nil, demoAccountRequired: Bool? = nil, notes: String? = nil) {
                self.contactEmail = contactEmail
                self.contactFirstName = contactFirstName
                self.contactLastName = contactLastName
                self.contactPhone = contactPhone
                self.demoAccountName = demoAccountName
                self.demoAccountPassword = demoAccountPassword
                self.demoAccountRequired = demoAccountRequired
                self.notes = notes
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                contactEmail = try container.decodeIfPresent("contactEmail")
                contactFirstName = try container.decodeIfPresent("contactFirstName")
                contactLastName = try container.decodeIfPresent("contactLastName")
                contactPhone = try container.decodeIfPresent("contactPhone")
                demoAccountName = try container.decodeIfPresent("demoAccountName")
                demoAccountPassword = try container.decodeIfPresent("demoAccountPassword")
                demoAccountRequired = try container.decodeIfPresent("demoAccountRequired")
                notes = try container.decodeIfPresent("notes")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(contactEmail, forKey: "contactEmail")
                try container.encodeIfPresent(contactFirstName, forKey: "contactFirstName")
                try container.encodeIfPresent(contactLastName, forKey: "contactLastName")
                try container.encodeIfPresent(contactPhone, forKey: "contactPhone")
                try container.encodeIfPresent(demoAccountName, forKey: "demoAccountName")
                try container.encodeIfPresent(demoAccountPassword, forKey: "demoAccountPassword")
                try container.encodeIfPresent(demoAccountRequired, forKey: "demoAccountRequired")
                try container.encodeIfPresent(notes, forKey: "notes")
            }

        }

        public init(relationships: Relationships, type: ASCType, attributes: Attributes? = nil) {
            self.relationships = relationships
            self.type = type
            self.attributes = attributes
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            relationships = try container.decode("relationships")
            type = try container.decode("type")
            attributes = try container.decodeIfPresent("attributes")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(relationships, forKey: "relationships")
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
