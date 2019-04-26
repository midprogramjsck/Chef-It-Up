//
//  RecipieViewController.swift
//  Chef It Up
//
//  Created by Jay-son Alburg on 4/25/19.
//  Copyright © 2019 Jay'son Alburg. All rights reserved.
//
import UIKit
import Parse
import AlamofireImage

class RecipieViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var recipieTableView: UITableView!
    
    var recipes: [[String:Any]] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        recipieTableView.dataSource = self
        getRecipies()
        recipieTableView.reloadData()
        recipieTableView.estimatedRowHeight = 200
        recipieTableView.rowHeight = UITableView.automaticDimension

        // Do any additional setup after loading the view.
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
                let one = dataDict[0]
                let two = one["title"] as! String
                print(two)
                self.recipieTableView.reloadData()
            }
        }
        task.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeTableViewCell", for: indexPath) as! RecipeTableViewCell
        
        let recipe = recipes[indexPath.row]
        let title = recipe["title"] as! String
        let id = recipe["recipe_id"] as! String

        let imageURL = recipe["image_url"] as! String
        
        cell.titleLabel.text = title
        cell.id = id
        
        let posterUrl = URL(string: imageURL)
        var image = UIImage()
        
        cell.posterView.af_setImage(withURL: posterUrl!)
        //cell.posterView.image = image
        
        return cell
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
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
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
