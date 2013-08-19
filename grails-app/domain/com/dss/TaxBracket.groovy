package com.dss

class TaxBracket {

	Integer taxRatePercentage
	Long minBalance
	Long maxBalance
	String maritalStatus

	static mapping = {
		id column: "tax_id"
		version false
	}

	static constraints = {
		taxRatePercentage nullable: true
		maritalStatus maxSize: 45
	}
}
