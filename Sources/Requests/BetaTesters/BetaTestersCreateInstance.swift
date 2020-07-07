//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

#if canImport(AppStoreConnectModels)
  import AppStoreConnectModels
  import AppStoreConnectSharedCode
#endif

extension AppStoreConnect.BetaTesters {

  public enum BetaTestersCreateInstance {

    public static let service = APIService<Response>(
      id: "betaTesters-create_instance", tag: "BetaTesters", method: "POST",
      path: "/v1/betaTesters", hasBody: true,
      securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

    public final class Request: APIRequest<Response> {

      public var body: ASCBetaTesterCreateRequest

      public init(body: ASCBetaTesterCreateRequest, encoder: RequestEncoder? = nil) {
        self.body = body
        super.init(service: BetaTestersCreateInstance.service) { defaultEncoder in
          return try (encoder ?? defaultEncoder).encode(body)
        }
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = ASCBetaTesterResponse

      /** Single BetaTester */
      case status201(ASCBetaTesterResponse)

      /** Parameter error(s) */
      case status400(ASCErrorResponse)

      /** Forbidden error */
      case status403(ASCErrorResponse)

      /** Request entity error(s) */
      case status409(ASCErrorResponse)

      public var success: ASCBetaTesterResponse? {
        switch self {
        case .status201(let response): return response
        default: return nil
        }
      }

      public var failure: ASCErrorResponse? {
        switch self {
        case .status400(let response): return response
        case .status403(let response): return response
        case .status409(let response): return response
        default: return nil
        }
      }

      /// either success or failure value. Success is anything in the 200..<300 status code range
      public var responseResult: APIResponseResult<ASCBetaTesterResponse, ASCErrorResponse> {
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
        case .status201(let response): return response
        case .status400(let response): return response
        case .status403(let response): return response
        case .status409(let response): return response
        }
      }

      public var statusCode: Int {
        switch self {
        case .status201: return 201
        case .status400: return 400
        case .status403: return 403
        case .status409: return 409
        }
      }

      public var successful: Bool {
        switch self {
        case .status201: return true
        case .status400: return false
        case .status403: return false
        case .status409: return false
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 201: self = try .status201(decoder.decode(ASCBetaTesterResponse.self, from: data))
        case 400: self = try .status400(decoder.decode(ASCErrorResponse.self, from: data))
        case 403: self = try .status403(decoder.decode(ASCErrorResponse.self, from: data))
        case 409: self = try .status409(decoder.decode(ASCErrorResponse.self, from: data))
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
