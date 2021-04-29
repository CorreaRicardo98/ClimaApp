//
//  ClimaModelo.swift
//  ClimaApp
//
//  Created by Mac17 on 29/04/21.
//

import Foundation


struct ClimaMOdelo {
    let temp:Double
    let ciudadNombre:String
    let id:Int
    let feels_like:Double
    let humedad:Double
    
    
    var temperaturaString:String{
        return String(format: "%.1f ", temp)
    }
    
    var humedadString:String{
        return String(format: "%.1f", humedad)
    }
    
    var feel:String{
        return String(format: "%.1f", feels_like)
    }
    var CondicionClima:String{
        switch id {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.hail"
        case 500...531:
            return "cloud.sleet"
        case 600...622:
            return "snow"
        case 701...781:
            return "sun.dust"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.sun"
        default:
            return "cloud"
        }
    }	
}
