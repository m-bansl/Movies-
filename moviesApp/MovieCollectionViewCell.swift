//
//  MovieCollectionViewCell.swift
//  moviesApp
//
//  Created by Mehak Bansal on 13/04/21.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    
    func setup(with movie:Movie) {
        movieImage.image = movie.image
        movieTitle.text = movie.title
    }
    
    
    
}
