import Foundation

public struct SFSymbolListObject: Codable, Hashable {
	public let id: UUID
	public let value: String

	public init(id: UUID, value: String) {
		self.id = id
		self.value = value
	}
}

public struct SFSymbolGetObject: Codable {
	public let id: UUID
	public let value: String
	public let tags: Set<SFSymbolTagListObject>

	public init(id: UUID, value: String, tags: Set<SFSymbolTagListObject>) {
		self.id = id
		self.value = value
		self.tags = tags
	}
}


