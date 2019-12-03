package edu.pucmm.seguridad

class Pregunta {

    Integer respuesta1
    Integer respuesta2
    Integer respuesta3
    String respuesta4
    Usuario usuario

    static constraints = {
        respuesta1 blank: false
        respuesta2 blank: false
        respuesta3 blank: false
        respuesta4 blank: false
        usuario nullable: true

    }
}
