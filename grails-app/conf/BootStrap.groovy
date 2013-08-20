import com.dss.RequestMap
import com.dss.User

class BootStrap {

    def init = { servletContext ->
        new RequestMap(url: '/js/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/css/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/images/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/login/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/logout/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/favicon.ico', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/user/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/admin/**', configAttribute: 'ROLE_ADMIN').save(flush:true)
        new RequestMap(url: '/*/**', configAttribute: 'ROLE_ADMIN, ROLE_USER').save(flush:true)
        //new User(user_id: '1', username: 'admin', password: 'admin').save(flush: true)

    }
    def destroy = {
    }
}
