package DeewalkSalarySystem



import org.junit.*
import grails.test.mixin.*

@TestFor(TaxBracketController)
@Mock(TaxBracket)
class TaxBracketControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/taxBracket/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.taxBracketInstanceList.size() == 0
        assert model.taxBracketInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.taxBracketInstance != null
    }

    void testSave() {
        controller.save()

        assert model.taxBracketInstance != null
        assert view == '/taxBracket/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/taxBracket/show/1'
        assert controller.flash.message != null
        assert TaxBracket.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/taxBracket/list'

        populateValidParams(params)
        def taxBracket = new TaxBracket(params)

        assert taxBracket.save() != null

        params.id = taxBracket.id

        def model = controller.show()

        assert model.taxBracketInstance == taxBracket
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/taxBracket/list'

        populateValidParams(params)
        def taxBracket = new TaxBracket(params)

        assert taxBracket.save() != null

        params.id = taxBracket.id

        def model = controller.edit()

        assert model.taxBracketInstance == taxBracket
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/taxBracket/list'

        response.reset()

        populateValidParams(params)
        def taxBracket = new TaxBracket(params)

        assert taxBracket.save() != null

        // test invalid parameters in update
        params.id = taxBracket.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/taxBracket/edit"
        assert model.taxBracketInstance != null

        taxBracket.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/taxBracket/show/$taxBracket.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        taxBracket.clearErrors()

        populateValidParams(params)
        params.id = taxBracket.id
        params.version = -1
        controller.update()

        assert view == "/taxBracket/edit"
        assert model.taxBracketInstance != null
        assert model.taxBracketInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/taxBracket/list'

        response.reset()

        populateValidParams(params)
        def taxBracket = new TaxBracket(params)

        assert taxBracket.save() != null
        assert TaxBracket.count() == 1

        params.id = taxBracket.id

        controller.delete()

        assert TaxBracket.count() == 0
        assert TaxBracket.get(taxBracket.id) == null
        assert response.redirectedUrl == '/taxBracket/list'
    }
}
