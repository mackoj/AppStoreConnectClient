//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppInfoUpdateRequest: AppStoreConnectBaseModel {

    public var data: DataType

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case appInfos = "appInfos"
        }

        public var id: String

        public var type: ASCType

        public var relationships: Relationships?

        public struct Relationships: AppStoreConnectBaseModel {

            public var primaryCategory: PrimaryCategory?

            public var primarySubcategoryOne: PrimarySubcategoryOne?

            public var primarySubcategoryTwo: PrimarySubcategoryTwo?

            public var secondaryCategory: SecondaryCategory?

            public var secondarySubcategoryOne: SecondarySubcategoryOne?

            public var secondarySubcategoryTwo: SecondarySubcategoryTwo?

            public struct PrimaryCategory: AppStoreConnectBaseModel {

                public var data: DataType?

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case appCategories = "appCategories"
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

                public init(data: DataType? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    data = try container.decodeIfPresent("data")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(data, forKey: "data")
                }

            }

            public struct PrimarySubcategoryOne: AppStoreConnectBaseModel {

                public var data: DataType?

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case appCategories = "appCategories"
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

                public init(data: DataType? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    data = try container.decodeIfPresent("data")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(data, forKey: "data")
                }

            }

            public struct PrimarySubcategoryTwo: AppStoreConnectBaseModel {

                public var data: DataType?

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case appCategories = "appCategories"
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

                public init(data: DataType? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    data = try container.decodeIfPresent("data")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(data, forKey: "data")
                }

            }

            public struct SecondaryCategory: AppStoreConnectBaseModel {

                public var data: DataType?

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case appCategories = "appCategories"
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

                public init(data: DataType? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    data = try container.decodeIfPresent("data")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(data, forKey: "data")
                }

            }

            public struct SecondarySubcategoryOne: AppStoreConnectBaseModel {

                public var data: DataType?

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case appCategories = "appCategories"
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

                public init(data: DataType? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    data = try container.decodeIfPresent("data")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(data, forKey: "data")
                }

            }

            public struct SecondarySubcategoryTwo: AppStoreConnectBaseModel {

                public var data: DataType?

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case appCategories = "appCategories"
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

                public init(data: DataType? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    data = try container.decodeIfPresent("data")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(data, forKey: "data")
                }

            }

            public init(primaryCategory: PrimaryCategory? = nil, primarySubcategoryOne: PrimarySubcategoryOne? = nil, primarySubcategoryTwo: PrimarySubcategoryTwo? = nil, secondaryCategory: SecondaryCategory? = nil, secondarySubcategoryOne: SecondarySubcategoryOne? = nil, secondarySubcategoryTwo: SecondarySubcategoryTwo? = nil) {
                self.primaryCategory = primaryCategory
                self.primarySubcategoryOne = primarySubcategoryOne
                self.primarySubcategoryTwo = primarySubcategoryTwo
                self.secondaryCategory = secondaryCategory
                self.secondarySubcategoryOne = secondarySubcategoryOne
                self.secondarySubcategoryTwo = secondarySubcategoryTwo
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                primaryCategory = try container.decodeIfPresent("primaryCategory")
                primarySubcategoryOne = try container.decodeIfPresent("primarySubcategoryOne")
                primarySubcategoryTwo = try container.decodeIfPresent("primarySubcategoryTwo")
                secondaryCategory = try container.decodeIfPresent("secondaryCategory")
                secondarySubcategoryOne = try container.decodeIfPresent("secondarySubcategoryOne")
                secondarySubcategoryTwo = try container.decodeIfPresent("secondarySubcategoryTwo")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(primaryCategory, forKey: "primaryCategory")
                try container.encodeIfPresent(primarySubcategoryOne, forKey: "primarySubcategoryOne")
                try container.encodeIfPresent(primarySubcategoryTwo, forKey: "primarySubcategoryTwo")
                try container.encodeIfPresent(secondaryCategory, forKey: "secondaryCategory")
                try container.encodeIfPresent(secondarySubcategoryOne, forKey: "secondarySubcategoryOne")
                try container.encodeIfPresent(secondarySubcategoryTwo, forKey: "secondarySubcategoryTwo")
            }

        }

        public init(id: String, type: ASCType, relationships: Relationships? = nil) {
            self.id = id
            self.type = type
            self.relationships = relationships
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            id = try container.decode("id")
            type = try container.decode("type")
            relationships = try container.decodeIfPresent("relationships")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(id, forKey: "id")
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
