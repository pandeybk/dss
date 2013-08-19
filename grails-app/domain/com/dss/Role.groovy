package com.dss

class Role {

	String roleName
	Long userRoleId
	UserRole userRole

	static mapping = {
		id column: "role_id"
		version false
        userRole insertable: false
        userRole updateable: false
	}

	static constraints = {
		roleName maxSize: 45
		userRoleId nullable: true, unique: true
		userRole nullable: true, unique: true
	}
}
