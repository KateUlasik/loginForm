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
    
//    extension MainViewController: UITextFieldDelegate {
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//            let login = someText1.text ?? ""
//            let password = someText2.text ?? ""
//
//            if login.isEmpty == false, password.isEmpty == false {
////                loginOutlet.isUserInteractionEnabled = true
//            } else {
////                loginOutlet.isUserInteractionEnabled = false
//            }
//
//            print("CALLED!!!")
//
//            return true
//        }
//    }
    
    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        let someText1IsEmpty = someText1.text?.isEmpty
//        let someText2IsEmpty = someText2.text?.isEmpty
//
//        if someText1IsEmpty == false, someText2IsEmpty == false {
//            loginOutlet.isUserInteractionEnabled = true
//        } else {
//            loginOutlet.isUserInteractionEnabled = false
//        }
//
//    }

    
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
//    extension MainViewController: UITextFieldDelegate {
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//            let login = someText1.text ?? ""
//            let password = someText2.text ?? ""
//
//            if login.isEmpty == false, password.isEmpty == false {
////                loginOutlet.isUserInteractionEnabled = true
//            } else {
////                loginOutlet.isUserInteractionEnabled = false
//            }
//
//            print("CALLED!!!")
//
//            return true
//        }
}


