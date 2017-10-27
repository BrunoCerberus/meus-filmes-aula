//
//  ViewController.swift
//  Meus Filmes aula
//
//  Created by Bruno Lopes de Mello on 25/10/2017.
//  Copyright © 2017 Bruno Lopes de Mello. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes = Array<Filmes>()
    var filme:Filmes!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filme = Filmes("007 - Spectre", "Descricao 1", #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        
        filme = Filmes("Star Wars", "Descricao 2", #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filmes("Impacto Mortal", "Descricao 3", #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filmes("DeadPool", "Descricao 4", #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filmes("O Regresso", "Descricao 5", #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
        
        filme = Filmes("Filme 6", "Descricao 6", #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        
        filme = Filmes("Filme 7", "Descricao 7", #imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        
        filme = Filmes("Filme 8", "Descricao 8", #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        
        filme = Filmes("Filme 9", "Descricao 9", #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        
        filme = Filmes("Filme 10", "Descricao 10", #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath) as! FilmeCelula
        cell.tituloLabel.text = filmes[indexPath.row].titulo
        cell.descricaoLabel.text = filmes[indexPath.row].descricao
        cell.filmeImageView.image = filmes[indexPath.row].imagem
//        cell.textLabel?.text = filmes[indexPath.row].titulo
//        cell.imageView?.image = filmes[indexPath.row].imagem
        
        //Torna a borda da imagem circular
        cell.filmeImageView.layer.cornerRadius = 42
        cell.filmeImageView.clipsToBounds = true
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goDetalhes" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestination = segue.destination as! DetalhesFilmeViewController
                viewControllerDestination.filme = filmeSelecionado
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(filmes[indexPath.row].titulo)
    }
}

