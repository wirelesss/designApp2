//
//  InfoPizza.swift
//  PizzaOrden
//
//  Created by Rodrigo on 12/12/16.
//  Copyright © 2016 Rodrigo Hernandez. All rights reserved.
//

import Foundation

// Clase contenedora de la información de
// preparación de una Pizza a la Orden o a la medida
class InfoPizza: NSObject {
    var lastMessage:String = ""
    
    override init(){
        lastMessage = ""
    }
    
    func reset(){
        lastMessage = ""
    }
    
    
}
