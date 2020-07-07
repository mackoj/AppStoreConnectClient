//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCBetaBuildLocalizationsResponse: AppStoreConnectBaseModel {

  public var data: [ASCBetaBuildLocalization]

  public var links: ASCPagedDocumentLinks

  public var included: [ASCBuild]?

  public var meta: ASCPagingInformation?

  public init(
    data: [ASCBetaBuildLocalization], links: ASCPagedDocumentLinks, included: [ASCBuild]? = nil,
    meta: ASCPagingInformation? = nil
  ) {
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
