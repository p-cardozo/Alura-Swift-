//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Patricia dos Santos Cardozo on 25/08/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class Refeicao: NSObject {

    // Atributos
       
       let nome: String
       let felicidade: Int
       let itens: Array<Item> = []
       
       // Metodo Construtor
       
       init(nome: String, felicidade: Int) {
           self.nome = nome
           self.felicidade = felicidade
       }
       
       //  Metodos
       
       func totalDeCalorias() -> Double {
           var total = 0.0
           
           for item in itens {
               total += item.calorias
           }
           
           return total
       }
}
