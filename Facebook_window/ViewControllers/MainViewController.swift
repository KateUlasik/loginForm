//
//  ViewController.swift
//  Facebook_window
//
//  Created by Katerina Ulasik on 11.08.2021.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {
    static let LOGIN = "kate"
    static let PASSWORD = "123"
    
    @IBOutlet weak var loginOutlet: UIButton!
    @IBOutlet weak var rememberMe: UILabel!
    @IBOutlet weak var someText2: UITextField!
    @IBOutlet weak var someText1: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
        
        if someText1.text == Self.LOGIN, someText2.text == Self.PASSWORD {
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyboard.instantiateViewController(withIdentifier: "AboutViewControllerIdentifire")
            self.present(newViewController, animated: true, completion: nil)
            
            
            
        } else {
            let errorViewController = ErrorViewController(nibName: "ErrorViewController", bundle: nil)
            
            self.present(errorViewController, animated: true, completion: nil)
            
            if let text = self.someText1.text, text.isEmpty {
                errorViewController.configure(tittle: "ERROR", message: "LOGIN is empty")
            } else if let text = self.someText2.text, text.isEmpty {
                errorViewController.configure(tittle: "ERROR", message: "PASSWORD is empty")
            } else {
                DispatchQueue.main.async {
                    errorViewController.configure(tittle: "ERROR", message: "LOGIN OR PASSWORD INCORRECT")
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginOutlet.layer.cornerRadius = loginOutlet.frame.size.width/19
        loginOutlet.layer.borderColor = UIColor.blue.cgColor
        loginOutlet.layer.borderWidth = 1.0
        
        //        loginOutlet.isUserInteractionEnabled = false
        
        someText1.delegate = self
        someText2.delegate = self
    }
    
    func forgotPassword(_ sender: Any) {
    }
    
    func signUp(_ sender: Any) {
    }
    
}


