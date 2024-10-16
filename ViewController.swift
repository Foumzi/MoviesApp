//
//  ViewController.swift
//  MoviesApp
//
//  Created by Amine Nakhle on 15/10/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as! MovieTableViewCell
        
        let movie = movies[indexPath.row]
        
        cell.movieDateLable.text = movie.data
        cell.movieNameLable.text = movie.name
        cell.movieRatingLable.text = "\(movie.rating)"
        cell.movieTableView.image = UIImage(named: movie.imageName)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    
   
    

    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [
    
        Movie(name:"Joker", rating:5.3, data:"2024", imageName:"joker"),
        Movie(name:"Lord", rating:5.1, data:"2024", imageName: "Lord"),
        Movie(name:"Monsters", rating:5.5, data:"2024", imageName: "monsters"),
        Movie(name:"Nobody", rating:5.5, data:"2023", imageName: "nobody"),
        Movie(name:"Penguin", rating:5.5, data:"2022", imageName: "penguin"),
        Movie(name:"Terrifier", rating:5.5, data:"2024", imageName: "terrifier")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Top Movies"
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName:  "MovieTableViewCell", bundle: nil)
              tableView.register(nib, forCellReuseIdentifier:  "MovieTableViewCell")
        
     
}
}
