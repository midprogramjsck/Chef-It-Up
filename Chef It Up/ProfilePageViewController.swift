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

class ProfilePageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var profilePicture: UIImageView!
    
    
    
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
    
    @IBAction func onCameraButton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        
        if UIImagePickerController.isSourceTypeAvailable(.camera
            ){
            picker.sourceType = .camera
        } else {
            picker.sourceType = .photoLibrary
        }
        
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as! UIImage
        
        let size = CGSize(width: 300, height: 300)
        let scaledImage = image.af_imageScaled(to: size)
        
        profilePicture.image = scaledImage
        
        dismiss(animated: true, completion: nil)
        
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


