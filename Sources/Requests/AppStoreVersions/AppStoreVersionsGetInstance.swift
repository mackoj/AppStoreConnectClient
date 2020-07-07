//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

#if canImport(AppStoreConnectModels)
  import AppStoreConnectModels
  import AppStoreConnectSharedCode
#endif

extension AppStoreConnect.AppStoreVersions {

  public enum AppStoreVersionsGetInstance {

    public static let service = APIService<Response>(
      id: "appStoreVersions-get_instance", tag: "AppStoreVersions", method: "GET",
      path: "/v1/appStoreVersions/{id}", hasBody: false,
      securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

    /** the fields to include for returned resources of type appStoreVersions */
    public enum ASCFieldsappStoreVersions: String, Codable, Equatable, CaseIterable {
      case ageRatingDeclaration = "ageRatingDeclaration"
      case app = "app"
      case appStoreReviewDetail = "appStoreReviewDetail"
      case appStoreState = "appStoreState"
      case appStoreVersionLocalizations = "appStoreVersionLocalizations"
      case appStoreVersionPhasedRelease = "appStoreVersionPhasedRelease"
      case appStoreVersionSubmission = "appStoreVersionSubmission"
      case build = "build"
      case copyright = "copyright"
      case createdDate = "createdDate"
      case downloadable = "downloadable"
      case earliestReleaseDate = "earliestReleaseDate"
      case idfaDeclaration = "idfaDeclaration"
      case platform = "platform"
      case releaseType = "releaseType"
      case routingAppCoverage = "routingAppCoverage"
      case usesIdfa = "usesIdfa"
      case versionString = "versionString"
    }

    /** comma-separated list of relationships to include */
    public enum ASCInclude: String, Codable, Equatable, CaseIterable {
      case ageRatingDeclaration = "ageRatingDeclaration"
      case app = "app"
      case appStoreReviewDetail = "appStoreReviewDetail"
      case appStoreVersionLocalizations = "appStoreVersionLocalizations"
      case appStoreVersionPhasedRelease = "appStoreVersionPhasedRelease"
      case appStoreVersionSubmission = "appStoreVersionSubmission"
      case build = "build"
      case idfaDeclaration = "idfaDeclaration"
      case routingAppCoverage = "routingAppCoverage"
    }

    /** the fields to include for returned resources of type appStoreVersionLocalizations */
    public enum ASCFieldsappStoreVersionLocalizations: String, Codable, Equatable, CaseIterable {
      case appPreviewSets = "appPreviewSets"
      case appScreenshotSets = "appScreenshotSets"
      case appStoreVersion = "appStoreVersion"
      case description = "description"
      case keywords = "keywords"
      case locale = "locale"
      case marketingUrl = "marketingUrl"
      case promotionalText = "promotionalText"
      case supportUrl = "supportUrl"
      case whatsNew = "whatsNew"
    }

    /** the fields to include for returned resources of type idfaDeclarations */
    public enum ASCFieldsidfaDeclarations: String, Codable, Equatable, CaseIterable {
      case appStoreVersion = "appStoreVersion"
      case attributesActionWithPreviousAd = "attributesActionWithPreviousAd"
      case attributesAppInstallationToPreviousAd = "attributesAppInstallationToPreviousAd"
      case honorsLimitedAdTracking = "honorsLimitedAdTracking"
      case servesAds = "servesAds"
    }

    /** the fields to include for returned resources of type routingAppCoverages */
    public enum ASCFieldsroutingAppCoverages: String, Codable, Equatable, CaseIterable {
      case appStoreVersion = "appStoreVersion"
      case assetDeliveryState = "assetDeliveryState"
      case fileName = "fileName"
      case fileSize = "fileSize"
      case sourceFileChecksum = "sourceFileChecksum"
      case uploadOperations = "uploadOperations"
      case uploaded = "uploaded"
    }

    /** the fields to include for returned resources of type appStoreVersionPhasedReleases */
    public enum ASCFieldsappStoreVersionPhasedReleases: String, Codable, Equatable, CaseIterable {
      case appStoreVersion = "appStoreVersion"
      case currentDayNumber = "currentDayNumber"
      case phasedReleaseState = "phasedReleaseState"
      case startDate = "startDate"
      case totalPauseDuration = "totalPauseDuration"
    }

    /** the fields to include for returned resources of type ageRatingDeclarations */
    public enum ASCFieldsageRatingDeclarations: String, Codable, Equatable, CaseIterable {
      case alcoholTobaccoOrDrugUseOrReferences = "alcoholTobaccoOrDrugUseOrReferences"
      case gamblingAndContests = "gamblingAndContests"
      case gamblingSimulated = "gamblingSimulated"
      case horrorOrFearThemes = "horrorOrFearThemes"
      case kidsAgeBand = "kidsAgeBand"
      case matureOrSuggestiveThemes = "matureOrSuggestiveThemes"
      case medicalOrTreatmentInformation = "medicalOrTreatmentInformation"
      case profanityOrCrudeHumor = "profanityOrCrudeHumor"
      case sexualContentGraphicAndNudity = "sexualContentGraphicAndNudity"
      case sexualContentOrNudity = "sexualContentOrNudity"
      case unrestrictedWebAccess = "unrestrictedWebAccess"
      case violenceCartoonOrFantasy = "violenceCartoonOrFantasy"
      case violenceRealistic = "violenceRealistic"
      case violenceRealisticProlongedGraphicOrSadistic =
        "violenceRealisticProlongedGraphicOrSadistic"
    }

    /** the fields to include for returned resources of type appStoreReviewDetails */
    public enum ASCFieldsappStoreReviewDetails: String, Codable, Equatable, CaseIterable {
      case appStoreReviewAttachments = "appStoreReviewAttachments"
      case appStoreVersion = "appStoreVersion"
      case contactEmail = "contactEmail"
      case contactFirstName = "contactFirstName"
      case contactLastName = "contactLastName"
      case contactPhone = "contactPhone"
      case demoAccountName = "demoAccountName"
      case demoAccountPassword = "demoAccountPassword"
      case demoAccountRequired = "demoAccountRequired"
      case notes = "notes"
    }

    /** the fields to include for returned resources of type builds */
    public enum ASCFieldsbuilds: String, Codable, Equatable, CaseIterable {
      case app = "app"
      case appEncryptionDeclaration = "appEncryptionDeclaration"
      case appStoreVersion = "appStoreVersion"
      case betaAppReviewSubmission = "betaAppReviewSubmission"
      case betaBuildLocalizations = "betaBuildLocalizations"
      case betaGroups = "betaGroups"
      case buildBetaDetail = "buildBetaDetail"
      case diagnosticSignatures = "diagnosticSignatures"
      case expirationDate = "expirationDate"
      case expired = "expired"
      case iconAssetToken = "iconAssetToken"
      case icons = "icons"
      case individualTesters = "individualTesters"
      case minOsVersion = "minOsVersion"
      case perfPowerMetrics = "perfPowerMetrics"
      case preReleaseVersion = "preReleaseVersion"
      case processingState = "processingState"
      case uploadedDate = "uploadedDate"
      case usesNonExemptEncryption = "usesNonExemptEncryption"
      case version = "version"
    }

    /** the fields to include for returned resources of type appStoreVersionSubmissions */
    public enum ASCFieldsappStoreVersionSubmissions: String, Codable, Equatable, CaseIterable {
      case appStoreVersion = "appStoreVersion"
    }

    public final class Request: APIRequest<Response> {

      public struct Options {

        /** the id of the requested resource */
        public var id: String

        /** the fields to include for returned resources of type appStoreVersions */
        public var fieldsappStoreVersions: [ASCFieldsappStoreVersions]?

        /** comma-separated list of relationships to include */
        public var include: [ASCInclude]?

        /** the fields to include for returned resources of type appStoreVersionLocalizations */
        public var fieldsappStoreVersionLocalizations: [ASCFieldsappStoreVersionLocalizations]?

        /** the fields to include for returned resources of type idfaDeclarations */
        public var fieldsidfaDeclarations: [ASCFieldsidfaDeclarations]?

        /** the fields to include for returned resources of type routingAppCoverages */
        public var fieldsroutingAppCoverages: [ASCFieldsroutingAppCoverages]?

        /** the fields to include for returned resources of type appStoreVersionPhasedReleases */
        public var fieldsappStoreVersionPhasedReleases: [ASCFieldsappStoreVersionPhasedReleases]?

        /** the fields to include for returned resources of type ageRatingDeclarations */
        public var fieldsageRatingDeclarations: [ASCFieldsageRatingDeclarations]?

        /** the fields to include for returned resources of type appStoreReviewDetails */
        public var fieldsappStoreReviewDetails: [ASCFieldsappStoreReviewDetails]?

        /** the fields to include for returned resources of type builds */
        public var fieldsbuilds: [ASCFieldsbuilds]?

        /** the fields to include for returned resources of type appStoreVersionSubmissions */
        public var fieldsappStoreVersionSubmissions: [ASCFieldsappStoreVersionSubmissions]?

        /** maximum number of related appStoreVersionLocalizations returned (when they are included) */
        public var limitappStoreVersionLocalizations: Int?

        public init(
          id: String, fieldsappStoreVersions: [ASCFieldsappStoreVersions]? = nil,
          include: [ASCInclude]? = nil,
          fieldsappStoreVersionLocalizations: [ASCFieldsappStoreVersionLocalizations]? = nil,
          fieldsidfaDeclarations: [ASCFieldsidfaDeclarations]? = nil,
          fieldsroutingAppCoverages: [ASCFieldsroutingAppCoverages]? = nil,
          fieldsappStoreVersionPhasedReleases: [ASCFieldsappStoreVersionPhasedReleases]? = nil,
          fieldsageRatingDeclarations: [ASCFieldsageRatingDeclarations]? = nil,
          fieldsappStoreReviewDetails: [ASCFieldsappStoreReviewDetails]? = nil,
          fieldsbuilds: [ASCFieldsbuilds]? = nil,
          fieldsappStoreVersionSubmissions: [ASCFieldsappStoreVersionSubmissions]? = nil,
          limitappStoreVersionLocalizations: Int? = nil
        ) {
          self.id = id
          self.fieldsappStoreVersions = fieldsappStoreVersions
          self.include = include
          self.fieldsappStoreVersionLocalizations = fieldsappStoreVersionLocalizations
          self.fieldsidfaDeclarations = fieldsidfaDeclarations
          self.fieldsroutingAppCoverages = fieldsroutingAppCoverages
          self.fieldsappStoreVersionPhasedReleases = fieldsappStoreVersionPhasedReleases
          self.fieldsageRatingDeclarations = fieldsageRatingDeclarations
          self.fieldsappStoreReviewDetails = fieldsappStoreReviewDetails
          self.fieldsbuilds = fieldsbuilds
          self.fieldsappStoreVersionSubmissions = fieldsappStoreVersionSubmissions
          self.limitappStoreVersionLocalizations = limitappStoreVersionLocalizations
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: AppStoreVersionsGetInstance.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(
        id: String, fieldsappStoreVersions: [ASCFieldsappStoreVersions]? = nil,
        include: [ASCInclude]? = nil,
        fieldsappStoreVersionLocalizations: [ASCFieldsappStoreVersionLocalizations]? = nil,
        fieldsidfaDeclarations: [ASCFieldsidfaDeclarations]? = nil,
        fieldsroutingAppCoverages: [ASCFieldsroutingAppCoverages]? = nil,
        fieldsappStoreVersionPhasedReleases: [ASCFieldsappStoreVersionPhasedReleases]? = nil,
        fieldsageRatingDeclarations: [ASCFieldsageRatingDeclarations]? = nil,
        fieldsappStoreReviewDetails: [ASCFieldsappStoreReviewDetails]? = nil,
        fieldsbuilds: [ASCFieldsbuilds]? = nil,
        fieldsappStoreVersionSubmissions: [ASCFieldsappStoreVersionSubmissions]? = nil,
        limitappStoreVersionLocalizations: Int? = nil
      ) {
        let options = Options(
          id: id, fieldsappStoreVersions: fieldsappStoreVersions, include: include,
          fieldsappStoreVersionLocalizations: fieldsappStoreVersionLocalizations,
          fieldsidfaDeclarations: fieldsidfaDeclarations,
          fieldsroutingAppCoverages: fieldsroutingAppCoverages,
          fieldsappStoreVersionPhasedReleases: fieldsappStoreVersionPhasedReleases,
          fieldsageRatingDeclarations: fieldsageRatingDeclarations,
          fieldsappStoreReviewDetails: fieldsappStoreReviewDetails, fieldsbuilds: fieldsbuilds,
          fieldsappStoreVersionSubmissions: fieldsappStoreVersionSubmissions,
          limitappStoreVersionLocalizations: limitappStoreVersionLocalizations)
        self.init(options: options)
      }

      public override var path: String {
        return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
      }

      public override var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fieldsappStoreVersions = options.fieldsappStoreVersions?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[appStoreVersions]"] = fieldsappStoreVersions
        }
        if let include = options.include?.encode().map({ String(describing: $0) }).joined(
          separator: ",")
        {
          params["include"] = include
        }
        if let fieldsappStoreVersionLocalizations = options.fieldsappStoreVersionLocalizations?
          .encode().map({ String(describing: $0) }).joined(separator: ",")
        {
          params["fields[appStoreVersionLocalizations]"] = fieldsappStoreVersionLocalizations
        }
        if let fieldsidfaDeclarations = options.fieldsidfaDeclarations?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[idfaDeclarations]"] = fieldsidfaDeclarations
        }
        if let fieldsroutingAppCoverages = options.fieldsroutingAppCoverages?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[routingAppCoverages]"] = fieldsroutingAppCoverages
        }
        if let fieldsappStoreVersionPhasedReleases = options.fieldsappStoreVersionPhasedReleases?
          .encode().map({ String(describing: $0) }).joined(separator: ",")
        {
          params["fields[appStoreVersionPhasedReleases]"] = fieldsappStoreVersionPhasedReleases
        }
        if let fieldsageRatingDeclarations = options.fieldsageRatingDeclarations?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[ageRatingDeclarations]"] = fieldsageRatingDeclarations
        }
        if let fieldsappStoreReviewDetails = options.fieldsappStoreReviewDetails?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[appStoreReviewDetails]"] = fieldsappStoreReviewDetails
        }
        if let fieldsbuilds = options.fieldsbuilds?.encode().map({ String(describing: $0) }).joined(
          separator: ",")
        {
          params["fields[builds]"] = fieldsbuilds
        }
        if let fieldsappStoreVersionSubmissions = options.fieldsappStoreVersionSubmissions?.encode()
          .map({ String(describing: $0) }).joined(separator: ",")
        {
          params["fields[appStoreVersionSubmissions]"] = fieldsappStoreVersionSubmissions
        }
        if let limitappStoreVersionLocalizations = options.limitappStoreVersionLocalizations {
          params["limit[appStoreVersionLocalizations]"] = limitappStoreVersionLocalizations
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = ASCAppStoreVersionResponse

      /** Single AppStoreVersion */
      case status200(ASCAppStoreVersionResponse)

      /** Parameter error(s) */
      case status400(ASCErrorResponse)

      /** Forbidden error */
      case status403(ASCErrorResponse)

      /** Not found error */
      case status404(ASCErrorResponse)

      public var success: ASCAppStoreVersionResponse? {
        switch self {
        case .status200(let response): return response
        default: return nil
        }
      }

      public var failure: ASCErrorResponse? {
        switch self {
        case .status400(let response): return response
        case .status403(let response): return response
        case .status404(let response): return response
        default: return nil
        }
      }

      /// either success or failure value. Success is anything in the 200..<300 status code range
      public var responseResult: APIResponseResult<ASCAppStoreVersionResponse, ASCErrorResponse> {
        if let successValue = success {
          return .success(successValue)
        } else if let failureValue = failure {
          return .failure(failureValue)
        } else {
          fatalError("Response does not have success or failure response")
        }
      }

      public var response: Any {
        switch self {
        case .status200(let response): return response
        case .status400(let response): return response
        case .status403(let response): return response
        case .status404(let response): return response
        }
      }

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        case .status400: return 400
        case .status403: return 403
        case .status404: return 404
        }
      }

      public var successful: Bool {
        switch self {
        case .status200: return true
        case .status400: return false
        case .status403: return false
        case .status404: return false
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(ASCAppStoreVersionResponse.self, from: data))
        case 400: self = try .status400(decoder.decode(ASCErrorResponse.self, from: data))
        case 403: self = try .status403(decoder.decode(ASCErrorResponse.self, from: data))
        case 404: self = try .status404(decoder.decode(ASCErrorResponse.self, from: data))
        default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
        }
      }

      public var description: String {
        return "\(statusCode) \(successful ? "success" : "failure")"
      }

      public var debugDescription: String {
        var string = description
        let responseString = "\(response)"
        if responseString != "()" {
          string += "\n\(responseString)"
        }
        return string
      }
    }
  }
}
