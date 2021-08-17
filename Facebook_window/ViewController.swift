//
//  ViewController.swift
//  Facebook_window
//
//  Created by Katerina Ulasik on 11.08.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginOutlet: UIButton!
    @IBOutlet weak var rememberMe: UILabel!
    @IBOutlet weak var someText2: UITextField!
    @IBOutlet weak var someText1: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginOutlet.layer.cornerRadius = loginOutlet.frame.size.width/19
        loginOutlet.layer.borderColor = UIColor.blue.cgColor
        loginOutlet.layer.borderWidth = 1.0
        
        loginOutlet.isUserInteractionEnabled = false
        someText1.delegate = self
        someText2.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let someText1IsEmpty = someText1.text?.isEmpty
        let someText2IsEmpty = someText2.text?.isEmpty
        
        if someText1IsEmpty == false, someText2IsEmpty == false {
            loginOutlet.isUserInteractionEnabled = true
        } else {
            loginOutlet.isUserInteractionEnabled = false
        }
     
    }

    
func forgotPassword(_ sender: Any) {
    }

func signUp(_ sender: Any) {
    }

//    extension ViewController: UITextFieldDelegate {
//        func textFieldDidEndEditing(_ textField: UITextField) {
////            if textField == someText1 {
////                print("LOGIN is \(textField.text ?? "NO value")")
////            } else if textField == someText2 {
////                print("PASSWORD is \(textField.text ?? "NO value")")
////            }
//            
//            let login = someText1.text ?? ""
//            let password = someText2.text ?? ""
//            
//            if login.isEmpty == false, password.isEmpty == false {
//                LOGIN.isUserInteractionEnabled = true
//            } else {
//                LOGIN.isUserInteractionEnabled = false
//            }
//        }
//    }
//    @IBDesignable
//    class RoundedButton: UIButton {
//
//        @IBInspectable var cornerRadius: CGFloat = 8
//        @IBInspectable var borderColor: UIColor? = .lightGray
//
//        override func draw(_ rect: CGRect) {
//            layer.cornerRadius = cornerRadius
//            layer.masksToBounds = true
//            layer.borderWidth = 1
//            layer.borderColor = borderColor?.cgColor
//
//        }
        
//    }
}
