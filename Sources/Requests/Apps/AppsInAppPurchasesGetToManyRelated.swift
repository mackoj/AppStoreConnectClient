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

    public enum AppsInAppPurchasesGetToManyRelated {

        public static let service = APIService<Response>(id: "apps-inAppPurchases-get_to_many_related", tag: "Apps", method: "GET", path: "/v1/apps/{id}/inAppPurchases", hasBody: false, securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

        /** filter by attribute 'inAppPurchaseType' */
        public enum ASCFilterinAppPurchaseType: String, Codable, Equatable, CaseIterable {
            case automaticallyRenewableSubscription = "AUTOMATICALLY_RENEWABLE_SUBSCRIPTION"
            case nonConsumable = "NON_CONSUMABLE"
            case consumable = "CONSUMABLE"
            case nonRenewingSubscription = "NON_RENEWING_SUBSCRIPTION"
            case freeSubscription = "FREE_SUBSCRIPTION"
        }

        /** comma-separated list of sort expressions; resources will be sorted as specified */
        public enum ASCSort: String, Codable, Equatable, CaseIterable {
            case inAppPurchaseType = "inAppPurchaseType"
            case inAppPurchaseType = "-inAppPurchaseType"
            case productId = "productId"
            case productId = "-productId"
            case referenceName = "referenceName"
            case referenceName = "-referenceName"
        }

        /** the fields to include for returned resources of type inAppPurchases */
        public enum ASCFieldsinAppPurchases: String, Codable, Equatable, CaseIterable {
            case apps = "apps"
            case inAppPurchaseType = "inAppPurchaseType"
            case productId = "productId"
            case referenceName = "referenceName"
            case state = "state"
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
            case apps = "apps"
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** the id of the requested resource */
                public var id: String

                /** filter by attribute 'inAppPurchaseType' */
                public var filterinAppPurchaseType: [ASCFilterinAppPurchaseType]?

                /** filter by canBeSubmitted */
                public var filtercanBeSubmitted: [String]?

                /** comma-separated list of sort expressions; resources will be sorted as specified */
                public var sort: [ASCSort]?

                /** the fields to include for returned resources of type inAppPurchases */
                public var fieldsinAppPurchases: [ASCFieldsinAppPurchases]?

                /** the fields to include for returned resources of type apps */
                public var fieldsapps: [ASCFieldsapps]?

                /** maximum resources per page */
                public var limit: Int?

                /** comma-separated list of relationships to include */
                public var include: [ASCInclude]?

                public init(id: String, filterinAppPurchaseType: [ASCFilterinAppPurchaseType]? = nil, filtercanBeSubmitted: [String]? = nil, sort: [ASCSort]? = nil, fieldsinAppPurchases: [ASCFieldsinAppPurchases]? = nil, fieldsapps: [ASCFieldsapps]? = nil, limit: Int? = nil, include: [ASCInclude]? = nil) {
                    self.id = id
                    self.filterinAppPurchaseType = filterinAppPurchaseType
                    self.filtercanBeSubmitted = filtercanBeSubmitted
                    self.sort = sort
                    self.fieldsinAppPurchases = fieldsinAppPurchases
                    self.fieldsapps = fieldsapps
                    self.limit = limit
                    self.include = include
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AppsInAppPurchasesGetToManyRelated.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, filterinAppPurchaseType: [ASCFilterinAppPurchaseType]? = nil, filtercanBeSubmitted: [String]? = nil, sort: [ASCSort]? = nil, fieldsinAppPurchases: [ASCFieldsinAppPurchases]? = nil, fieldsapps: [ASCFieldsapps]? = nil, limit: Int? = nil, include: [ASCInclude]? = nil) {
                let options = Options(id: id, filterinAppPurchaseType: filterinAppPurchaseType, filtercanBeSubmitted: filtercanBeSubmitted, sort: sort, fieldsinAppPurchases: fieldsinAppPurchases, fieldsapps: fieldsapps, limit: limit, include: include)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let filterinAppPurchaseType = options.filterinAppPurchaseType?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["filter[inAppPurchaseType]"] = filterinAppPurchaseType
                }
                if let filtercanBeSubmitted = options.filtercanBeSubmitted?.joined(separator: ",") {
                  params["filter[canBeSubmitted]"] = filtercanBeSubmitted
                }
                if let sort = options.sort?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["sort"] = sort
                }
                if let fieldsinAppPurchases = options.fieldsinAppPurchases?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[inAppPurchases]"] = fieldsinAppPurchases
                }
                if let fieldsapps = options.fieldsapps?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["fields[apps]"] = fieldsapps
                }
                if let limit = options.limit {
                  params["limit"] = limit
                }
                if let include = options.include?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                  params["include"] = include
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = ASCInAppPurchasesResponse

            /** List of related resources */
            case status200(ASCInAppPurchasesResponse)

            /** Parameter error(s) */
            case status400(ASCErrorResponse)

            /** Forbidden error */
            case status403(ASCErrorResponse)

            /** Not found error */
            case status404(ASCErrorResponse)

            public var success: ASCInAppPurchasesResponse? {
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
            public var responseResult: APIResponseResult<ASCInAppPurchasesResponse, ASCErrorResponse> {
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
                case 200: self = try .status200(decoder.decode(ASCInAppPurchasesResponse.self, from: data))
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
