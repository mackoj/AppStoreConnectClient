//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCDiagnosticLog: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
        case diagnosticLogs = "diagnosticLogs"
    }

    public var links: ASCResourceLinks

    public var _id: String

    public var type: ASCType

    public init(links: ASCResourceLinks, _id: String, type: ASCType) {
        self.links = links
        self._id = _id
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        links = try container.decode("links")
        _id = try container.decode("id")
        type = try container.decode("type")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(links, forKey: "links")
        try container.encode(_id, forKey: "id")
        try container.encode(type, forKey: "type")
    }

}
