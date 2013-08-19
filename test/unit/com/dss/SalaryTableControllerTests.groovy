package DeewalkSalarySystem



import org.junit.*
import grails.test.mixin.*

@TestFor(SalaryTableController)
@Mock(SalaryTable)
class SalaryTableControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/salaryTable/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.salaryTableInstanceList.size() == 0
        assert model.salaryTableInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.salaryTableInstance != null
    }

    void testSave() {
        controller.save()

        assert model.salaryTableInstance != null
        assert view == '/salaryTable/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/salaryTable/show/1'
        assert controller.flash.message != null
        assert SalaryTable.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/salaryTable/list'

        populateValidParams(params)
        def salaryTable = new SalaryTable(params)

        assert salaryTable.save() != null

        params.id = salaryTable.id

        def model = controller.show()

        assert model.salaryTableInstance == salaryTable
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/salaryTable/list'

        populateValidParams(params)
        def salaryTable = new SalaryTable(params)

        assert salaryTable.save() != null

        params.id = salaryTable.id

        def model = controller.edit()

        assert model.salaryTableInstance == salaryTable
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/salaryTable/list'

        response.reset()

        populateValidParams(params)
        def salaryTable = new SalaryTable(params)

        assert salaryTable.save() != null

        // test invalid parameters in update
        params.id = salaryTable.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/salaryTable/edit"
        assert model.salaryTableInstance != null

        salaryTable.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/salaryTable/show/$salaryTable.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        salaryTable.clearErrors()

        populateValidParams(params)
        params.id = salaryTable.id
        params.version = -1
        controller.update()

        assert view == "/salaryTable/edit"
        assert model.salaryTableInstance != null
        assert model.salaryTableInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/salaryTable/list'

        response.reset()

        populateValidParams(params)
        def salaryTable = new SalaryTable(params)

        assert salaryTable.save() != null
        assert SalaryTable.count() == 1

        params.id = salaryTable.id

        controller.delete()

        assert SalaryTable.count() == 0
        assert SalaryTable.get(salaryTable.id) == null
        assert response.redirectedUrl == '/salaryTable/list'
    }
}
