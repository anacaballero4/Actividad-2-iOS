//
//  ViewController.swift
//  Actividad 2
//
//  Created by Ana Sofía  on 31/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Bienvenidos: UILabel!
    @IBOutlet weak var Questionmark: UILabel!
    @IBOutlet weak var Textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func GuessNumber(_ sender: UIButton) {
        let randomNumber = Int(arc4random_uniform(6)+1)
        Questionmark.text = String(randomNumber)
        
        if  Textfield.text == Questionmark.text{
            view.backgroundColor = UIColor.green
                Bienvenidos.text = "Es correcto"
                
            } else{
                view.backgroundColor = UIColor.red
                Bienvenidos.text = "Vuelve a intentarlo"
            }
        }
    }

