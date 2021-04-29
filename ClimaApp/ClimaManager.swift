//
//  ClimaManager.swift
//  ClimaApp
//
//  Created by Mac17 on 21/04/21.
//

import Foundation


struct ClimaManager {
    let  climaURL = "https://api.openweathermap.org/data/2.5/weather?appid=43c02b88939bc65afefdef7ff3b31822"
    
    func buscarClima(ciudad: String){
        let UrlString = "\(climaURL)&q=\(ciudad)"
        
        realizarSolicitud(urlString: UrlString)
    }
    
    func realizarSolicitud(urlString:String){
        //1
        if let url = URL(string: urlString){
            //2 crear una url session
            let session = URLSession(configuration: .default)
            //3
            let tarea = session.dataTask(with: url, completionHandler: manejador(datos:respuesta:error:))
            
            tarea.resume()
        }
    }
    
    
    func manejador(datos:Data?,respuesta:URLResponse?,error:Error?) -> Void{
        if error != nil{
            print("Error al Obtener los Datos: \(error!)")
            return
        }
        
        if let datosSeguros = datos {
            let datosString = String(data: datosSeguros, encoding: .utf8)
            print(datosString!)
        }
    }
    
    
}
