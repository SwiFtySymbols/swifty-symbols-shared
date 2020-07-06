import Foundation

public struct SFSymbolListObject: Codable, Hashable {
	public let id: UUID
	public let value: String
	public let localizations: [SFSymbolLocalizationOptions]?
	public let deprecatedNames: [String]?
	public let availability: SFVersionAvailability

	public init(id: UUID, value: String, localizations: [SFSymbolLocalizationOptions], deprecatedNames: [String]?, availability: SFVersionAvailability) {
		self.id = id
		self.value = value
		self.localizations = localizations
		self.deprecatedNames = deprecatedNames
		self.availability = availability
	}
}

public struct SFSymbolResultObject: Codable, Hashable {
	public let id: UUID
	public let value: String
	public let availability: SFVersionAvailability
	public let localizations: [SFSymbolLocalizationOptions]
	public let deprecatedNames: [String]
	public let resultScore: Double

	public init(id: UUID, value: String, availability: SFVersionAvailability, localizations: [SFSymbolLocalizationOptions], deprecatedNames: [String], resultScore: Double) {
		self.id = id
		self.value = value
		self.availability = availability
		self.localizations = localizations
		self.deprecatedNames = deprecatedNames
		self.resultScore = resultScore
	}
}

public struct SFSymbolGetObject: Codable {
	public let id: UUID
	public let value: String
	public let availability: SFVersionAvailability
	public let localizations: [SFSymbolLocalizationOptions]
	public let deprecatedNames: [String]
	public var tags: [SFSymbolTagListObject]?

	public init(id: UUID, value: String, availability: SFVersionAvailability, localizations: [SFSymbolLocalizationOptions], deprecatedNames: [String], tags: [SFSymbolTagListObject]? = nil) {
		self.id = id
		self.value = value
		self.availability = availability
		self.localizations = localizations
		self.deprecatedNames = deprecatedNames
		self.tags = tags
	}
}

public struct SFTagSymbolRequest: Codable {
	public let symbolID: UUID
	/// Must not contain spaces
	public let tagValue: String
}
