//
//  PhotoViewController.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 17.04.2022.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet var imageOutlet: UIImageView!
    
    var imageString: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageOutlet.image = UIImage(named: imageString)
    }

}
