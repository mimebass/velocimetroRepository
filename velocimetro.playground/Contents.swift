//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
} 

func obtenerVelocidad(speed : Velocidades)->String{
    switch speed{
    case .Apagado:
        return "Apagado"
    case .VelocidadBaja:
        return "Velocidad baja"
    case .VelocidadMedia:
        return "Velocidad media"
        
    default: return "Velocidad alta"
    }
}


class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad()->( actual : Int, velocidadEnCadena: String){
        
        if(velocidad == .Apagado){
            velocidad = .VelocidadBaja
        }
        
        if(velocidad == .VelocidadBaja){
            velocidad = .VelocidadMedia
        }
        
        if(velocidad == .Apagado){
            velocidad = .VelocidadBaja
        }
        
        return (velocidad.rawValue, obtenerVelocidad(velocidad))
    }
}

var auto = Auto()

for numero in 1 ... 20{
    print(auto.cambioDeVelocidad())
}
