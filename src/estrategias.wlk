import wollok.game.*
import pilotos.*

// NEUMATICOS DISPONIBLES

object neumaticosBlandos {
    var property desgaste = 0
    method rendimientoEn(clima) {
        if (clima == "lluvia") {
            return (10 - desgaste).max(0)
        }
        return (100 - desgaste).max(0)   
    }
    method desgastar() {
        desgaste = (desgaste + 2).min(100)
    }
}

object neumaticosDuros {
    var property desgaste = 0
    method rendimientoEn(clima) {
        if (clima == "lluvia") {
            return (5 - desgaste).max(0)
        }
        return (100 - desgaste).max(0)
    }
    method desgastar() {
        desgaste = (desgaste + 1).min(100) 
    }
}

object neumaticosLluvia {
    var property desgaste = 0
    method rendimientoEn(clima) {
        if (clima == "lluvia"){
            return (60 - desgaste).max(0)
        }
        return (5 - desgaste).max(0)
    }
    method desgastar() {
        desgaste = (desgaste + 2).min(100)
    }
}

// ESTRATEGIAS MANEJO

class Estrategia {
    const property consumoCombustible
    const property multiplicadorVelocidad
    const property riesgoDNF
}

const estrategiaConservadora = new Estrategia (
    const property consumoCombustible = 2
    const property multiplicadorVelocidad = 0.9
    const property riesgoDNF = 2
)

const estrategiaAgresiva = new Estrategia (
    const property consumoCombustible = 5
    const property multiplicadorVelocidad = 1.2
    const property riesgoDNF = 10
)