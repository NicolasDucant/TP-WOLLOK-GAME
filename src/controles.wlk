import wollok.game.*
import pilotos.*

object config {

    method configurarTeclas() {
        keyboard.left().onPressDo({ autoSeleccionado.irA(autoSeleccionado.position().left(1)) })
        keyboard.right().onPressDo({ autoSeleccionado.irA(autoSeleccionado.position().right(1)) })
        keyboard.up().onPressDo({ autoSeleccionado.irA(autoSeleccionado.position().up(1)) })
        keyboard.down().onPressDo({ autoSeleccionado.irA(autoSeleccionado.position().down(1)) })
    }

    method configurarColisiones() {
		game.onCollideDo(autoSeleccionado, { elemento => elemento.colisionoConAuto(autoSeleccionado) })
    }

    method configurarEstrategia() {
        keyboard.a().onPressDo({ autoSeleccionado.estrategia(estrategiaAgresiva) })
        keyboard.c().onPressDo({ autoSeleccionado.estrategia(estrategiaConservadora) })
    }

    method configurarNeumaticos() {
        keyboard.b().onPressDo({ autoSeleccionado.neumaticos(neumaticosBlandos) })
        keyboard.d().onPressDo({ autoSeleccionado.neumaticos(neumaticosDuros) })
        keyboard.w().onPressDo({ autoSeleccionado.neumaticos(neumaticosLluvia) })
    }










}