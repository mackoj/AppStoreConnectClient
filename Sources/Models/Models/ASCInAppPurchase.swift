//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCInAppPurchase: AppStoreConnectBaseModel {

    public enum ASCType: String, Codable, Equatable, CaseIterable {
        case inAppPurchases = "inAppPurchases"
    }

    public var links: ASCResourceLinks

    public var id: String

    public var type: ASCType

    public var attributes: Attributes?

    public var relationships: Relationships?

    public struct Attributes: AppStoreConnectBaseModel {

        public enum ASCInAppPurchaseType: String, Codable, Equatable, CaseIterable {
            case automaticallyRenewableSubscription = "AUTOMATICALLY_RENEWABLE_SUBSCRIPTION"
            case nonConsumable = "NON_CONSUMABLE"
            case consumable = "CONSUMABLE"
            case nonRenewingSubscription = "NON_RENEWING_SUBSCRIPTION"
            case freeSubscription = "FREE_SUBSCRIPTION"
        }

        public enum ASCState: String, Codable, Equatable, CaseIterable {
            case created = "CREATED"
            case developerSignedOff = "DEVELOPER_SIGNED_OFF"
            case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
            case deletionInProgress = "DELETION_IN_PROGRESS"
            case approved = "APPROVED"
            case deleted = "DELETED"
            case removedFromSale = "REMOVED_FROM_SALE"
            case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
            case waitingForUpload = "WAITING_FOR_UPLOAD"
            case processingContent = "PROCESSING_CONTENT"
            case replaced = "REPLACED"
            case rejected = "REJECTED"
            case waitingForScreenshot = "WAITING_FOR_SCREENSHOT"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case missingMetadata = "MISSING_METADATA"
            case readyToSubmit = "READY_TO_SUBMIT"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case pendingDeveloperRelease = "PENDING_DEVELOPER_RELEASE"
        }

        public var inAppPurchaseType: ASCInAppPurchaseType?

        public var productId: String?

        public var referenceName: String?

        public var state: ASCState?

        public init(inAppPurchaseType: ASCInAppPurchaseType? = nil, productId: String? = nil, referenceName: String? = nil, state: ASCState? = nil) {
            self.inAppPurchaseType = inAppPurchaseType
            self.productId = productId
            self.referenceName = referenceName
            self.state = state
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            inAppPurchaseType = try container.decodeIfPresent("inAppPurchaseType")
            productId = try container.decodeIfPresent("productId")
            referenceName = try container.decodeIfPresent("referenceName")
            state = try container.decodeIfPresent("state")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(inAppPurchaseType, forKey: "inAppPurchaseType")
            try container.encodeIfPresent(productId, forKey: "productId")
            try container.encodeIfPresent(referenceName, forKey: "referenceName")
            try container.encodeIfPresent(state, forKey: "state")
        }

    }

    public struct Relationships: AppStoreConnectBaseModel {

        public var apps: Apps?

        public struct Apps: AppStoreConnectBaseModel {

            public var data: [DataType]?

            public var links: Links?

            public var meta: ASCPagingInformation?

            public struct DataType: AppStoreConnectBaseModel {

                public enum ASCType: String, Codable, Equatable, CaseIterable {
                    case apps = "apps"
                }

                public var id: String

                public var type: ASCType

                public init(id: String, type: ASCType) {
                    self.id = id
                    self.type = type
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    id = try container.decode("id")
                    type = try container.decode("type")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(id, forKey: "id")
                    try container.encode(type, forKey: "type")
                }

            }

            public struct Links: AppStoreConnectBaseModel {

                public var related: String?

                public var `self`: String?

                public init(related: String? = nil, `self`: String? = nil) {
                    self.related = related
                    self.`self` = `self`
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    related = try container.decodeIfPresent("related")
                    `self` = try container.decodeIfPresent("self")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(related, forKey: "related")
                    try container.encodeIfPresent(`self`, forKey: "self")
                }

            }

            public init(data: [DataType]? = nil, links: Links? = nil, meta: ASCPagingInformation? = nil) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                data = try container.decodeArrayIfPresent("data")
                links = try container.decodeIfPresent("links")
                meta = try container.decodeIfPresent("meta")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(data, forKey: "data")
                try container.encodeIfPresent(links, forKey: "links")
                try container.encodeIfPresent(meta, forKey: "meta")
            }

        }

        public init(apps: Apps? = nil) {
            self.apps = apps
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            apps = try container.decodeIfPresent("apps")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(apps, forKey: "apps")
        }

    }

    public init(links: ASCResourceLinks, id: String, type: ASCType, attributes: Attributes? = nil, relationships: Relationships? = nil) {
        self.links = links
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        links = try container.decode("links")
        id = try container.decode("id")
        type = try container.decode("type")
        attributes = try container.decodeIfPresent("attributes")
        relationships = try container.decodeIfPresent("relationships")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(links, forKey: "links")
        try container.encode(id, forKey: "id")
        try container.encode(type, forKey: "type")
        try container.encodeIfPresent(attributes, forKey: "attributes")
        try container.encodeIfPresent(relationships, forKey: "relationships")
    }

}