//
//  ResultSecreen.swift
//  NumberGuessGame
//
//  Created by Delil Güç on 5.04.2023.
//

import UIKit

class ResultSecreen: UIViewController {
    @IBOutlet weak var Image: UIImageView!
    var result:Bool?
    @IBOutlet weak var LabelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Result Page"
        if result == true {
            LabelResult.text = "YOU WON :)"
            Image.image = UIImage(named: "happy")
        }
        else{
            LabelResult.text = "YOU LOST :)"
            Image.image = UIImage(named: "MainImage")
            
        }
    }
    
   
   

}
