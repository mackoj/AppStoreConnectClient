//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCPagingInformation: AppStoreConnectBaseModel {

    public var paging: Paging

    public struct Paging: AppStoreConnectBaseModel {

        public var total: Int

        public var limit: Int

        public init(total: Int, limit: Int) {
            self.total = total
            self.limit = limit
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            total = try container.decode("total")
            limit = try container.decode("limit")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(total, forKey: "total")
            try container.encode(limit, forKey: "limit")
        }

    }

    public init(paging: Paging) {
        self.paging = paging
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        paging = try container.decode("paging")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(paging, forKey: "paging")
    }

}
