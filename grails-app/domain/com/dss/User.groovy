package com.dss

class User {

	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
    //BigInteger employeeId
    //Employee employee

    static belongsTo = [employee: Employee]

	static constraints = {
//		password blank: false, validator: {
//            val, obj->
//                if (val?.equalsIgnoreCase(employee.firstName) || val?.equalsIgnoreCase(employee.lastName) || val?.equalsIgnoreCase(employee.email))
//                {
//                    return false;
//                }
//        }
	}

	static mapping = {
        id column: "user_id"
		password column: '`password`'
        username sqlType: 'varchar(100)', length: 100
        password sqlType: 'varchar(64)', length: 64
        //employee insertable: false, updateable: false
        version false
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
