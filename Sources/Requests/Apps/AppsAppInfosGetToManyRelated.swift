//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

#if canImport(AppStoreConnectModels)
  import AppStoreConnectModels
  import AppStoreConnectSharedCode
#endif

extension AppStoreConnect.Apps {

  public enum AppsAppInfosGetToManyRelated {

    public static let service = APIService<Response>(
      id: "apps-appInfos-get_to_many_related", tag: "Apps", method: "GET",
      path: "/v1/apps/{id}/appInfos", hasBody: false,
      securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

    /** the fields to include for returned resources of type appInfos */
    public enum ASCFieldsappInfos: String, Codable, Equatable, CaseIterable {
      case app = "app"
      case appInfoLocalizations = "appInfoLocalizations"
      case appStoreAgeRating = "appStoreAgeRating"
      case appStoreState = "appStoreState"
      case brazilAgeRating = "brazilAgeRating"
      case kidsAgeBand = "kidsAgeBand"
      case primaryCategory = "primaryCategory"
      case primarySubcategoryOne = "primarySubcategoryOne"
      case primarySubcategoryTwo = "primarySubcategoryTwo"
      case secondaryCategory = "secondaryCategory"
      case secondarySubcategoryOne = "secondarySubcategoryOne"
      case secondarySubcategoryTwo = "secondarySubcategoryTwo"
    }

    /** the fields to include for returned resources of type appCategories */
    public enum ASCFieldsappCategories: String, Codable, Equatable, CaseIterable {
      case parent = "parent"
      case platforms = "platforms"
      case subcategories = "subcategories"
    }

    /** the fields to include for returned resources of type appInfoLocalizations */
    public enum ASCFieldsappInfoLocalizations: String, Codable, Equatable, CaseIterable {
      case appInfo = "appInfo"
      case locale = "locale"
      case name = "name"
      case privacyPolicyText = "privacyPolicyText"
      case privacyPolicyUrl = "privacyPolicyUrl"
      case subtitle = "subtitle"
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

    /** comma-separated list of relationships to include */
    public enum ASCInclude: String, Codable, Equatable, CaseIterable {
      case app = "app"
      case appInfoLocalizations = "appInfoLocalizations"
      case primaryCategory = "primaryCategory"
      case primarySubcategoryOne = "primarySubcategoryOne"
      case primarySubcategoryTwo = "primarySubcategoryTwo"
      case secondaryCategory = "secondaryCategory"
      case secondarySubcategoryOne = "secondarySubcategoryOne"
      case secondarySubcategoryTwo = "secondarySubcategoryTwo"
    }

    public final class Request: APIRequest<Response> {

      public struct Options {

        /** the id of the requested resource */
        public var id: String

        /** the fields to include for returned resources of type appInfos */
        public var fieldsappInfos: [ASCFieldsappInfos]?

        /** the fields to include for returned resources of type appCategories */
        public var fieldsappCategories: [ASCFieldsappCategories]?

        /** the fields to include for returned resources of type appInfoLocalizations */
        public var fieldsappInfoLocalizations: [ASCFieldsappInfoLocalizations]?

        /** the fields to include for returned resources of type apps */
        public var fieldsapps: [ASCFieldsapps]?

        /** maximum resources per page */
        public var limit: Int?

        /** comma-separated list of relationships to include */
        public var include: [ASCInclude]?

        public init(
          id: String, fieldsappInfos: [ASCFieldsappInfos]? = nil,
          fieldsappCategories: [ASCFieldsappCategories]? = nil,
          fieldsappInfoLocalizations: [ASCFieldsappInfoLocalizations]? = nil,
          fieldsapps: [ASCFieldsapps]? = nil, limit: Int? = nil, include: [ASCInclude]? = nil
        ) {
          self.id = id
          self.fieldsappInfos = fieldsappInfos
          self.fieldsappCategories = fieldsappCategories
          self.fieldsappInfoLocalizations = fieldsappInfoLocalizations
          self.fieldsapps = fieldsapps
          self.limit = limit
          self.include = include
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: AppsAppInfosGetToManyRelated.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(
        id: String, fieldsappInfos: [ASCFieldsappInfos]? = nil,
        fieldsappCategories: [ASCFieldsappCategories]? = nil,
        fieldsappInfoLocalizations: [ASCFieldsappInfoLocalizations]? = nil,
        fieldsapps: [ASCFieldsapps]? = nil, limit: Int? = nil, include: [ASCInclude]? = nil
      ) {
        let options = Options(
          id: id, fieldsappInfos: fieldsappInfos, fieldsappCategories: fieldsappCategories,
          fieldsappInfoLocalizations: fieldsappInfoLocalizations, fieldsapps: fieldsapps,
          limit: limit, include: include)
        self.init(options: options)
      }

      public override var path: String {
        return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
      }

      public override var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fieldsappInfos = options.fieldsappInfos?.encode().map({ String(describing: $0) })
          .joined(separator: ",")
        {
          params["fields[appInfos]"] = fieldsappInfos
        }
        if let fieldsappCategories = options.fieldsappCategories?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[appCategories]"] = fieldsappCategories
        }
        if let fieldsappInfoLocalizations = options.fieldsappInfoLocalizations?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[appInfoLocalizations]"] = fieldsappInfoLocalizations
        }
        if let fieldsapps = options.fieldsapps?.encode().map({ String(describing: $0) }).joined(
          separator: ",")
        {
          params["fields[apps]"] = fieldsapps
        }
        if let limit = options.limit {
          params["limit"] = limit
        }
        if let include = options.include?.encode().map({ String(describing: $0) }).joined(
          separator: ",")
        {
          params["include"] = include
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = ASCAppInfosResponse

      /** List of related resources */
      case status200(ASCAppInfosResponse)

      /** Parameter error(s) */
      case status400(ASCErrorResponse)

      /** Forbidden error */
      case status403(ASCErrorResponse)

      /** Not found error */
      case status404(ASCErrorResponse)

      public var success: ASCAppInfosResponse? {
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
      public var responseResult: APIResponseResult<ASCAppInfosResponse, ASCErrorResponse> {
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
        case 200: self = try .status200(decoder.decode(ASCAppInfosResponse.self, from: data))
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
