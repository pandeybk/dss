package DeewalkSalarySystem

import org.springframework.dao.DataIntegrityViolationException

class SalaryTableController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [salaryTableInstanceList: SalaryTable.list(params), salaryTableInstanceTotal: SalaryTable.count()]
    }

    def create() {
        [salaryTableInstance: new SalaryTable(params)]
    }

    def save() {
        def salaryTableInstance = new SalaryTable(params)
        if (!salaryTableInstance.save(flush: true)) {
            render(view: "create", model: [salaryTableInstance: salaryTableInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'salaryTable.label', default: 'SalaryTable'), salaryTableInstance.id])
        redirect(action: "show", id: salaryTableInstance.id)
    }

    def show(Long id) {
        def salaryTableInstance = SalaryTable.get(id)
        if (!salaryTableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salaryTable.label', default: 'SalaryTable'), id])
            redirect(action: "list")
            return
        }

        [salaryTableInstance: salaryTableInstance]
    }

    def edit(Long id) {
        def salaryTableInstance = SalaryTable.get(id)
        if (!salaryTableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salaryTable.label', default: 'SalaryTable'), id])
            redirect(action: "list")
            return
        }

        [salaryTableInstance: salaryTableInstance]
    }

    def update(Long id, Long version) {
        def salaryTableInstance = SalaryTable.get(id)
        if (!salaryTableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salaryTable.label', default: 'SalaryTable'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (salaryTableInstance.version > version) {
                salaryTableInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'salaryTable.label', default: 'SalaryTable')] as Object[],
                          "Another user has updated this SalaryTable while you were editing")
                render(view: "edit", model: [salaryTableInstance: salaryTableInstance])
                return
            }
        }

        salaryTableInstance.properties = params

        if (!salaryTableInstance.save(flush: true)) {
            render(view: "edit", model: [salaryTableInstance: salaryTableInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'salaryTable.label', default: 'SalaryTable'), salaryTableInstance.id])
        redirect(action: "show", id: salaryTableInstance.id)
    }

    def delete(Long id) {
        def salaryTableInstance = SalaryTable.get(id)
        if (!salaryTableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salaryTable.label', default: 'SalaryTable'), id])
            redirect(action: "list")
            return
        }

        try {
            salaryTableInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'salaryTable.label', default: 'SalaryTable'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'salaryTable.label', default: 'SalaryTable'), id])
            redirect(action: "show", id: id)
        }
    }
}
