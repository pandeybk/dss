package com.dss

class Employee {

	String firstName
	String middleName
	String lastName
	String email
	String maritalStatus
	String designation
	Date joinedDate
	Date termedDate
	String phoneMobile
	String phoneHouse
	String personalMail
	Date dob
	String addressTemporary
	String addressPermanent
	String citizenshipNo
	String bankAccountNo
	String panNo
	Boolean isActive

	static hasMany = [employeeCategories: EmployeeCategory,
	                  salaryTables: SalaryTable]
//	                  users: User]

	static mapping = {
		id column: "emp_id"
		version false
        isActive sqlType: 'tinyint(1)', length: 1, defaultValue: 'true'
        version false
	}

	static constraints = {
        id nullable: false
		firstName maxSize: 45
		middleName nullable: true, maxSize: 45
		lastName maxSize: 45
		email nullable: false, blank: false, maxSize: 100, email: true, unique: true
		maritalStatus maxSize: 1, inList: ['S', 'M']
		designation maxSize: 45
		phoneMobile maxSize: 25
		phoneHouse nullable: true, maxSize: 25
		personalMail maxSize: 100, email: true, nullable: true
		addressTemporary nullable: true, maxSize: 200
		addressPermanent maxSize: 200
		citizenshipNo maxSize: 25
		bankAccountNo maxSize: 30
		panNo maxSize: 45
        termedDate nullable: true
        addressTemporary nullable: true
	}
}
