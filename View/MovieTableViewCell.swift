//
//  MovieTableViewCell.swift
//  MoviesApp
//
//  Created by Amine Nakhle on 15/10/2024.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieRatingLable: UILabel!
    @IBOutlet weak var movieDateLable: UILabel!
    @IBOutlet weak var movieNameLable: UILabel!
    @IBOutlet weak var movieTableView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
