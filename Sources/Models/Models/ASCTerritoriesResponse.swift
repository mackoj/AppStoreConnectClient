//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCTerritoriesResponse: AppStoreConnectBaseModel {

  public var data: [ASCTerritory]

  public var links: ASCPagedDocumentLinks

  public var meta: ASCPagingInformation?

  public init(data: [ASCTerritory], links: ASCPagedDocumentLinks, meta: ASCPagingInformation? = nil)
  {
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
