//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCBetaTesterBetaGroupsLinkagesResponse: AppStoreConnectBaseModel {

    public var data: [DataType]

    public var links: ASCPagedDocumentLinks

    public var meta: ASCPagingInformation?

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case betaGroups = "betaGroups"
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

    public init(data: [DataType], links: ASCPagedDocumentLinks, meta: ASCPagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArray("data")
        links = try container.decode("links")
        meta = try container.decodeIfPresent("meta")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(data, forKey: "data")
        try container.encode(links, forKey: "links")
        try container.encodeIfPresent(meta, forKey: "meta")
    }

}
