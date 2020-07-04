import Foundation

public struct SFSymbolListObject: Codable, Hashable {
	public let id: UUID
	public let value: String
	public let availability: SFVersionAvailability

	public init(id: UUID, value: String, availability: SFVersionAvailability) {
		self.id = id
		self.value = value
		self.availability = availability
	}
}

public struct SFSymbolGetObject: Codable {
	public let id: UUID
	public let value: String
	public let availability: SFVersionAvailability
	public var tags: [SFSymbolTagListObject]?

	public init(id: UUID, value: String, availability: SFVersionAvailability, tags: [SFSymbolTagListObject]? = nil) {
		self.id = id
		self.value = value
		self.availability = availability
		self.tags = tags
	}
}

public struct SFTagSymbolRequest: Codable {
	public let symbolID: UUID
	public let tagValue: String
}
