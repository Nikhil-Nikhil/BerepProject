//
//  LoginViewController.swift
//  BerepProject
//
//  Created by User on 2019-07-04.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var UserPasswordtextfield: UITextField!
    @IBOutlet weak var UserEmailtextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginButtonTapped(_ sender: Any) {
        let UserEmail = UserEmailtextfield.text
        let UserPassword = UserPasswordtextfield.text
      let UserEmailStored =  UserDefaults.standard.string(forKey: "UserEmail")
        let UserPasswordStored = UserDefaults.standard.string(forKey: "UserPassword")
        if (UserEmailStored == UserEmail)
        {
            if(UserPasswordStored == UserPassword)
            {
                //login is successful
                UserDefaults.standard.set(true, forKey: "isUserLoggedin")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
            }
        
        
        }
        else{
            // display alert message
            displayMyAlertMessage(usermessage: "Invalid Email/ password")
            return
        }
    }
    func displayMyAlertMessage(usermessage : String)
    {
        var myAlert = UIAlertController(title: "Alert", message: usermessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
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


