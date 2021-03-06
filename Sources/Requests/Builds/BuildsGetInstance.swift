//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

#if canImport(AppStoreConnectModels)
  import AppStoreConnectModels
  import AppStoreConnectSharedCode
#endif

extension AppStoreConnect.Builds {

  public enum BuildsGetInstance {

    public static let service = APIService<Response>(
      id: "builds-get_instance", tag: "Builds", method: "GET", path: "/v1/builds/{id}",
      hasBody: false, securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: [])
    )

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

    /** comma-separated list of relationships to include */
    public enum ASCInclude: String, Codable, Equatable, CaseIterable {
      case app = "app"
      case appEncryptionDeclaration = "appEncryptionDeclaration"
      case appStoreVersion = "appStoreVersion"
      case betaAppReviewSubmission = "betaAppReviewSubmission"
      case betaBuildLocalizations = "betaBuildLocalizations"
      case buildBetaDetail = "buildBetaDetail"
      case icons = "icons"
      case individualTesters = "individualTesters"
      case preReleaseVersion = "preReleaseVersion"
    }

    /** the fields to include for returned resources of type appEncryptionDeclarations */
    public enum ASCFieldsappEncryptionDeclarations: String, Codable, Equatable, CaseIterable {
      case app = "app"
      case appEncryptionDeclarationState = "appEncryptionDeclarationState"
      case availableOnFrenchStore = "availableOnFrenchStore"
      case builds = "builds"
      case codeValue = "codeValue"
      case containsProprietaryCryptography = "containsProprietaryCryptography"
      case containsThirdPartyCryptography = "containsThirdPartyCryptography"
      case documentName = "documentName"
      case documentType = "documentType"
      case documentUrl = "documentUrl"
      case exempt = "exempt"
      case platform = "platform"
      case uploadedDate = "uploadedDate"
      case usesEncryption = "usesEncryption"
    }

    /** the fields to include for returned resources of type betaAppReviewSubmissions */
    public enum ASCFieldsbetaAppReviewSubmissions: String, Codable, Equatable, CaseIterable {
      case betaReviewState = "betaReviewState"
      case build = "build"
    }

    /** the fields to include for returned resources of type buildBetaDetails */
    public enum ASCFieldsbuildBetaDetails: String, Codable, Equatable, CaseIterable {
      case autoNotifyEnabled = "autoNotifyEnabled"
      case build = "build"
      case externalBuildState = "externalBuildState"
      case internalBuildState = "internalBuildState"
    }

    /** the fields to include for returned resources of type buildIcons */
    public enum ASCFieldsbuildIcons: String, Codable, Equatable, CaseIterable {
      case iconAsset = "iconAsset"
      case iconType = "iconType"
    }

    /** the fields to include for returned resources of type perfPowerMetrics */
    public enum ASCFieldsperfPowerMetrics: String, Codable, Equatable, CaseIterable {
      case deviceType = "deviceType"
      case metricType = "metricType"
      case platform = "platform"
    }

    /** the fields to include for returned resources of type preReleaseVersions */
    public enum ASCFieldspreReleaseVersions: String, Codable, Equatable, CaseIterable {
      case app = "app"
      case builds = "builds"
      case platform = "platform"
      case version = "version"
    }

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

    /** the fields to include for returned resources of type diagnosticSignatures */
    public enum ASCFieldsdiagnosticSignatures: String, Codable, Equatable, CaseIterable {
      case diagnosticType = "diagnosticType"
      case logs = "logs"
      case signature = "signature"
      case weight = "weight"
    }

    /** the fields to include for returned resources of type betaTesters */
    public enum ASCFieldsbetaTesters: String, Codable, Equatable, CaseIterable {
      case apps = "apps"
      case betaGroups = "betaGroups"
      case builds = "builds"
      case email = "email"
      case firstName = "firstName"
      case inviteType = "inviteType"
      case lastName = "lastName"
    }

