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

    public enum AppStoreVersionsAppStoreVersionSubmissionGetToOneRelated {

        public static let service = APIService<Response>(id: "appStoreVersions-appStoreVersionSubmission-get_to_one_related", tag: "AppStoreVersions", method: "GET", path: "/v1/appStoreVersions/{id}/appStoreVersionSubmission", hasBody: false, securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

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

        /** the fields to include for returned resources of type appStoreVersionSubmissions */
        public enum ASCFieldsappStoreVersionSubmissions: String, Codable, Equatable, CaseIterable {
            case appStoreVersion = "appStoreVersion"
        }

        /** comma-separated list of relationships to include */
        public enum ASCInclude: String, Codable, Equatable, CaseIterable {
            case appStoreVersion = "appStoreVersion"
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** the id of the requested resource */
                public var id: String

                /** the fields to include for returned resources of type appStoreVersions */
                public var fieldsappStoreVersions: [ASCFieldsappStoreVersions]?

                /** the fields to include for returned resources of type appStoreVersionSubmissions */
                public var fieldsappStoreVersionSubmissions: [ASCFieldsappStoreVersionSubmissions]?

                /** comma-separated list of relationships to include */
                public var include: [ASCInclude]?

                public init(id: String, fieldsappStoreVersions: [ASCFieldsappStoreVersions]? = nil, fieldsappStoreVersionSubmissions: [ASCFieldsappStoreVersionSubmissions]? = nil, include: [ASCInclude]? = nil) {
                    self.id = id
                    self.fieldsappStoreVersions = fieldsappStoreVersions
                    self.fieldsappStoreVersionSubmissions = fieldsappStoreVersionSubmissions
                    self.include = include
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AppStoreVersionsAppStoreVersionSubmissionGetToOneRelated.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, fieldsappStoreVersions: [ASCFieldsappStoreVersions]? = nil, fieldsappStoreVersionSubmissions: [ASCFieldsappStoreVersionSubmissions]? = nil, include: [ASCInclude]? = nil) {
                let options = Options(id: id, fieldsappStoreVersions: fieldsappStoreVersions, fieldsappStoreVersionSubmissions: fieldsappStoreVersionSubmissions, include: include)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let fieldsappStoreVersions = options.fieldsappStoreVersions?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[appStoreVersions]"] = fieldsappStoreVersions
                }
                if let fieldsappStoreVersionSubmissions = options.fieldsappStoreVersionSubmissions?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[appStoreVersionSubmissions]"] = fieldsappStoreVersionSubmissions
                }
                if let include = options.include?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["include"] = include
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = ASCAppStoreVersionSubmissionResponse

            /** Related resource */
            case status200(ASCAppStoreVersionSubmissionResponse)

            /** Parameter error(s) */
            case status400(ASCErrorResponse)

            /** Forbidden error */
            case status403(ASCErrorResponse)

            /** Not found error */
            case status404(ASCErrorResponse)

            public var success: ASCAppStoreVersionSubmissionResponse? {
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
            public var responseResult: APIResponseResult<ASCAppStoreVersionSubmissionResponse, ASCErrorResponse> {
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
                case 200: self = try .status200(decoder.decode(ASCAppStoreVersionSubmissionResponse.self, from: data))
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
