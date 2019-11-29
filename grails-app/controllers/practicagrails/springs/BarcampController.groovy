package practicagrails.springs

import edu.pucmm.seguridad.Pregunta
import edu.pucmm.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured

class BarcampController {

    def springSecurityService

    def index() { }

    @Secured(["ROLE_ADMIN"])
    def encuentas(){
        def respuesta = new Pregunta(params.Pregunta)
        respuesta.save()
        render "Success!"
        // def user = springSecurityService.currentUser
    }
}
