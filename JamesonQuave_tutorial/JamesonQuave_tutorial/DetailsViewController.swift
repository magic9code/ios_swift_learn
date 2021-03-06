//
//  DetailsViewController.swift
//  JamesonQuave_tutorial
//
//  Created by Jian Wang on 8/26/15.
//  Copyright (c) 2015 Jian Wang. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var album: Album?
    
    @IBOutlet weak var albumCover: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    required init (coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = self.album?.title
        albumCover.image = UIImage(data: NSData(contentsOfURL: NSURL(string: self.album!.largeImageURL)!)!)
    }
    
    
}
