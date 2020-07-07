//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
#if canImport(AppStoreConnectModels)
import AppStoreConnectModels
import AppStoreConnectSharedCode
#endif

extension AppStoreConnect.PreReleaseVersions {

    public enum PreReleaseVersionsGetInstance {

        public static let service = APIService<Response>(id: "preReleaseVersions-get_instance", tag: "PreReleaseVersions", method: "GET", path: "/v1/preReleaseVersions/{id}", hasBody: false, securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

        /** the fields to include for returned resources of type preReleaseVersions */
        public enum ASCFieldspreReleaseVersions: String, Codable, Equatable, CaseIterable {
            case app = "app"
            case builds = "builds"
            case platform = "platform"
            case version = "version"
        }

        /** comma-separated list of relationships to include */
        public enum ASCInclude: String, Codable, Equatable, CaseIterable {
            case app = "app"
            case builds = "builds"
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

                /** the fields to include for returned resources of type preReleaseVersions */
                public var fieldspreReleaseVersions: [ASCFieldspreReleaseVersions]?

                /** comma-separated list of relationships to include */
                public var include: [ASCInclude]?

                /** the fields to include for returned resources of type builds */
                public var fieldsbuilds: [ASCFieldsbuilds]?

                /** the fields to include for returned resources of type apps */
                public var fieldsapps: [ASCFieldsapps]?

                /** maximum number of related builds returned (when they are included) */
                public var limitbuilds: Int?

                public init(id: String, fieldspreReleaseVersions: [ASCFieldspreReleaseVersions]? = nil, include: [ASCInclude]? = nil, fieldsbuilds: [ASCFieldsbuilds]? = nil, fieldsapps: [ASCFieldsapps]? = nil, limitbuilds: Int? = nil) {
                    self.id = id
                    self.fieldspreReleaseVersions = fieldspreReleaseVersions
                    self.include = include
                    self.fieldsbuilds = fieldsbuilds
                    self.fieldsapps = fieldsapps
                    self.limitbuilds = limitbuilds
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: PreReleaseVersionsGetInstance.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, fieldspreReleaseVersions: [ASCFieldspreReleaseVersions]? = nil, include: [ASCInclude]? = nil, fieldsbuilds: [ASCFieldsbuilds]? = nil, fieldsapps: [ASCFieldsapps]? = nil, limitbuilds: Int? = nil) {
                let options = Options(id: id, fieldspreReleaseVersions: fieldspreReleaseVersions, include: include, fieldsbuilds: fieldsbuilds, fieldsapps: fieldsapps, limitbuilds: limitbuilds)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let fieldspreReleaseVersions = options.fieldspreReleaseVersions?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[preReleaseVersions]"] = fieldspreReleaseVersions
                }
                if let include = options.include?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["include"] = include
                }
                if let fieldsbuilds = options.fieldsbuilds?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[builds]"] = fieldsbuilds
                }
                if let fieldsapps = options.fieldsapps?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[apps]"] = fieldsapps
                }
                if let limitbuilds = options.limitbuilds {
                  params["limit[builds]"] = limitbuilds
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = ASCPrereleaseVersionResponse

            /** Single PrereleaseVersion */
            case status200(ASCPrereleaseVersionResponse)

            /** Parameter error(s) */
            case status400(ASCErrorResponse)

            /** Forbidden error */
            case status403(ASCErrorResponse)

            /** Not found error */
            case status404(ASCErrorResponse)

            public var success: ASCPrereleaseVersionResponse? {
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
            public var responseResult: APIResponseResult<ASCPrereleaseVersionResponse, ASCErrorResponse> {
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
                case 200: self = try .status200(decoder.decode(ASCPrereleaseVersionResponse.self, from: data))
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
