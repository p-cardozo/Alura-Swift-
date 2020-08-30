//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Patricia dos Santos Cardozo on 25/08/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate{
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {
    
    var delegate: ViewControllerDelegate?
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }
}
