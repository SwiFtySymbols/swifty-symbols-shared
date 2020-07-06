import Foundation

public struct UserCreateContext: Codable {
	public let email: String
	public let password: String
	public let passwordVerify: String

	public init(email: String, password: String, passwordVerify: String) {
		self.email = email
		self.password = password
		self.passwordVerify = passwordVerify
	}
}

public struct UserLoginContext: Codable {
	public let email: String
	public let password: String

	public init(email: String, password: String) {
		self.email = email
		self.password = password
	}
}
