//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCCertificateCreateRequest: AppStoreConnectBaseModel {

    public var data: DataType

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case certificates = "certificates"
        }

        public var attributes: Attributes

        public var type: ASCType

        public struct Attributes: AppStoreConnectBaseModel {

            public var csrContent: String

            public var certificateType: ASCCertificateType

            public init(csrContent: String, certificateType: ASCCertificateType) {
                self.csrContent = csrContent
                self.certificateType = certificateType
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                csrContent = try container.decode("csrContent")
                certificateType = try container.decode("certificateType")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encode(csrContent, forKey: "csrContent")
                try container.encode(certificateType, forKey: "certificateType")
            }

        }

        public init(attributes: Attributes, type: ASCType) {
            self.attributes = attributes
            self.type = type
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            attributes = try container.decode("attributes")
            type = try container.decode("type")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

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
