class Dependencia {
    const flotaDeRodados
    const cantidadEmpleados
    method agregarAFlota(rodado) {
        flotaDeRodados.add(rodado)
    }
    method quitarDeFlota(rodado) {
        flotaDeRodados.remove(rodado)
    }  
    method pesoTotalFlota(){
        return flotaDeRodados.sum({r => r.peso()})
    }
    method estaBienEquipada(){
        return flotaDeRodados.size() >= 3 and 
               flotaDeRodados.all({r => r.velocidadMaxima() >= 100})
    } 
    method capacidadTotalEnColor(color){
        return flotaDeRodados.sum(flotaDeRodados.filter({r => r.color() == color}).capacidad())
    }
    method colorDelRodadoMasRapido(){
        return flotaDeRodados.max({r => r.velocidadMaxima()}).color()
    } 
    method capacidadFaltante(){
        return cantidadEmpleados - flotaDeRodados.sum({r => r.capacidad()})
    }
    method esGrande(){
        return flotaDeRodados.size() >= 5 and cantidadEmpleados >= 40 
    }  
}