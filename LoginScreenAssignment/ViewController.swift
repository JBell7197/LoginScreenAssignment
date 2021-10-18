//
//  ViewController.swift
//  LoginScreenAssignment
//
//  Created by Justin Bell on 10/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        
        
     
        
        if (emailTextField.text! == "Justin") && (passwordTextField.text! == "Bell") {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

            let controller = storyBoard.instantiateViewController(withIdentifier: "TableNavController")
            controller.modalPresentationStyle = .fullScreen

            self.present(controller, animated: true, completion: nil)
//          let secondVC = SecondViewController()
//          present(secondVC, animated: true)
        }
        else{
            print("Did not work")
        }
        
        
        
    }
    
}

