//: Playground velocimetro


import UIKit


enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad:Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( velocidadActual : Int, cambioDeVelocidades: String){
        var cambios : String?
        let velocidadActual = velocidad.rawValue
        
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            cambios = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            cambios = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            cambios = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .Apagado
            cambios = "Velocidad Alta"
        }
        
        return (velocidadActual, cambios!)
    }
    
}

let auto = Auto()
for i in 1...20 {
    let velocimetro = auto.cambioDeVelocidad()
    print("\(velocimetro.velocidadActual), \t \(velocimetro.cambioDeVelocidades)")
}