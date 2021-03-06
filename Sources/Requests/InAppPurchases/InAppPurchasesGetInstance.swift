//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

#if canImport(AppStoreConnectModels)
  import AppStoreConnectModels
  import AppStoreConnectSharedCode
#endif

extension AppStoreConnect.InAppPurchases {

  public enum InAppPurchasesGetInstance {

    public static let service = APIService<Response>(
      id: "inAppPurchases-get_instance", tag: "InAppPurchases", method: "GET",
      path: "/v1/inAppPurchases/{id}", hasBody: false,
      securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

    /** the fields to include for returned resources of type inAppPurchases */
    public enum ASCFieldsinAppPurchases: String, Codable, Equatable, CaseIterable {
      case apps = "apps"
      case inAppPurchaseType = "inAppPurchaseType"
      case productId = "productId"
      case referenceName = "referenceName"
      case state = "state"
    }

    /** comma-separated list of relationships to include */
    public enum ASCInclude: String, Codable, Equatable, CaseIterable {
      case apps = "apps"
    }

    public final class Request: APIRequest<Response> {

      public struct Options {

        /** the id of the requested resource */
        public var id: String

        /** the fields to include for returned resources of type inAppPurchases */
        public var fieldsinAppPurchases: [ASCFieldsinAppPurchases]?

        /** comma-separated list of relationships to include */
        public var include: [ASCInclude]?

        /** maximum number of related apps returned (when they are included) */
        public var limitapps: Int?

        public init(
          id: String, fieldsinAppPurchases: [ASCFieldsinAppPurchases]? = nil,
          include: [ASCInclude]? = nil, limitapps: Int? = nil
        ) {
          self.id = id
          self.fieldsinAppPurchases = fieldsinAppPurchases
          self.include = include
          self.limitapps = limitapps
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: InAppPurchasesGetInstance.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(
        id: String, fieldsinAppPurchases: [ASCFieldsinAppPurchases]? = nil,
        include: [ASCInclude]? = nil, limitapps: Int? = nil
      ) {
        let options = Options(
          id: id, fieldsinAppPurchases: fieldsinAppPurchases, include: include, limitapps: limitapps
        )
        self.init(options: options)
      }

      public override var path: String {
        return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
      }

      public override var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fieldsinAppPurchases = options.fieldsinAppPurchases?.encode().map({
          String(describing: $0)
        }).joined(separator: ",") {
          params["fields[inAppPurchases]"] = fieldsinAppPurchases
        }
        if let include = options.include?.encode().map({ String(describing: $0) }).joined(
          separator: ",")
        {
          params["include"] = include
        }
        if let limitapps = options.limitapps {
          params["limit[apps]"] = limitapps
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = ASCInAppPurchaseResponse

      /** Single InAppPurchase */
      case status200(ASCInAppPurchaseResponse)

      /** Parameter error(s) */
      case status400(ASCErrorResponse)

      /** Forbidden error */
      case status403(ASCErrorResponse)

      /** Not found error */
      case status404(ASCErrorResponse)

      public var success: ASCInAppPurchaseResponse? {
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
      public var responseResult: APIResponseResult<ASCInAppPurchaseResponse, ASCErrorResponse> {
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
        case 200: self = try .status200(decoder.decode(ASCInAppPurchaseResponse.self, from: data))
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
