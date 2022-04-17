//
//  InfoViewController.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 17.04.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var infoOutlet: UILabel!
    @IBOutlet var hobbiesOutlet: UILabel!
    
    var info: String!
    var hobbies: [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var hobbiesResult = ""
        for hobbie in hobbies {
            hobbiesResult += "\(hobbie)\n"
        }
        
        infoOutlet.text = info
        hobbiesOutlet.text = hobbiesResult
        
        self.title = "Info"

    }

}
