//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCDocumentLinks: AppStoreConnectBaseModel {

  public var `self`: String

  public init(`self`: String) {
    self.`self` = `self`
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    `self` = try container.decode("self")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(`self`, forKey: "self")
  }

}
