//
//  ProfilePageViewController.swift
//  Chef It Up
//
//  Created by Jay-son Alburg on 4/16/19.
//  Copyright © 2019 Jay'son Alburg. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class ProfilePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutFromProfile(_ sender: Any) {
        PFUser.logOutInBackground() { (error) in
            if (error != nil) {
                print(error.debugDescription)
                print(error!.localizedDescription)
            }
        }
            UserDefaults.standard.set(false, forKey: "userLoggedIn")
            self.performSegue(withIdentifier: "logoutSegue", sender: nil)
    }
    
        
    @IBAction func profileToHome(_ sender: Any) {
        self.performSegue(withIdentifier: "logoutSegue", sender: nil)
    }
    
        
    @IBAction func toFavorites(_ sender: Any) {
        self.performSegue(withIdentifier: "toFavorite", sender: nil)
    }
    
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


