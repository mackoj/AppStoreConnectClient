//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppMediaStateError: AppStoreConnectBaseModel {

  public var code: String?

  public var description: String?

  public init(code: String? = nil, description: String? = nil) {
    self.code = code
    self.description = description
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    code = try container.decodeIfPresent("code")
    description = try container.decodeIfPresent("description")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(code, forKey: "code")
    try container.encodeIfPresent(description, forKey: "description")
  }

}
