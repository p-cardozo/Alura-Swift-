//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Patricia dos Santos Cardozo on 26/08/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class RefeicoesTableViewController: UITableViewController, ViewControllerDelegate{
    
    var refeicoes = [Refeicao(nome: "Strogonoff", felicidade: 5),
                     Refeicao(nome:"Acai", felicidade:3),
                     Refeicao(nome: "Pizza", felicidade: 4)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
    
    func add(_ refeicao: Refeicao){
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "adicionar"{
            if let viewController = segue.destination as? ViewController{
                viewController.delegate = self
            }
        }
        
        
        
        
        
    }
}
