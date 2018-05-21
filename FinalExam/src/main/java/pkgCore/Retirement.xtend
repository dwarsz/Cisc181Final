package pkgCore

import org.apache.poi.ss.formula.functions.FinanceLib

class Retirement {
	int iYearsToWork
	double dAnnualReturnWorking
	int iYearsRetired
	double dAnnualReturnRetired
	double dRequiredIncome
	double dMonthlySSI

	new(int iYearsToWork, double dAnnualReturnWorking, int iYearsRetired, double dAnnualReturnRetired,
		double dRequiredIncome, double dMonthlySSI) {
		super()
		this.iYearsToWork = iYearsToWork
		this.dAnnualReturnWorking = dAnnualReturnWorking
		this.iYearsRetired = iYearsRetired
		this.dAnnualReturnRetired = dAnnualReturnRetired
		this.dRequiredIncome = dRequiredIncome
		this.dMonthlySSI = dMonthlySSI
	}

	// Multiply the amount you borrow by the annual interest rate. Then divide by the number of payments per year. 
	def double MonthlySavings() {
		// TODO: Calculate AmountToSave
		var double pmt = 0
		// <-- this should be fixed to calculate the real pmt
		return pmt
	}

	def double TotalAmountToSave() {
		// TODO: Calculate the Total Amount Requried to save
		var double pv = 0
		// Hint: Here's how to round a number: pv = Math.round(pv * 100.0) / 100.0;
		return pv
	}

	def static double PMT(double r, double n, double p, double f, boolean t) {
		// r = Rate
		// n = number of payments
		// p = present value
		// f = future value
		// t = boolean... when interest is calculated... we're going to use FALSE
		return FinanceLib.pmt(r, n, p, f, t)
	}

	def static double PV(double r, double n, double y, double f, boolean t) {
		// r = Rate.  7% would be expressed as...  0.07 / 12
		// n = Number of payments.  Five years would be expressed as...  5 * 12...  or 60
		// y = PMT amount
		// f = Future value
		// t = boolean... when interest is calculated... we're going to use FALSE
		return FinanceLib.pv(r, n, y, f, t)
	}

	def int getiYearsToWork() {
		return iYearsToWork
	}

	def void setiYearsToWork(int iYearsToWork) {
		this.iYearsToWork = iYearsToWork
	}

	def double getdAnnualReturnWorking() {
		return dAnnualReturnWorking
	}

	def void setdAnnualReturnWorking(double dAnnualReturnWorking) {
		this.dAnnualReturnWorking = dAnnualReturnWorking
	}

	def int getiYearsRetired() {
		return iYearsRetired
	}

	def void setiYearsRetired(int iYearsRetired) {
		this.iYearsRetired = iYearsRetired
	}

	def double getdAnnualReturnRetired() {
		return dAnnualReturnRetired
	}

	def void setdAnnualReturnRetired(double dAnnualReturnRetired) {
		this.dAnnualReturnRetired = dAnnualReturnRetired
	}

	def double getdRequiredIncome() {
		return dRequiredIncome
	}

	def void setdRequiredIncome(double dRequiredIncome) {
		this.dRequiredIncome = dRequiredIncome
	}

	def double getdMonthlySSI() {
		return dMonthlySSI
	}

	def void setdMonthlySSI(double dMonthlySSI) {
		this.dMonthlySSI = dMonthlySSI
	}
}
