package practicagrails.springs

import edu.pucmm.seguridad.Rol
import edu.pucmm.seguridad.Usuario
import edu.pucmm.seguridad.UsuarioRol
import grails.gorm.transactions.Transactional

@Transactional
class SeguridadService {

    def crearUsuarioRol(Usuario usuario, Rol rol) {
    UsuarioRol.create(usuario, rol)
    }
}
