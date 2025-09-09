import mensajeria.*
object morfeo {
    var property transporte = camion
    var property puedeLlamar = false
    
    method peso() = 90 + transporte.peso()
}

object neo {
    var property puedeLlamar = false
    method peso() = 0
}
object trinity {
    method puedeLlamar() = true
    method peso() = 900
}

object camion {
    var property base = 500
    var property acoplados = 1

    method peso() = base * acoplados

}

object monopatin {
    var property peso = 1
}

object puente {

    method dejarPasar(mensajero) = mensajero.peso() <= 1000

}

object matrix {
    method dejarPasar(mensajero) = mensajero.puedeLlamar()
}

object paquete {
    var property pago = false
    var property destino = null

    method estaPago() = pago

    method pagar() {
      pago = true
    }

    method puedeSerEntregadoPor(mensajero) = pago and destino.dejarPasar(mensajero)
}