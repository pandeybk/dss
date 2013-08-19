package com.dss

class UserRole {

	Role role
	User user

	static belongsTo = [User]

	static mapping = {
		id column: "role_id"
		version false
        role insertable: false
        role updateable: false
	}

	static constraints = {
		role unique: true
	}
}
