//
//  MovieDetailsViewController.swift
//  flixter-og
//
//  Created by Nikita Wilson on 3/4/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backdropView: UIImageView!
    
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    titleLabel.text = movie["title"] as?
        String
    titleLabel.sizeToFit()
    
    summaryLabel.text = movie["overview"] as?
        String
        
        summaryLabel.sizeToFit()
        
    let baseURL = "https://image.tmdb.org/t/p/w185"
    let posterPath = movie["poster_path"] as! String
    let posterURL = URL(string: baseURL + posterPath)
    
    posterView.af.setImage(withURL: posterURL!)
        
    let backdropPath = movie["backdrop_path"] as! String
    let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropView.af.setImage(withURL: backdropURL!)
    
    
}
}
