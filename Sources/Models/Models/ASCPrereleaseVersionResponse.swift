//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCPrereleaseVersionResponse: AppStoreConnectBaseModel {

    public var data: ASCPrereleaseVersion

    public var links: ASCDocumentLinks

    public var included: [Included]?

    public init(data: ASCPrereleaseVersion, links: ASCDocumentLinks, included: [Included]? = nil) {
        self.data = data
        self.links = links
        self.included = included
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decode("data")
        links = try container.decode("links")
        included = try container.decodeArrayIfPresent("included")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(data, forKey: "data")
        try container.encode(links, forKey: "links")
        try container.encodeIfPresent(included, forKey: "included")
    }

}
