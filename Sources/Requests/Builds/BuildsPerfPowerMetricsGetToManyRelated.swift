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

  public enum BuildsPerfPowerMetricsGetToManyRelated {

    public static let service = APIService<Response>(
      id: "builds-perfPowerMetrics-get_to_many_related", tag: "Builds", method: "GET",
      path: "/v1/builds/{id}/perfPowerMetrics", hasBody: false,
      securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

    /** filter by attribute 'metricType' */
    public enum ASCFiltermetricType: String, Codable, Equatable, CaseIterable {
      case disk = "DISK"
      case hang = "HANG"
      case battery = "BATTERY"
      case launch = "LAUNCH"
      case memory = "MEMORY"
      case animation = "ANIMATION"
    }

    /** filter by attribute 'platform' */
    public enum ASCFilterplatform: String, Codable, Equatable, CaseIterable {
      case ios = "IOS"
    }

    public final class Request: APIRequest<Response> {

      public struct Options {

        /** the id of the requested resource */
        public var id: String

        /** filter by attribute 'deviceType' */
        public var filterdeviceType: [String]?

        /** filter by attribute 'metricType' */
        public var filtermetricType: [ASCFiltermetricType]?

        /** filter by attribute 'platform' */
        public var filterplatform: [ASCFilterplatform]?

        public init(
          id: String, filterdeviceType: [String]? = nil,
          filtermetricType: [ASCFiltermetricType]? = nil, filterplatform: [ASCFilterplatform]? = nil
        ) {
          self.id = id
          self.filterdeviceType = filterdeviceType
          self.filtermetricType = filtermetricType
          self.filterplatform = filterplatform
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: BuildsPerfPowerMetricsGetToManyRelated.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(
        id: String, filterdeviceType: [String]? = nil,
        filtermetricType: [ASCFiltermetricType]? = nil, filterplatform: [ASCFilterplatform]? = nil
      ) {
        let options = Options(
          id: id, filterdeviceType: filterdeviceType, filtermetricType: filtermetricType,
          filterplatform: filterplatform)
        self.init(options: options)
      }

      public override var path: String {
        return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
      }

      public override var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let filterdeviceType = options.filterdeviceType?.joined(separator: ",") {
          params["filter[deviceType]"] = filterdeviceType
        }
        if let filtermetricType = options.filtermetricType?.encode().map({ String(describing: $0) })
          .joined(separator: ",")
        {
          params["filter[metricType]"] = filtermetricType
        }
        if let filterplatform = options.filterplatform?.encode().map({ String(describing: $0) })
          .joined(separator: ",")
        {
          params["filter[platform]"] = filterplatform
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = ASCPerfPowerMetricsResponse

      /** List of related resources */
      case status200(ASCPerfPowerMetricsResponse)

      /** Parameter error(s) */
      case status400(ASCErrorResponse)

      /** Forbidden error */
      case status403(ASCErrorResponse)

      /** Not found error */
      case status404(ASCErrorResponse)

      public var success: ASCPerfPowerMetricsResponse? {
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
      public var responseResult: APIResponseResult<ASCPerfPowerMetricsResponse, ASCErrorResponse> {
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
          self = try .status200(decoder.decode(ASCPerfPowerMetricsResponse.self, from: data))
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
