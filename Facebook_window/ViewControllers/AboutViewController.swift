//
//  AboutViewController.swift
//  Facebook_window
//
//  Created by Katerina Ulasik on 15.08.2021.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var activityButton: UIActivityIndicatorView!
    
    static let url = URL(string: "https://www.wolframcloud.com/obj/mby2007/katesobject")!
    
    @IBAction func closeLogIn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var tableView: UITableView!
    
    var items: [MyMetaData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        print("DEBUG: Loading started...")
        
        reloadFromServer()
        
    }
    
    //
    //
    @IBAction func reloadLocalButton(_ sender: Any) {
        reloadLokal()
    }
    @IBAction func reloadRemoteButton(_ sender: Any) {
        reloadFromServer()
    }
    
    func reloadFromServer() {
        self.tableView.isHidden = true
        self.activityButton.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            URLSession
                .shared
                .dataTask(with: AboutViewController.url, completionHandler: { data, response, error in
                    
                    if let data = data {
                        do {
                            let decoder = JSONDecoder()
                            let objects = try decoder.decode([MyMetaData].self, from: data)
                            
                            
                            DispatchQueue.main.async {
                                self.items = objects
                                self.tableView.reloadData()
                                
                                print("DEBUG: Loading ended...")
                                self.tableView.isHidden = false
                                self.activityButton.stopAnimating()
                                
                            }
                            
                        } catch {
                            print("Can't load  data...")
                        }
                    }
                })
                .resume()
        }
    }
    
    func reloadLokal() {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let objects = try decoder.decode([MyMetaData].self, from: data)
                
                self.items = objects
                self.tableView.reloadData()
                
            } catch {
                print("Cant't load data...")
            }
        } else {
            print("CURL doesn't exist...")
        }
    }
}


extension AboutViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->  Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutViewCellID", for: indexPath) as! AboutViewCell
        
        let item = items[indexPath.row]
        cell.configure(item: item)
        
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

