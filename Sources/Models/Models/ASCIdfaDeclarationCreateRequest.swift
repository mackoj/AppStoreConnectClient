//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCIdfaDeclarationCreateRequest: AppStoreConnectBaseModel {

  public var data: DataType

  public struct DataType: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
      case idfaDeclarations = "idfaDeclarations"
    }

    public var relationships: Relationships

    public var attributes: Attributes

    public var type: ASCType

    public struct Relationships: AppStoreConnectBaseModel {

      public var appStoreVersion: AppStoreVersion

      public struct AppStoreVersion: AppStoreConnectBaseModel {

        public var data: DataType

        public struct DataType: AppStoreConnectBaseModel {

          public enum ASCType: String, Codable, Equatable, CaseIterable {
            case appStoreVersions = "appStoreVersions"
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

        public init(data: DataType) {
          self.data = data
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          data = try container.decode("data")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encode(data, forKey: "data")
        }

      }

      public init(appStoreVersion: AppStoreVersion) {
        self.appStoreVersion = appStoreVersion
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        appStoreVersion = try container.decode("appStoreVersion")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(appStoreVersion, forKey: "appStoreVersion")
      }

    }

    public struct Attributes: AppStoreConnectBaseModel {

      public var attributesAppInstallationToPreviousAd: Bool

      public var servesAds: Bool

      public var attributesActionWithPreviousAd: Bool

      public var honorsLimitedAdTracking: Bool

      public init(
        attributesAppInstallationToPreviousAd: Bool, servesAds: Bool,
        attributesActionWithPreviousAd: Bool, honorsLimitedAdTracking: Bool
      ) {
        self.attributesAppInstallationToPreviousAd = attributesAppInstallationToPreviousAd
        self.servesAds = servesAds
        self.attributesActionWithPreviousAd = attributesActionWithPreviousAd
        self.honorsLimitedAdTracking = honorsLimitedAdTracking
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        attributesAppInstallationToPreviousAd = try container.decode(
          "attributesAppInstallationToPreviousAd")
        servesAds = try container.decode("servesAds")
        attributesActionWithPreviousAd = try container.decode("attributesActionWithPreviousAd")
        honorsLimitedAdTracking = try container.decode("honorsLimitedAdTracking")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(
          attributesAppInstallationToPreviousAd, forKey: "attributesAppInstallationToPreviousAd")
        try container.encode(servesAds, forKey: "servesAds")
        try container.encode(
          attributesActionWithPreviousAd, forKey: "attributesActionWithPreviousAd")
        try container.encode(honorsLimitedAdTracking, forKey: "honorsLimitedAdTracking")
      }

    }

    public init(relationships: Relationships, attributes: Attributes, type: ASCType) {
      self.relationships = relationships
      self.attributes = attributes
      self.type = type
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      relationships = try container.decode("relationships")
      attributes = try container.decode("attributes")
      type = try container.decode("type")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encode(relationships, forKey: "relationships")
      try container.encode(attributes, forKey: "attributes")
      try container.encode(type, forKey: "type")
    }

  }

  public init(data: DataType) {
    self.data = data
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    data = try container.decode("data")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(data, forKey: "data")
  }

}
