package practicagrails.springs

import edu.pucmm.seguridad.Pregunta
import edu.pucmm.seguridad.Usuario
import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class BarcampController {

    def springSecurityService

    def index() {
        Usuario usuario = springSecurityService.currentUser;
        [usuario: usuario]
    }
    def encuentas(){

    }

    def save(){
        def respuesta = new Pregunta(params.Pregunta)
        respuesta.save()
        render "Success!"
        // def user = springSecurityService.currentUser
    }
}
