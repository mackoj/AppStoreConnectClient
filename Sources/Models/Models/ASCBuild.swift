//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCBuild: AppStoreConnectBaseModel {

  public enum ASCType: String, Codable, Equatable, CaseIterable {
    case builds = "builds"
  }

  public var links: ASCResourceLinks

  public var id: String

  public var type: ASCType

  public var attributes: Attributes?

  public var relationships: Relationships?

  public struct Attributes: AppStoreConnectBaseModel {

    public enum ASCProcessingState: String, Codable, Equatable, CaseIterable {
      case processing = "PROCESSING"
      case failed = "FAILED"
      case invalid = "INVALID"
      case valid = "VALID"
    }

    public var expirationDate: DateTime?

    public var expired: Bool?

    public var iconAssetToken: ASCImageAsset?

    public var minOsVersion: String?

    public var processingState: ASCProcessingState?

    public var uploadedDate: DateTime?

    public var usesNonExemptEncryption: Bool?

    public var version: String?

    public init(
      expirationDate: DateTime? = nil, expired: Bool? = nil, iconAssetToken: ASCImageAsset? = nil,
      minOsVersion: String? = nil, processingState: ASCProcessingState? = nil,
      uploadedDate: DateTime? = nil, usesNonExemptEncryption: Bool? = nil, version: String? = nil
    ) {
      self.expirationDate = expirationDate
      self.expired = expired
      self.iconAssetToken = iconAssetToken
      self.minOsVersion = minOsVersion
      self.processingState = processingState
      self.uploadedDate = uploadedDate
      self.usesNonExemptEncryption = usesNonExemptEncryption
      self.version = version
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      expirationDate = try container.decodeIfPresent("expirationDate")
      expired = try container.decodeIfPresent("expired")
      iconAssetToken = try container.decodeIfPresent("iconAssetToken")
      minOsVersion = try container.decodeIfPresent("minOsVersion")
      processingState = try container.decodeIfPresent("processingState")
      uploadedDate = try container.decodeIfPresent("uploadedDate")
      usesNonExemptEncryption = try container.decodeIfPresent("usesNonExemptEncryption")
      version = try container.decodeIfPresent("version")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(expirationDate, forKey: "expirationDate")
      try container.encodeIfPresent(expired, forKey: "expired")
      try container.encodeIfPresent(iconAssetToken, forKey: "iconAssetToken")
      try container.encodeIfPresent(minOsVersion, forKey: "minOsVersion")
      try container.encodeIfPresent(processingState, forKey: "processingState")
      try container.encodeIfPresent(uploadedDate, forKey: "uploadedDate")
      try container.encodeIfPresent(usesNonExemptEncryption, forKey: "usesNonExemptEncryption")
      try container.encodeIfPresent(version, forKey: "version")
    }

  }

  public struct Relationships: AppStoreConnectBaseModel {

    public var app: App?

    public var appEncryptionDeclaration: AppEncryptionDeclaration?

    public var appStoreVersion: AppStoreVersion?

    public var betaAppReviewSubmission: BetaAppReviewSubmission?

    public var betaBuildLocalizations: BetaBuildLocalizations?

    public var buildBetaDetail: BuildBetaDetail?

    public var icons: Icons?

    public var individualTesters: IndividualTesters?

    public var preReleaseVersion: PreReleaseVersion?

    public struct App: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case apps = "apps"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
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

    public struct AppEncryptionDeclaration: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case appEncryptionDeclarations = "appEncryptionDeclarations"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
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

    public struct AppStoreVersion: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case appStoreVersions = "appStoreVersions"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
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

    public struct BetaAppReviewSubmission: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case betaAppReviewSubmissions = "betaAppReviewSubmissions"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
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

    public struct BetaBuildLocalizations: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case betaBuildLocalizations = "betaBuildLocalizations"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
        }

      }

      public init(data: [DataType]? = nil, links: Links? = nil, meta: ASCPagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArrayIfPresent("data")
        links = try container.decodeIfPresent("links")
        meta = try container.decodeIfPresent("meta")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(links, forKey: "links")
        try container.encodeIfPresent(meta, forKey: "meta")
      }

    }

    public struct BuildBetaDetail: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case buildBetaDetails = "buildBetaDetails"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
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

    public struct Icons: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case buildIcons = "buildIcons"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
        }

      }

      public init(data: [DataType]? = nil, links: Links? = nil, meta: ASCPagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArrayIfPresent("data")
        links = try container.decodeIfPresent("links")
        meta = try container.decodeIfPresent("meta")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(links, forKey: "links")
        try container.encodeIfPresent(meta, forKey: "meta")
      }

    }

    public struct IndividualTesters: AppStoreConnectBaseModel {

      public var data: [DataType]?

      public var links: Links?

      public var meta: ASCPagingInformation?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case betaTesters = "betaTesters"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
        }

      }

      public init(data: [DataType]? = nil, links: Links? = nil, meta: ASCPagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
      }

      public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArrayIfPresent("data")
        links = try container.decodeIfPresent("links")
        meta = try container.decodeIfPresent("meta")
      }

      public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(links, forKey: "links")
        try container.encodeIfPresent(meta, forKey: "meta")
      }

    }

    public struct PreReleaseVersion: AppStoreConnectBaseModel {

      public var data: DataType?

      public var links: Links?

      public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
          case preReleaseVersions = "preReleaseVersions"
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

      public struct Links: AppStoreConnectBaseModel {

        public var related: String?

        public var `self`: String?

        public init(related: String? = nil, `self`: String? = nil) {
          self.related = related
          self.`self` = `self`
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          related = try container.decodeIfPresent("related")
          `self` = try container.decodeIfPresent("self")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(related, forKey: "related")
          try container.encodeIfPresent(`self`, forKey: "self")
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

    public init(
      app: App? = nil, appEncryptionDeclaration: AppEncryptionDeclaration? = nil,
      appStoreVersion: AppStoreVersion? = nil,
      betaAppReviewSubmission: BetaAppReviewSubmission? = nil,
      betaBuildLocalizations: BetaBuildLocalizations? = nil,
      buildBetaDetail: BuildBetaDetail? = nil, icons: Icons? = nil,
      individualTesters: IndividualTesters? = nil, preReleaseVersion: PreReleaseVersion? = nil
    ) {
      self.app = app
      self.appEncryptionDeclaration = appEncryptionDeclaration
      self.appStoreVersion = appStoreVersion
      self.betaAppReviewSubmission = betaAppReviewSubmission
      self.betaBuildLocalizations = betaBuildLocalizations
      self.buildBetaDetail = buildBetaDetail
      self.icons = icons
      self.individualTesters = individualTesters
      self.preReleaseVersion = preReleaseVersion
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      app = try container.decodeIfPresent("app")
      appEncryptionDeclaration = try container.decodeIfPresent("appEncryptionDeclaration")
      appStoreVersion = try container.decodeIfPresent("appStoreVersion")
      betaAppReviewSubmission = try container.decodeIfPresent("betaAppReviewSubmission")
      betaBuildLocalizations = try container.decodeIfPresent("betaBuildLocalizations")
      buildBetaDetail = try container.decodeIfPresent("buildBetaDetail")
      icons = try container.decodeIfPresent("icons")
      individualTesters = try container.decodeIfPresent("individualTesters")
      preReleaseVersion = try container.decodeIfPresent("preReleaseVersion")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(app, forKey: "app")
      try container.encodeIfPresent(appEncryptionDeclaration, forKey: "appEncryptionDeclaration")
      try container.encodeIfPresent(appStoreVersion, forKey: "appStoreVersion")
      try container.encodeIfPresent(betaAppReviewSubmission, forKey: "betaAppReviewSubmission")
      try container.encodeIfPresent(betaBuildLocalizations, forKey: "betaBuildLocalizations")
      try container.encodeIfPresent(buildBetaDetail, forKey: "buildBetaDetail")
      try container.encodeIfPresent(icons, forKey: "icons")
      try container.encodeIfPresent(individualTesters, forKey: "individualTesters")
      try container.encodeIfPresent(preReleaseVersion, forKey: "preReleaseVersion")
    }

  }

  public init(
    links: ASCResourceLinks, id: String, type: ASCType, attributes: Attributes? = nil,
    relationships: Relationships? = nil
  ) {
    self.links = links
    self.id = id
    self.type = type
    self.attributes = attributes
    self.relationships = relationships
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    links = try container.decode("links")
    id = try container.decode("id")
    type = try container.decode("type")
    attributes = try container.decodeIfPresent("attributes")
    relationships = try container.decodeIfPresent("relationships")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encode(links, forKey: "links")
    try container.encode(id, forKey: "id")
    try container.encode(type, forKey: "type")
    try container.encodeIfPresent(attributes, forKey: "attributes")
    try container.encodeIfPresent(relationships, forKey: "relationships")
  }

}
