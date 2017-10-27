//
//  Filmes.swift
//  Meus Filmes aula
//
//  Created by Bruno Lopes de Mello on 25/10/2017.
//  Copyright © 2017 Bruno Lopes de Mello. All rights reserved.
//

import Foundation
import UIKit

class Filmes {
    var titulo:String
    var descricao:String
    var imagem:UIImage!
    
    init(_ titulo:String = "null",_ descricao:String = "null",_ imagem:UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
