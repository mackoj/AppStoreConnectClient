//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCDocumentLinks: AppStoreConnectBaseModel {

    public var _self: String

    public init(_self: String) {
        self._self = _self
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        _self = try container.decode("self")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(_self, forKey: "self")
    }

}
