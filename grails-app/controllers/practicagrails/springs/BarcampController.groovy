package practicagrails.springs

import edu.pucmm.seguridad.Pregunta
import edu.pucmm.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured

class BarcampController {

    def springSecurityService

    def index() { }

    @Secured(["ROLE_ADMIN"])
    def encuentas(){
        Pregunta.save()
        render "Success!"
        // def user = springSecurityService.currentUser
    }
}
