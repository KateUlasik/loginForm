//
//  AboutViewController.swift
//  Facebook_window
//
//  Created by Katerina Ulasik on 15.08.2021.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBAction func closeLogIn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
}

//extension AboutViewController: UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(frame: .zero)
//        cell.contentView.layer.borderWidth = 2
//        cell.contentView.layer.borderColor = UIColor.blue.cgColor
//
//        let label = UILabel(frame: .zero)
//        label.text = "Name of this person"
//        label.textColor = UIColor.black
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .green
//
//        cell.contentView.addSubview(label)
//
//
//        label.centerXAnchor.constraint(equalTo: cell.contentView.centerXAnchor).isActive = true
//        label.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor).isActive = true
//        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
//
//        return cell
//    }
//}

//    extension AboutViewController: UITableViewDelegate {
//        private func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//            return CGFloat (70 + indexPath.row + 115)
//        }
//    }

extension AboutViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->  Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AbotViewControllerIdentifire", for: indexPath)
        
        return cell
    }
}

extension AboutViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 152
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row) did select...")
    }
}
