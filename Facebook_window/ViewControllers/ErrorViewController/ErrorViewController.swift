//
//  ErrorViewController.swift
//  Facebook_window
//
//  Created by Katerina Ulasik on 03.09.2021.
//

import UIKit

class ErrorViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var tittleLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure(tittle: "Unknown tittle", message: "Unknown message")
    }

    func configure(tittle: String, message: String) {
        tittleLable.text = tittle
        messageLabel.text = message
        
    }

   
    @IBAction func tryAgainButton(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    
}
