import wollok.game.*
import pantallas.*         
import pilotos.*

// BOOST
object mate {
    const property energia = 10
    method image() = "mate.png"
    method position() = game.at(10, 3)
    method otorgarHabilidad(piloto){
        nuevaHabilidad = piloto.habilidad() + self.energia()
        piloto.habilidad(nuevaHabilidad)
    }
    method colisionoConAuto(auto) {
    self.otorgarHabilidad(auto.piloto())
  }
}

object asado {
    const property energia = 15
    method image() = "asado.png"
    method position() = game.at(8, 8)
    method otorgarHabilidad(piloto){
        nuevaHabilidad = piloto.habilidad() + self.energia()
        piloto.habilidad(nuevaHabilidad)
    }
    method colisionoConAuto(auto) {
    self.otorgarHabilidad(auto.piloto())
  }
}

// OBSTACULOS

object aceite {
    method position() = game.at(3, 2)
    method image() = "aceite.png"
    method desgastarPorChoque(auto) {
    auto.desgastarNeumaticos(10)
  }
}

// PERSEGUIDORES

object norris {
    method position() = game.at(5, 5)
    method image() = "landonorris.png"

    method perseguir(autoSeleccionado) {
    var nuevoX = position.x()
    var nuevoY = position.y()

    if (nuevoX < autoSeleccionado.position().x()) { nuevoX += 1 }
    else if (nuevoX > autoSeleccionado.position().x()) { nuevoX -= 1 }

    if (nuevoY < autoSeleccionado.position().y()) { nuevoY += 1 }
    else if (nuevoY > autoSeleccionado.position().y()) { nuevoY -= 1 }

    position = game.at(nuevoX, nuevoY)
  }

  method colisionoConAuto(autoSeleccionado) {
    juego.cambiarPantalla(pantallaGameOver)
  }
}