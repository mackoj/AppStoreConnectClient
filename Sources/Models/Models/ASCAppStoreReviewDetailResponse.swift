//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppStoreReviewDetailResponse: AppStoreConnectBaseModel {

  public var data: ASCAppStoreReviewDetail

  public var links: ASCDocumentLinks

  public var included: [ASCAppStoreReviewAttachment]?

  public init(
    data: ASCAppStoreReviewDetail, links: ASCDocumentLinks,
    included: [ASCAppStoreReviewAttachment]? = nil
  ) {
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
