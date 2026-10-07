import wollok.game.*
import pilotos.*

object argentina {
    const property vueltas = 60
    const property longitudVuelta = 5.9
    const property dificultad = 2
    var property tiempoVuelta = 90
    var property clima = dry 
    method image() = "buenosAires.png"
}

object brasil {
    const property vueltas = 70
    const property longitudVuelta = 4.3
    const property dificultad = 5
    var property tiempoVuelta = 80
    var property clima = wet
    method image() = "saoPaulo.png"
}

object monaco {
    const property vueltas = 80
    const property longitudVuelta = 3.3
    const property dificultad = 10
    var property tiempoVuelta = 75
    var property clima = dry 
    method image() = "monaco.png"
}

