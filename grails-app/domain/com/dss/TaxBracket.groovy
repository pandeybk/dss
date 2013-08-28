package com.dss

class TaxBracket {

	Integer taxRatePercentage
	Long minBalance
	Long maxBalance
	String maritalStatus
    Date effDate
    Date termDate

	static mapping = {
		id column: "tax_id"
		version false
        maritalStatus sqlType: 'char(1)', length: 1
	}

	static constraints = {
		taxRatePercentage nullable: true
		maritalStatus maxSize: 1
	}
}
