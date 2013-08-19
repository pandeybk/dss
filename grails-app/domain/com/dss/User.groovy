package com.dss

class User {

	String username
	String password
	Boolean userStatus
	Long employeeId
	Employee employee

	static hasMany = [userRoles: UserRole]
	static belongsTo = [Employee]

	static mapping = {
		id column: "user_id"
		version false
        employee insertable: false
        employee updateable: false
	}

	static constraints = {
		username maxSize: 45
		password maxSize: 45
	}
}
