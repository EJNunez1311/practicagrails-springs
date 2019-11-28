package practicagrails.springs

import practicagrails.springs.SeguridadService
import edu.pucmm.seguridad.Rol
import edu.pucmm.seguridad.Usuario
import edu.pucmm.seguridad.UsuarioRol

class BootStrap {
    def SeguridadService

    def init = { servletContext ->

        def adminRole = new Rol(authority: 'ROLE_ADMIN').save()

        def testUser = new Usuario(username: 'me', password: 'password').save()
        SeguridadService.crearUsuarioRol(testUser,adminRole)

      /*  UsuarioRol.create testUser, adminRole
        UsuarioRol.withSession {
            it.flush()
            it.clear()
        }*/

        assert Usuario.count() == 1
        assert Rol.count() == 1
        assert UsuarioRol.count() == 1

    }
    def destroy = {
    }
}
