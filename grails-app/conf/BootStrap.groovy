import com.dss.RequestMap
import com.dss.User
import com.dss.Role
import com.dss.UserRole

class BootStrap {

    def init = { servletContext ->
        new RequestMap(url: '/js/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/css/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/images/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/login/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/favicon.ico', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(flush:true)
        new RequestMap(url: '/admin/**', configAttribute: 'ROLE_ADMIN').save(flush:true)
        new RequestMap(url: '/*/**', configAttribute: 'ROLE_ADMIN, ROLE_USER').save(flush:true)
        new RequestMap(url: '/', configAttribute: 'ROLE_ADMIN, ROLE_USER').save(flush: true)
        new User(username: 'admin', password: 'admin', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin1', password: 'admin1', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin2', password: 'admin2', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin3', password: 'admin3', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin4', password: 'admin4', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin5', password: 'admin5', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin6', password: 'admin6', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin7', password: 'admin7', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin8', password: 'admin8', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin9', password: 'admin9', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin10', password: 'admin10', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin11', password: 'admin11', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin12', password: 'admin12', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new User(username: 'admin13', password: 'admin13', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
        new Role(authority: 'ROLE_ADMIN').save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin1')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin2')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin3')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin4')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin5')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin6')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin7')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin8')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin9')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin10')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin11')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin12')).save(flush: true)
        new UserRole(role: Role.findByAuthority('ROLE_ADMIN'), user: User.findByUsername('admin13')).save(flush: true)

    }
    def destroy = {
    }
}