    /** the fields to include for returned resources of type betaBuildLocalizations */
    public enum ASCFieldsbetaBuildLocalizations: String, Codable, Equatable, CaseIterable {
      case build = "build"
      case locale = "locale"
      case whatsNew = "whatsNew"
    }

    /** the fields to include for returned resources of type apps */
    public enum ASCFieldsapps: String, Codable, Equatable, CaseIterable {
      case appInfos = "appInfos"
      case appStoreVersions = "appStoreVersions"
      case availableInNewTerritories = "availableInNewTerritories"
      case availableTerritories = "availableTerritories"
      case betaAppLocalizations = "betaAppLocalizations"
      case betaAppReviewDetail = "betaAppReviewDetail"
      case betaGroups = "betaGroups"
      case betaLicenseAgreement = "betaLicenseAgreement"
      case betaTesters = "betaTesters"
      case builds = "builds"
      case bundleId = "bundleId"
      case contentRightsDeclaration = "contentRightsDeclaration"
      case endUserLicenseAgreement = "endUserLicenseAgreement"
      case gameCenterEnabledVersions = "gameCenterEnabledVersions"
      case inAppPurchases = "inAppPurchases"
      case isOrEverWasMadeForKids = "isOrEverWasMadeForKids"
      case name = "name"
      case perfPowerMetrics = "perfPowerMetrics"
      case preOrder = "preOrder"
      case preReleaseVersions = "preReleaseVersions"
      case prices = "prices"
      case primaryLocale = "primaryLocale"
      case sku = "sku"
    }

    public final class Request: APIRequest<Response> {

      public struct Options {

        /** the id of the requested resource */
        public var id: String

        /** the fields to include for returned resources of type builds */
        public var fieldsbuilds: [ASCFieldsbuilds]?

        /** comma-separated list of relationships to include */
        public var include: [ASCInclude]?

        /** the fields to include for returned resources of type appEncryptionDeclarations */
        public var fieldsappEncryptionDeclarations: [ASCFieldsappEncryptionDeclarations]?

        /** the fields to include for returned resources of type betaAppReviewSubmissions */
        public var fieldsbetaAppReviewSubmissions: [ASCFieldsbetaAppReviewSubmissions]?

        /** the fields to include for returned resources of type buildBetaDetails */
        public var fieldsbuildBetaDetails: [ASCFieldsbuildBetaDetails]?

        /** the fields to include for returned resources of type buildIcons */
        public var fieldsbuildIcons: [ASCFieldsbuildIcons]?

        /** the fields to include for returned resources of type perfPowerMetrics */
        public var fieldsperfPowerMetrics: [ASCFieldsperfPowerMetrics]?

        /** the fields to include for returned resources of type preReleaseVersions */
        public var fieldspreReleaseVersions: [ASCFieldspreReleaseVersions]?

        /** the fields to include for returned resources of type appStoreVersions */
        public var fieldsappStoreVersions: [ASCFieldsappStoreVersions]?

        /** the fields to include for returned resources of type diagnosticSignatures */
        public var fieldsdiagnosticSignatures: [ASCFieldsdiagnosticSignatures]?

        /** the fields to include for returned resources of type betaTesters */
        public var fieldsbetaTesters: [ASCFieldsbetaTesters]?

        /** the fields to include for returned resources of type betaBuildLocalizations */
        public var fieldsbetaBuildLocalizations: [ASCFieldsbetaBuildLocalizations]?

        /** the fields to include for returned resources of type apps */
        public var fieldsapps: [ASCFieldsapps]?

        /** maximum number of related betaBuildLocalizations returned (when they are included) */
        public var limitbetaBuildLocalizations: Int?

        /** maximum number of related icons returned (when they are included) */
        public var limiticons: Int?

        /** maximum number of related individualTesters returned (when they are included) */
        public var limitindividualTesters: Int?

