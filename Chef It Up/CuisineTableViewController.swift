//
//  CuisineTableViewController.swift
//  Chef It Up
//
//  Created by Jay-son Alburg on 4/15/19.
//  Copyright © 2019 Jay'son Alburg. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class CuisineTableViewController: UITableViewController {
    
    var recipes: [[String:Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getRecipies()
        tableView.reloadData()
    
    }
    
    func getRecipies() {
        let url = URL(string: "https://www.food2fork.com/api/search?key=622a08732c81506f03ecbd5c3c7d4095")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                let dataDict = dataDictionary["recipes"] as! [[String:Any]]
                self.recipes = dataDict
                let one = dataDict[0] as! [String:Any]
                let two = one["title"] as! String
                print(two)
                self.tableView.reloadData()
            }
        }
        task.resume()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return recipes.count
    }

    @IBAction func onProfileButton(_ sender: Any) {
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {
            self.performSegue(withIdentifier: "profileFound", sender: nil)
        } else if UserDefaults.standard.bool(forKey: "userLoggedIn") == false {
            self.performSegue(withIdentifier: "noProfileFound", sender: nil)
        }
    }
    
    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        delegate.window?.rootViewController = loginViewController
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeTableViewCell", for: indexPath) as! RecipeTableViewCell
        
        let recipe = recipes[indexPath.row]
        let title = recipe["title"] as! String
        let ingredients = recipe["image_url"] as! String
    
        cell.titleLabel.text = title
        
        let baseUrl = "https://www.food2fork.com/api/search?key=2ffae2ced18c0207078d5f05bf64ef42"
        let posterPath = recipe["image_url"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        //cell.posterView.af_setImage(withURL: posterUrl!)
    
        return cell
    }
}
