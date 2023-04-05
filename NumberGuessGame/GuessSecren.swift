//
//  GuessSecren.swift
//  NumberGuessGame
//
//  Created by Delil Güç on 5.04.2023.
//

import UIKit

class GuessSecren: UIViewController {

    var randomNumber:Int?
    var Remain = 6
    @IBOutlet weak var LabelControl: UILabel!
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var RemainChance: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNumber  = Int(arc4random_uniform(100))
        print(randomNumber!)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // sayfa tetikleme
        if let dt = sender as? Bool{
            let nextview = segue.destination as! ResultSecreen // casting işlemi
            nextview.result = dt
        }
    }
    

    @IBAction func Guessit(_ sender: Any) {
        LabelControl.isHidden = false // labeli ortaya çıkarma
        Remain-=1
        if let data = TextField.text{
            if let guess = Int(data){
                
                // kalan hak kontrolüne göre işlemlerin yapılması
                if Remain > 0 {
                    if guess == randomNumber!{
                        let result = true
                        performSegue(withIdentifier: "GuesstoResult", sender: result) //// veri taşınımı ve sayfa değişimi
                    }
                    if guess > randomNumber! {
                        LabelControl.text = "Decrease"
                        RemainChance.text = " Reamining Chance: \(Remain)"
                    }
                    if guess < randomNumber! {
                        LabelControl.text = "Increase"
                        RemainChance.text = " Reamining Chance: \(Remain)"
                    }
                }
                else{
                    let result = false
                    performSegue(withIdentifier: "GuesstoResult", sender: result) // veri taşınımı ve sayfa değişimi
                    
                }
                TextField.text = "" // textfield alanını boş olmasını sağlama
            }
        }
    
    }
    

}
