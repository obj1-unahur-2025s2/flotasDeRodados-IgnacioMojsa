class Corsa{
    const color 
    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300  
    method color() = color  
}

class Kwid {
    const tieneTanque 
    method capacidad() = if(tieneTanque) 3 else 4 
    method velocidadMaxima() = if(tieneTanque) 120 else 110
    method peso() = if(tieneTanque) 1200 + 150 else 1200
    method color() = azul 
}

class AutoEspecial {
    const capacidad 
    const velocidadMaxima   
    const peso
    const color  
    method capacidad() = capacidad
    method velocidadMaxima() = velocidadMaxima
    method peso() = peso
    method color() = color 
}

object trafic {
    var interior = interiorComodo
    var motor = motorPulenta
    method cambiarInterior(nuevoInterior) {
        interior = nuevoInterior
    }
    method cambiarMotor(nuevoMotor) {
        motor = nuevoMotor
    }
    method capacidad() = interior.capacidad()
    method velocidadMaxima() = motor.velocidadMax()
    method peso() = 4000 + interior.peso() + motor.peso()   
    method color() = blanco
}

object interiorComodo {
    method capacidad() = 5
    method peso() = 700
}

object interiorPopular {
    method capacidad() = 12
    method peso() = 1000
}

object motorPulenta {
    method velocidadMaxima() = 130
    method peso() = 800
}

object motorBataton {
    method velocidadMaxima() = 80
    method peso() = 500
}

object blanco {
  
}

object azul {
  
}