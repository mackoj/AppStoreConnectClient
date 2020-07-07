//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppPreviewCreateRequest: AppStoreConnectBaseModel {

    public var data: DataType

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case appPreviews = "appPreviews"
        }

        public var relationships: Relationships

        public var attributes: Attributes

        public var type: ASCType

        public struct Relationships: AppStoreConnectBaseModel {

            public var appPreviewSet: AppPreviewSet

            public struct AppPreviewSet: AppStoreConnectBaseModel {

                public var data: DataType

                public struct DataType: AppStoreConnectBaseModel {

                    public enum ASCType: String, Codable, Equatable, CaseIterable {
                        case appPreviewSets = "appPreviewSets"
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

            public init(appPreviewSet: AppPreviewSet) {
                self.appPreviewSet = appPreviewSet
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                appPreviewSet = try container.decode("appPreviewSet")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(appPreviewSet, forKey: "appPreviewSet")
            }

        }

        public struct Attributes: AppStoreConnectBaseModel {

            public var fileName: String

            public var fileSize: Int

            public var mimeType: String?

            public var previewFrameTimeCode: String?

            public init(fileName: String, fileSize: Int, mimeType: String? = nil, previewFrameTimeCode: String? = nil) {
                self.fileName = fileName
                self.fileSize = fileSize
                self.mimeType = mimeType
                self.previewFrameTimeCode = previewFrameTimeCode
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                fileName = try container.decode("fileName")
                fileSize = try container.decode("fileSize")
                mimeType = try container.decodeIfPresent("mimeType")
                previewFrameTimeCode = try container.decodeIfPresent("previewFrameTimeCode")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(fileName, forKey: "fileName")
                try container.encode(fileSize, forKey: "fileSize")
                try container.encodeIfPresent(mimeType, forKey: "mimeType")
                try container.encodeIfPresent(previewFrameTimeCode, forKey: "previewFrameTimeCode")
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