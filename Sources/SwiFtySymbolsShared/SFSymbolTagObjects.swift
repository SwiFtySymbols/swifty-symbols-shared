import Foundation

public struct SFSymbolTagListObject: Codable, Hashable {
	public let id: UUID
	public let value: String

	public init(id: UUID, value: String) {
		self.id = id
		self.value = value
	}
}

public struct SFSymbolTagGetObject: Codable {
	public let id: UUID
	public let value: String
	public let symbols: [SFSymbolListObject]

	public init(id: UUID, value: String, symbols: [SFSymbolListObject]) {
		self.id = id
		self.value = value
		self.symbols = symbols
	}
}
