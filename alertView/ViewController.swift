//
//  ViewController.swift
//  alertView
//
//  Created by R94 on 20/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userNameTaxtFild: UITextField!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var passWordTextFild: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }


    @IBAction func LogInButtonAction(_ sender: UIButton) {
        
        if userNameTaxtFild.text == ""
        {
            showalert(tital: "Enter Your UserName ")
        }
        else if passWordTextFild.text == ""
        {
            showalert(tital: "Enter Your PassWord ")

        }
        else if userNameTaxtFild.text == "" &&  passWordTextFild.text == ""
        {
            showalert(tital: "Enter Your UserName & PassWord  ")
        }
                    
        else {
            showalert(tital:"")
        }

    }
    func showalert(tital:String)
    {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
   
}