        public init(
          id: String, fieldsbuilds: [ASCFieldsbuilds]? = nil, include: [ASCInclude]? = nil,
          fieldsappEncryptionDeclarations: [ASCFieldsappEncryptionDeclarations]? = nil,
          fieldsbetaAppReviewSubmissions: [ASCFieldsbetaAppReviewSubmissions]? = nil,
          fieldsbuildBetaDetails: [ASCFieldsbuildBetaDetails]? = nil,
          fieldsbuildIcons: [ASCFieldsbuildIcons]? = nil,
          fieldsperfPowerMetrics: [ASCFieldsperfPowerMetrics]? = nil,
          fieldspreReleaseVersions: [ASCFieldspreReleaseVersions]? = nil,
          fieldsappStoreVersions: [ASCFieldsappStoreVersions]? = nil,
          fieldsdiagnosticSignatures: [ASCFieldsdiagnosticSignatures]? = nil,
          fieldsbetaTesters: [ASCFieldsbetaTesters]? = nil,
          fieldsbetaBuildLocalizations: [ASCFieldsbetaBuildLocalizations]? = nil,
          fieldsapps: [ASCFieldsapps]? = nil, limitbetaBuildLocalizations: Int? = nil,
          limiticons: Int? = nil, limitindividualTesters: Int? = nil
        ) {
          self.id = id
          self.fieldsbuilds = fieldsbuilds
          self.include = include
          self.fieldsappEncryptionDeclarations = fieldsappEncryptionDeclarations
          self.fieldsbetaAppReviewSubmissions = fieldsbetaAppReviewSubmissions
          self.fieldsbuildBetaDetails = fieldsbuildBetaDetails
          self.fieldsbuildIcons = fieldsbuildIcons
          self.fieldsperfPowerMetrics = fieldsperfPowerMetrics
          self.fieldspreReleaseVersions = fieldspreReleaseVersions
          self.fieldsappStoreVersions = fieldsappStoreVersions
          self.fieldsdiagnosticSignatures = fieldsdiagnosticSignatures
          self.fieldsbetaTesters = fieldsbetaTesters
          self.fieldsbetaBuildLocalizations = fieldsbetaBuildLocalizations
          self.fieldsapps = fieldsapps
          self.limitbetaBuildLocalizations = limitbetaBuildLocalizations
          self.limiticons = limiticons
          self.limitindividualTesters = limitindividualTesters
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: BuildsGetInstance.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(
        id: String, fieldsbuilds: [ASCFieldsbuilds]? = nil, include: [ASCInclude]? = nil,
        fieldsappEncryptionDeclarations: [ASCFieldsappEncryptionDeclarations]? = nil,
        fieldsbetaAppReviewSubmissions: [ASCFieldsbetaAppReviewSubmissions]? = nil,
        fieldsbuildBetaDetails: [ASCFieldsbuildBetaDetails]? = nil,
        fieldsbuildIcons: [ASCFieldsbuildIcons]? = nil,
        fieldsperfPowerMetrics: [ASCFieldsperfPowerMetrics]? = nil,
        fieldspreReleaseVersions: [ASCFieldspreReleaseVersions]? = nil,
        fieldsappStoreVersions: [ASCFieldsappStoreVersions]? = nil,
        fieldsdiagnosticSignatures: [ASCFieldsdiagnosticSignatures]? = nil,
        fieldsbetaTesters: [ASCFieldsbetaTesters]? = nil,
        fieldsbetaBuildLocalizations: [ASCFieldsbetaBuildLocalizations]? = nil,
        fieldsapps: [ASCFieldsapps]? = nil, limitbetaBuildLocalizations: Int? = nil,
        limiticons: Int? = nil, limitindividualTesters: Int? = nil
      ) {
        let options = Options(
          id: id, fieldsbuilds: fieldsbuilds, include: include,
          fieldsappEncryptionDeclarations: fieldsappEncryptionDeclarations,
          fieldsbetaAppReviewSubmissions: fieldsbetaAppReviewSubmissions,
          fieldsbuildBetaDetails: fieldsbuildBetaDetails, fieldsbuildIcons: fieldsbuildIcons,
          fieldsperfPowerMetrics: fieldsperfPowerMetrics,
          fieldspreReleaseVersions: fieldspreReleaseVersions,
          fieldsappStoreVersions: fieldsappStoreVersions,
          fieldsdiagnosticSignatures: fieldsdiagnosticSignatures,
          fieldsbetaTesters: fieldsbetaTesters,
          fieldsbetaBuildLocalizations: fieldsbetaBuildLocalizations, fieldsapps: fieldsapps,
          limitbetaBuildLocalizations: limitbetaBuildLocalizations, limiticons: limiticons,
          limitindividualTesters: limitindividualTesters)
        self.init(options: options)
      }

      public override var path: String {
        return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
      }

      public override var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fieldsbuilds = options.fieldsbuilds?.encode().map({ String(describing: $0) }).joined(
          separator: ",")
        {
          params["fields[builds]"] = fieldsbuilds
        }
        if let include = options.include?.encode().map({ String(describing: $0) }).joined(
          separator: ",")
        {
          params["include"] = include
        }
        if let fieldsappEncryptionDeclarations = options.fieldsappEncryptionDeclarations?.encode()
          .map({ String(describing: $0) }).joined(separator: ",")
        {
          params["fields[appEncryptionDeclarations]"] = fieldsappEncryptionDeclarations
        }
        if let fieldsbetaAppReviewSubmissions = options.fieldsbetaAppReviewSubmissions?.encode()
          .map({ String(describing: $0) }).joined(separator: ",")
        {
          params["fields[betaAppReviewSubmissions]"] = fieldsbetaAppReviewSubmissions
        }
        if let fieldsbuildBetaDetails = options.fieldsbuildBetaDetails?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[buildBetaDetails]"] = fieldsbuildBetaDetails
        }
        if let fieldsbuildIcons = options.fieldsbuildIcons?.encode().map({ String(describing: $0) })
          .joined(separator: ",")
        {
          params["fields[buildIcons]"] = fieldsbuildIcons
        }
        if let fieldsperfPowerMetrics = options.fieldsperfPowerMetrics?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[perfPowerMetrics]"] = fieldsperfPowerMetrics
        }
        if let fieldspreReleaseVersions = options.fieldspreReleaseVersions?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[preReleaseVersions]"] = fieldspreReleaseVersions
        }
        if let fieldsappStoreVersions = options.fieldsappStoreVersions?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[appStoreVersions]"] = fieldsappStoreVersions
        }
        if let fieldsdiagnosticSignatures = options.fieldsdiagnosticSignatures?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[diagnosticSignatures]"] = fieldsdiagnosticSignatures
        }
        if let fieldsbetaTesters = options.fieldsbetaTesters?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[betaTesters]"] = fieldsbetaTesters
        }
        if let fieldsbetaBuildLocalizations = options.fieldsbetaBuildLocalizations?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[betaBuildLocalizations]"] = fieldsbetaBuildLocalizations
        }
        if let fieldsapps = options.fieldsapps?.encode().map({ String(describing: $0) }).joined(
          separator: ",")
        {
          params["fields[apps]"] = fieldsapps
        }
        if let limitbetaBuildLocalizations = options.limitbetaBuildLocalizations {
          params["limit[betaBuildLocalizations]"] = limitbetaBuildLocalizations
        }
        if let limiticons = options.limiticons {
          params["limit[icons]"] = limiticons
        }
        if let limitindividualTesters = options.limitindividualTesters {
          params["limit[individualTesters]"] = limitindividualTesters
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = ASCBuildResponse

      /** Single Build */
      case status200(ASCBuildResponse)

      /** Parameter error(s) */
      case status400(ASCErrorResponse)

      /** Forbidden error */
      case status403(ASCErrorResponse)

      /** Not found error */
      case status404(ASCErrorResponse)

      public var success: ASCBuildResponse? {
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
      public var responseResult: APIResponseResult<ASCBuildResponse, ASCErrorResponse> {
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
        case 200: self = try .status200(decoder.decode(ASCBuildResponse.self, from: data))
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
