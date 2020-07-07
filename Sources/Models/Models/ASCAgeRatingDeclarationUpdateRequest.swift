//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct ASCAgeRatingDeclarationUpdateRequest: AppStoreConnectBaseModel {

    public var data: DataType

    public struct DataType: AppStoreConnectBaseModel {

        public enum ASCType: String, Codable, Equatable, CaseIterable {
            case ageRatingDeclarations = "ageRatingDeclarations"
        }

        public var _id: String

        public var type: ASCType

        public var attributes: Attributes?

        public struct Attributes: AppStoreConnectBaseModel {

            public enum ASCAlcoholTobaccoOrDrugUseOrReferences: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCGamblingSimulated: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCHorrorOrFearThemes: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCMatureOrSuggestiveThemes: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCMedicalOrTreatmentInformation: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCProfanityOrCrudeHumor: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCSexualContentGraphicAndNudity: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCSexualContentOrNudity: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCViolenceCartoonOrFantasy: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCViolenceRealistic: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public enum ASCViolenceRealisticProlongedGraphicOrSadistic: String, Codable, Equatable, CaseIterable {
                case none = "NONE"
                case infrequentOrMild = "INFREQUENT_OR_MILD"
                case frequentOrIntense = "FREQUENT_OR_INTENSE"
            }

            public var alcoholTobaccoOrDrugUseOrReferences: ASCAlcoholTobaccoOrDrugUseOrReferences?

            public var gamblingAndContests: Bool?

            public var gamblingSimulated: ASCGamblingSimulated?

            public var horrorOrFearThemes: ASCHorrorOrFearThemes?

            public var kidsAgeBand: ASCKidsAgeBand?

            public var matureOrSuggestiveThemes: ASCMatureOrSuggestiveThemes?

            public var medicalOrTreatmentInformation: ASCMedicalOrTreatmentInformation?

            public var profanityOrCrudeHumor: ASCProfanityOrCrudeHumor?

            public var sexualContentGraphicAndNudity: ASCSexualContentGraphicAndNudity?

            public var sexualContentOrNudity: ASCSexualContentOrNudity?

            public var unrestrictedWebAccess: Bool?

            public var violenceCartoonOrFantasy: ASCViolenceCartoonOrFantasy?

            public var violenceRealistic: ASCViolenceRealistic?

            public var violenceRealisticProlongedGraphicOrSadistic: ASCViolenceRealisticProlongedGraphicOrSadistic?

            public init(alcoholTobaccoOrDrugUseOrReferences: ASCAlcoholTobaccoOrDrugUseOrReferences? = nil, gamblingAndContests: Bool? = nil, gamblingSimulated: ASCGamblingSimulated? = nil, horrorOrFearThemes: ASCHorrorOrFearThemes? = nil, kidsAgeBand: ASCKidsAgeBand? = nil, matureOrSuggestiveThemes: ASCMatureOrSuggestiveThemes? = nil, medicalOrTreatmentInformation: ASCMedicalOrTreatmentInformation? = nil, profanityOrCrudeHumor: ASCProfanityOrCrudeHumor? = nil, sexualContentGraphicAndNudity: ASCSexualContentGraphicAndNudity? = nil, sexualContentOrNudity: ASCSexualContentOrNudity? = nil, unrestrictedWebAccess: Bool? = nil, violenceCartoonOrFantasy: ASCViolenceCartoonOrFantasy? = nil, violenceRealistic: ASCViolenceRealistic? = nil, violenceRealisticProlongedGraphicOrSadistic: ASCViolenceRealisticProlongedGraphicOrSadistic? = nil) {
                self.alcoholTobaccoOrDrugUseOrReferences = alcoholTobaccoOrDrugUseOrReferences
                self.gamblingAndContests = gamblingAndContests
                self.gamblingSimulated = gamblingSimulated
                self.horrorOrFearThemes = horrorOrFearThemes
                self.kidsAgeBand = kidsAgeBand
                self.matureOrSuggestiveThemes = matureOrSuggestiveThemes
                self.medicalOrTreatmentInformation = medicalOrTreatmentInformation
                self.profanityOrCrudeHumor = profanityOrCrudeHumor
                self.sexualContentGraphicAndNudity = sexualContentGraphicAndNudity
                self.sexualContentOrNudity = sexualContentOrNudity
                self.unrestrictedWebAccess = unrestrictedWebAccess
                self.violenceCartoonOrFantasy = violenceCartoonOrFantasy
                self.violenceRealistic = violenceRealistic
                self.violenceRealisticProlongedGraphicOrSadistic = violenceRealisticProlongedGraphicOrSadistic
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                alcoholTobaccoOrDrugUseOrReferences = try container.decodeIfPresent("alcoholTobaccoOrDrugUseOrReferences")
                gamblingAndContests = try container.decodeIfPresent("gamblingAndContests")
                gamblingSimulated = try container.decodeIfPresent("gamblingSimulated")
                horrorOrFearThemes = try container.decodeIfPresent("horrorOrFearThemes")
                kidsAgeBand = try container.decodeIfPresent("kidsAgeBand")
                matureOrSuggestiveThemes = try container.decodeIfPresent("matureOrSuggestiveThemes")
                medicalOrTreatmentInformation = try container.decodeIfPresent("medicalOrTreatmentInformation")
                profanityOrCrudeHumor = try container.decodeIfPresent("profanityOrCrudeHumor")
                sexualContentGraphicAndNudity = try container.decodeIfPresent("sexualContentGraphicAndNudity")
                sexualContentOrNudity = try container.decodeIfPresent("sexualContentOrNudity")
                unrestrictedWebAccess = try container.decodeIfPresent("unrestrictedWebAccess")
                violenceCartoonOrFantasy = try container.decodeIfPresent("violenceCartoonOrFantasy")
                violenceRealistic = try container.decodeIfPresent("violenceRealistic")
                violenceRealisticProlongedGraphicOrSadistic = try container.decodeIfPresent("violenceRealisticProlongedGraphicOrSadistic")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(alcoholTobaccoOrDrugUseOrReferences, forKey: "alcoholTobaccoOrDrugUseOrReferences")
                try container.encodeIfPresent(gamblingAndContests, forKey: "gamblingAndContests")
                try container.encodeIfPresent(gamblingSimulated, forKey: "gamblingSimulated")
                try container.encodeIfPresent(horrorOrFearThemes, forKey: "horrorOrFearThemes")
                try container.encodeIfPresent(kidsAgeBand, forKey: "kidsAgeBand")
                try container.encodeIfPresent(matureOrSuggestiveThemes, forKey: "matureOrSuggestiveThemes")
                try container.encodeIfPresent(medicalOrTreatmentInformation, forKey: "medicalOrTreatmentInformation")
                try container.encodeIfPresent(profanityOrCrudeHumor, forKey: "profanityOrCrudeHumor")
                try container.encodeIfPresent(sexualContentGraphicAndNudity, forKey: "sexualContentGraphicAndNudity")
                try container.encodeIfPresent(sexualContentOrNudity, forKey: "sexualContentOrNudity")
                try container.encodeIfPresent(unrestrictedWebAccess, forKey: "unrestrictedWebAccess")
                try container.encodeIfPresent(violenceCartoonOrFantasy, forKey: "violenceCartoonOrFantasy")
                try container.encodeIfPresent(violenceRealistic, forKey: "violenceRealistic")
                try container.encodeIfPresent(violenceRealisticProlongedGraphicOrSadistic, forKey: "violenceRealisticProlongedGraphicOrSadistic")
            }

        }

        public init(_id: String, type: ASCType, attributes: Attributes? = nil) {
            self._id = _id
            self.type = type
            self.attributes = attributes
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            _id = try container.decode("id")
            type = try container.decode("type")
            attributes = try container.decodeIfPresent("attributes")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encode(_id, forKey: "id")
            try container.encode(type, forKey: "type")
            try container.encodeIfPresent(attributes, forKey: "attributes")
        }

    }

    public init(data: DataType) {
        self.data = data
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decode("data")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(data, forKey: "data")
    }

}
