//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAppScreenshot: AppStoreConnectBaseModel {

  public enum ASCType: String, Codable, Equatable, CaseIterable {
    case appScreenshots = "appScreenshots"
  }

  public var links: ASCResourceLinks

  public var _id: String

  public var type: ASCType

  public var attributes: Attributes?

  public var relationships: Relationships?

  public struct Attributes: AppStoreConnectBaseModel {

    public var assetDeliveryState: ASCAppMediaAssetState?

    public var assetToken: String?

    public var assetType: String?

    public var fileName: String?

    public var fileSize: Int?

    public var imageAsset: ASCImageAsset?

    public var sourceFileChecksum: String?

    public var uploadOperations: [ASCUploadOperation]?

    public init(
      assetDeliveryState: ASCAppMediaAssetState? = nil, assetToken: String? = nil,
      assetType: String? = nil, fileName: String? = nil, fileSize: Int? = nil,
      imageAsset: ASCImageAsset? = nil, sourceFileChecksum: String? = nil,
      uploadOperations: [ASCUploadOperation]? = nil
    ) {
      self.assetDeliveryState = assetDeliveryState
      self.assetToken = assetToken
      self.assetType = assetType
      self.fileName = fileName
      self.fileSize = fileSize
      self.imageAsset = imageAsset
      self.sourceFileChecksum = sourceFileChecksum
      self.uploadOperations = uploadOperations
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      assetDeliveryState = try container.decodeIfPresent("assetDeliveryState")
      assetToken = try container.decodeIfPresent("assetToken")
      assetType = try container.decodeIfPresent("assetType")
      fileName = try container.decodeIfPresent("fileName")
      fileSize = try container.decodeIfPresent("fileSize")
      imageAsset = try container.decodeIfPresent("imageAsset")
      sourceFileChecksum = try container.decodeIfPresent("sourceFileChecksum")
      uploadOperations = try container.decodeArrayIfPresent("uploadOperations")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(assetDeliveryState, forKey: "assetDeliveryState")
      try container.encodeIfPresent(assetToken, forKey: "assetToken")
      try container.encodeIfPresent(assetType, forKey: "assetType")
      try container.encodeIfPresent(fileName, forKey: "fileName")
      try container.encodeIfPresent(fileSize, forKey: "fileSize")
      try container.encodeIfPresent(imageAsset, forKey: "imageAsset")
      try container.encodeIfPresent(sourceFileChecksum, forKey: "sourceFileChecksum")
      try container.encodeIfPresent(uploadOperations, forKey: "uploadOperations")
    }

  }

  public struct Relationships: AppStoreConnectBaseModel {

    public var appScreenshotSet: AppScreenshotSet?

    public struct AppScreenshotSet: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case appScreenshotSets = "appScreenshotSets"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var _self: String?

        public init(related: String? = nil, _self: String? = nil) {
          self.related = related
          self._self = _self
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          _self = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(_self, forKey: "self")
        }

      }

      public init(data: DataType? = nil, links: Links? = nil) {
        self.data = data
        self.links = links
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeIfPresent("data")
        links = try container.decodeIfPresent("links")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(links, forKey: "links")
      }

    }

    public init(appScreenshotSet: AppScreenshotSet? = nil) {
      self.appScreenshotSet = appScreenshotSet
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      appScreenshotSet = try container.decodeIfPresent("appScreenshotSet")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(appScreenshotSet, forKey: "appScreenshotSet")
    }

  }

  public init(
    links: ASCResourceLinks, _id: String, type: ASCType, attributes: Attributes? = nil,
    relationships: Relationships? = nil
  ) {
    self.links = links
    self._id = _id
    self.type = type
    self.attributes = attributes
    self.relationships = relationships
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    links = try container.decode("links")
    _id = try container.decode("id")
    type = try container.decode("type")
    attributes = try container.decodeIfPresent("attributes")
    relationships = try container.decodeIfPresent("relationships")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(links, forKey: "links")
    try container.encode(_id, forKey: "id")
    try container.encode(type, forKey: "type")
    try container.encodeIfPresent(attributes, forKey: "attributes")
    try container.encodeIfPresent(relationships, forKey: "relationships")
  }

}
