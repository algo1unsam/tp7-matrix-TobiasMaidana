import mensajeros.*

object mensajeria {
    const property mensajeros = #{}

    method contratar(mensajero) {
      mensajeros.add(mensajero)
      return mensajeros.size()
    }

    method despedir(mensajero) {
      mensajeros.remove(mensajero)
      return mensajeros.size()
    }

    method despedir() {
      mensajeros.clear()
      return mensajeros.size() == 0
    }

    method esGrande() = mensajeros.size() > 2

    method pesoUltimoMensajero(){
        const comoLista = mensajeros.asList()
        return comoLista.last().peso()
    }


}
