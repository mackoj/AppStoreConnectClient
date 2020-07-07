//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppStoreVersionBuildLinkageResponse: AppStoreConnectBaseModel {

  public var data: DataType

  public var links: ASCDocumentLinks

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case builds = "builds"
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

  public init(data: DataType, links: ASCDocumentLinks) {
    self.data = data
    self.links = links
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    data = try container.decode("data")
    links = try container.decode("links")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(data, forKey: "data")
    try container.encode(links, forKey: "links")
  }

}
