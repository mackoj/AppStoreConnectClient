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

  public enum AppStoreVersionsAppStoreVersionLocalizationsGetToManyRelated {

    public static let service = APIService<Response>(
      id: "appStoreVersions-appStoreVersionLocalizations-get_to_many_related",
      tag: "AppStoreVersions", method: "GET",
      path: "/v1/appStoreVersions/{id}/appStoreVersionLocalizations", hasBody: false,
      securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

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

    public final class Request: APIRequest<Response> {

      public struct Options {

        /** the id of the requested resource */
        public var id: String

        /** the fields to include for returned resources of type appStoreVersionLocalizations */
        public var fieldsappStoreVersionLocalizations: [ASCFieldsappStoreVersionLocalizations]?

        /** maximum resources per page */
        public var limit: Int?

        public init(
          id: String,
          fieldsappStoreVersionLocalizations: [ASCFieldsappStoreVersionLocalizations]? = nil,
          limit: Int? = nil
        ) {
          self.id = id
          self.fieldsappStoreVersionLocalizations = fieldsappStoreVersionLocalizations
          self.limit = limit
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: AppStoreVersionsAppStoreVersionLocalizationsGetToManyRelated.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(
        id: String,
        fieldsappStoreVersionLocalizations: [ASCFieldsappStoreVersionLocalizations]? = nil,
        limit: Int? = nil
      ) {
        let options = Options(
          id: id, fieldsappStoreVersionLocalizations: fieldsappStoreVersionLocalizations,
          limit: limit)
        self.init(options: options)
      }

      public override var path: String {
        return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
      }

      public override var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fieldsappStoreVersionLocalizations = options.fieldsappStoreVersionLocalizations?
          .encode().map({ String(describing: $0) }).joined(separator: ",")
        {
          params["fields[appStoreVersionLocalizations]"] = fieldsappStoreVersionLocalizations
        }
        if let limit = options.limit {
          params["limit"] = limit
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = ASCAppStoreVersionLocalizationsResponse

      /** List of related resources */
      case status200(ASCAppStoreVersionLocalizationsResponse)

      /** Parameter error(s) */
      case status400(ASCErrorResponse)

      /** Forbidden error */
      case status403(ASCErrorResponse)

      /** Not found error */
      case status404(ASCErrorResponse)

      public var success: ASCAppStoreVersionLocalizationsResponse? {
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
      public var responseResult:
        APIResponseResult<ASCAppStoreVersionLocalizationsResponse, ASCErrorResponse>
      {
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
        case 200:
          self = try .status200(
            decoder.decode(ASCAppStoreVersionLocalizationsResponse.self, from: data))
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
