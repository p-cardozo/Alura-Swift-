//
//  Item.swift
//  eggplant-brownie
//
//  Created by Patricia dos Santos Cardozo on 25/08/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Item: NSObject {

    //  Atributos
    
    let nome: String
    let calorias: Double
    
    // Construtor
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
