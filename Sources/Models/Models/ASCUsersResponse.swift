//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCUsersResponse: AppStoreConnectBaseModel {

    public var data: [ASCUser]

    public var links: ASCPagedDocumentLinks

    public var included: [ASCApp]?

    public var meta: ASCPagingInformation?

    public init(data: [ASCUser], links: ASCPagedDocumentLinks, included: [ASCApp]? = nil, meta: ASCPagingInformation? = nil) {
        self.data = data
        self.links = links
        self.included = included
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArray("data")
        links = try container.decode("links")
        included = try container.decodeArrayIfPresent("included")
        meta = try container.decodeIfPresent("meta")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(data, forKey: "data")
        try container.encode(links, forKey: "links")
        try container.encodeIfPresent(included, forKey: "included")
        try container.encodeIfPresent(meta, forKey: "meta")
    }

}
