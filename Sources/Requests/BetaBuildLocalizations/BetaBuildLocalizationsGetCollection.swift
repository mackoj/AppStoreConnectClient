//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
#if canImport(AppStoreConnectModels)
import AppStoreConnectModels
import AppStoreConnectSharedCode
#endif

extension AppStoreConnect.BetaBuildLocalizations {

    public enum BetaBuildLocalizationsGetCollection {

        public static let service = APIService<Response>(id: "betaBuildLocalizations-get_collection", tag: "BetaBuildLocalizations", method: "GET", path: "/v1/betaBuildLocalizations", hasBody: false, securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

        /** the fields to include for returned resources of type betaBuildLocalizations */
        public enum ASCFieldsbetaBuildLocalizations: String, Codable, Equatable, CaseIterable {
            case build = "build"
            case locale = "locale"
            case whatsNew = "whatsNew"
        }

        /** comma-separated list of relationships to include */
        public enum ASCInclude: String, Codable, Equatable, CaseIterable {
            case build = "build"
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

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** filter by attribute 'locale' */
                public var filterlocale: [String]?

                /** filter by id(s) of related 'build' */
                public var filterbuild: [String]?

                /** the fields to include for returned resources of type betaBuildLocalizations */
                public var fieldsbetaBuildLocalizations: [ASCFieldsbetaBuildLocalizations]?

                /** maximum resources per page */
                public var limit: Int?

                /** comma-separated list of relationships to include */
                public var include: [ASCInclude]?

                /** the fields to include for returned resources of type builds */
                public var fieldsbuilds: [ASCFieldsbuilds]?

                public init(filterlocale: [String]? = nil, filterbuild: [String]? = nil, fieldsbetaBuildLocalizations: [ASCFieldsbetaBuildLocalizations]? = nil, limit: Int? = nil, include: [ASCInclude]? = nil, fieldsbuilds: [ASCFieldsbuilds]? = nil) {
                    self.filterlocale = filterlocale
                    self.filterbuild = filterbuild
                    self.fieldsbetaBuildLocalizations = fieldsbetaBuildLocalizations
                    self.limit = limit
                    self.include = include
                    self.fieldsbuilds = fieldsbuilds
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: BetaBuildLocalizationsGetCollection.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(filterlocale: [String]? = nil, filterbuild: [String]? = nil, fieldsbetaBuildLocalizations: [ASCFieldsbetaBuildLocalizations]? = nil, limit: Int? = nil, include: [ASCInclude]? = nil, fieldsbuilds: [ASCFieldsbuilds]? = nil) {
                let options = Options(filterlocale: filterlocale, filterbuild: filterbuild, fieldsbetaBuildLocalizations: fieldsbetaBuildLocalizations, limit: limit, include: include, fieldsbuilds: fieldsbuilds)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let filterlocale = options.filterlocale?.joined(separator: ",") {
                  params["filter[locale]"] = filterlocale
                }
                if let filterbuild = options.filterbuild?.joined(separator: ",") {
                  params["filter[build]"] = filterbuild
                }
                if let fieldsbetaBuildLocalizations = options.fieldsbetaBuildLocalizations?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[betaBuildLocalizations]"] = fieldsbetaBuildLocalizations
                }
                if let limit = options.limit {
                  params["limit"] = limit
                }
                if let include = options.include?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["include"] = include
                }
                if let fieldsbuilds = options.fieldsbuilds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[builds]"] = fieldsbuilds
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = ASCBetaBuildLocalizationsResponse

            /** List of BetaBuildLocalizations */
            case status200(ASCBetaBuildLocalizationsResponse)

            /** Parameter error(s) */
            case status400(ASCErrorResponse)

            /** Forbidden error */
            case status403(ASCErrorResponse)

            public var success: ASCBetaBuildLocalizationsResponse? {
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
            public var responseResult: APIResponseResult<ASCBetaBuildLocalizationsResponse, ASCErrorResponse> {
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
                case 200: self = try .status200(decoder.decode(ASCBetaBuildLocalizationsResponse.self, from: data))
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
