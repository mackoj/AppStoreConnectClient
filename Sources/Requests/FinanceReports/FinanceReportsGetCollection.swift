//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

#if canImport(AppStoreConnectModels)
  import AppStoreConnectModels
  import AppStoreConnectSharedCode
#endif

extension AppStoreConnect.FinanceReports {

  public enum FinanceReportsGetCollection {

    public static let service = APIService<Response>(
      id: "financeReports-get_collection", tag: "FinanceReports", method: "GET",
      path: "/v1/financeReports", hasBody: false,
      securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

    /** filter by attribute 'reportType' */
    public enum ASCFilterreportType: String, Codable, Equatable, CaseIterable {
      case financial = "FINANCIAL"
      case financeDetail = "FINANCE_DETAIL"
    }

    public final class Request: APIRequest<Response> {

      public struct Options {

        /** filter by attribute 'regionCode' */
        public var filterregionCode: [String]

        /** filter by attribute 'reportDate' */
        public var filterreportDate: [String]

        /** filter by attribute 'reportType' */
        public var filterreportType: [ASCFilterreportType]

        /** filter by attribute 'vendorNumber' */
        public var filtervendorNumber: [String]

        public init(
          filterregionCode: [String], filterreportDate: [String],
          filterreportType: [ASCFilterreportType], filtervendorNumber: [String]
        ) {
          self.filterregionCode = filterregionCode
          self.filterreportDate = filterreportDate
          self.filterreportType = filterreportType
          self.filtervendorNumber = filtervendorNumber
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: FinanceReportsGetCollection.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(
        filterregionCode: [String], filterreportDate: [String],
        filterreportType: [ASCFilterreportType], filtervendorNumber: [String]
      ) {
        let options = Options(
          filterregionCode: filterregionCode, filterreportDate: filterreportDate,
          filterreportType: filterreportType, filtervendorNumber: filtervendorNumber)
        self.init(options: options)
      }

      public override var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        params["filter[regionCode]"] = options.filterregionCode.joined(separator: ",")
        params["filter[reportDate]"] = options.filterreportDate.joined(separator: ",")
        params["filter[reportType]"] = options.filterreportType.encode().map({
          String(describing: $0)
        }).joined(separator: ",")
        params["filter[vendorNumber]"] = options.filtervendorNumber.joined(separator: ",")
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = File

      /** List of FinanceReports */
      case status200(File)

      /** Parameter error(s) */
      case status400(ASCErrorResponse)

      /** Forbidden error */
      case status403(ASCErrorResponse)

      public var success: File? {
        switch self {
        case .status200(let response): return response
        default: return nil
        }
      }

      public var failure: ASCErrorResponse? {
        switch self {
        case .status400(let response): return response
        case .status403(let response): return response
        default: return nil
        }
      }

      /// either success or failure value. Success is anything in the 200..<300 status code range
      public var responseResult: APIResponseResult<File, ASCErrorResponse> {
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
        }
      }

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        case .status400: return 400
        case .status403: return 403
        }
      }

      public var successful: Bool {
        switch self {
        case .status200: return true
        case .status400: return false
        case .status403: return false
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(File.self, from: data))
        case 400: self = try .status400(decoder.decode(ASCErrorResponse.self, from: data))
        case 403: self = try .status403(decoder.decode(ASCErrorResponse.self, from: data))
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
