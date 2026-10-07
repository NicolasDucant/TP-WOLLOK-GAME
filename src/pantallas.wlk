import wollok.game.*
import objetosMinijuegos.*
import pilotos.*
import circuitos.*


object juego {
  var property pantallaActual = pantallaInicio

  method cambiarPantalla(nuevaPantalla) {
    game.clear()
    pantallaActual = nuevaPantalla
    pantallaActual.iniciar()
  }
}

object pantallaInicio {
    method image() = "pantallaInicio.jpg"
    method position() = game.origin()

    method iniciar() {
        game.addVisual(self)
        keyboard.enter().onPressDo({ juego.cambiarPantalla(pantallaSeleccionCircuito) })
    }
}

object pantallaSeleccionCircuito {
    method image() = "buenosAires.png"
    method position() = game.origin()

    method iniciar() {
        game.addVisual(self)
        keyboard.enter().onPressDo({ juego.cambiarPantalla(pantallaMinijuego1) })
    }
} //Debería ir a la seleccion de piloto, cambiar después


object pantallaMinijuego1 {
    method image() = "pistaMinijuego.jpg"
    method position() = game.origin()

	method iniciar() {
        game.addVisual(self)
		game.addVisual(mate)
		game.addVisual(asado)
        game.addVisual(aceite)
		game.addVisual(autoSeleccionado)
		game.addVisual(norris)
		config.configurarTeclas()
		config.configurarColisiones()
        game.onTick(800, "persecucionNorris", { norris.perseguir(autoSeleccionado)})
	}

}

object paradaEnBoxes {
    //Hacerlo después
}

object gameOver {
    method image() = "gameOver.jpg"
    method position() = game.origin()

    method iniciar () {
        game.addVisual(self)
        keyboard.enter().onPressDo({ juego.cambiarPantalla(pantallaInicio) })
    }    
}