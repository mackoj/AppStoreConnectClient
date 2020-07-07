//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCBundleIdCapability: AppStoreConnectBaseModel {

  public enum ASCType: String, Codable, Equatable, CaseIterable {
    case bundleIdCapabilities = "bundleIdCapabilities"
  }

  public var links: ASCResourceLinks

  public var id: String

  public var type: ASCType

  public var attributes: Attributes?

  public struct Attributes: AppStoreConnectBaseModel {

    public var capabilityType: ASCCapabilityType?

    public var settings: [ASCCapabilitySetting]?

    public init(capabilityType: ASCCapabilityType? = nil, settings: [ASCCapabilitySetting]? = nil) {
      self.capabilityType = capabilityType
      self.settings = settings
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      capabilityType = try container.decodeIfPresent("capabilityType")
      settings = try container.decodeArrayIfPresent("settings")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(capabilityType, forKey: "capabilityType")
      try container.encodeIfPresent(settings, forKey: "settings")
    }

  }

  public init(links: ASCResourceLinks, id: String, type: ASCType, attributes: Attributes? = nil) {
    self.links = links
    self.id = id
    self.type = type
    self.attributes = attributes
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    links = try container.decode("links")
    id = try container.decode("id")
    type = try container.decode("type")
    attributes = try container.decodeIfPresent("attributes")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(links, forKey: "links")
    try container.encode(id, forKey: "id")
    try container.encode(type, forKey: "type")
    try container.encodeIfPresent(attributes, forKey: "attributes")
  }

}
