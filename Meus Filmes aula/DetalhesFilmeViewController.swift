//
//  DetalhesFilmeViewController.swift
//  Meus Filmes aula
//
//  Created by Bruno Lopes de Mello on 26/10/2017.
//  Copyright © 2017 Bruno Lopes de Mello. All rights reserved.
//

import Foundation
import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    var filme: Filmes!
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.filmeImageView.image = filme.imagem
        self.tituloLabel.text = filme.titulo
        self.descricaoLabel.text = filme.descricao
    }
    
}
