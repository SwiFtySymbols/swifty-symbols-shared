import Foundation

public struct SFSymbolTagListObject: Codable, Hashable {
	public let id: UUID
	public let value: String

	public init(id: UUID, value: String) {
		self.id = id
		self.value = value
	}
}

public struct SFSymbolTagGetObject: Codable, Hashable {
	public let id: UUID
	public let value: String
	public let symbols: Set<SFSymbolListObject>

	public init(id: UUID, value: String, symbols: Set<SFSymbolListObject>) {
		self.id = id
		self.value = value
		self.symbols = symbols
	}
}
