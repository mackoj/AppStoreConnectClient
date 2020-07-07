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

    public enum BuildsIndividualTestersCreateToManyRelationship {

        public static let service = APIService<Response>(id: "builds-individualTesters-create_to_many_relationship", tag: "Builds", method: "POST", path: "/v1/builds/{id}/relationships/individualTesters", hasBody: true, securityRequirement: SecurityRequirement(type: "itc-bearer-token", scopes: []))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** the id of the requested resource */
                public var id: String

                public init(id: String) {
                    self.id = id
                }
            }

            public var options: Options

            public var body: ASCBuildIndividualTestersLinkagesRequest

            public init(body: ASCBuildIndividualTestersLinkagesRequest, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: BuildsIndividualTestersCreateToManyRelationship.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, body: ASCBuildIndividualTestersLinkagesRequest) {
                let options = Options(id: id)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Never

            /** Success (no content) */
            case status204

            /** Forbidden error */
            case status403(ASCErrorResponse)

            /** Not found error */
            case status404(ASCErrorResponse)

            /** Request entity error(s) */
            case status409(ASCErrorResponse)

            public var success: Never? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var failure: ASCErrorResponse? {
                switch self {
                case .status403(let response): return response
                case .status404(let response): return response
                case .status409(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Never, ASCErrorResponse> {
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
                case .status403(let response): return response
                case .status404(let response): return response
                case .status409(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status403: return 403
                case .status404: return 404
                case .status409: return 409
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status403: return false
                case .status404: return false
                case .status409: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
                case 403: self = try .status403(decoder.decode(ASCErrorResponse.self, from: data))
                case 404: self = try .status404(decoder.decode(ASCErrorResponse.self, from: data))
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
