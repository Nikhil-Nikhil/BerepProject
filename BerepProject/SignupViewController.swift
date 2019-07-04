//
//  SignupViewController.swift
//  BerepProject
//
//  Created by User on 2019-07-04.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var UserConfirmPasswordtextfield: UITextField!
    @IBOutlet weak var UserPasswordtextfield: UITextField!
    @IBOutlet weak var UserMobileNumbertextfield: UITextField!
    @IBOutlet weak var UserNametextfield: UITextField!
    @IBOutlet weak var UserEmailtextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SignupButtonTapped(_ sender: Any) {
        
        let UserEmail = UserEmailtextfield.text
        let UserName = UserNametextfield.text
        let UserMobileNumber = UserMobileNumbertextfield.text
        let UserPassword = UserPasswordtextfield.text
        let UserConfirmPassword = UserConfirmPasswordtextfield.text
        // Check for empty Fields
        if (UserEmail!.isEmpty || UserName!.isEmpty || UserMobileNumber!.isEmpty || UserPassword!.isEmpty || UserConfirmPassword!.isEmpty)
        {
        // display alert message
            displayMyAlertMessage(usermessage: "All Fields are required")
            return
        }
        // check if password is equal confirm password
        if (UserPassword != UserConfirmPassword)
        {
            // display alert message
            displayMyAlertMessage(usermessage: "Password does'nt match Confirm Password")
            return
        }
        // Store data
        UserDefaults.standard.set(UserEmail, forKey: "UserEmail")
        UserDefaults.standard.set(UserName, forKey: "UserName")
        UserDefaults.standard.set(UserMobileNumber, forKey: "UserMobileNumber")
        UserDefaults.standard.set(UserPassword, forKey: "UserPassword")
        UserDefaults.standard.set(UserConfirmPassword, forKey: "UserConfirmPassword")
        UserDefaults.standard.synchronize()
        // alert message with confirmation
        
         var myAlert = UIAlertController(title: "Alert", message:"Signup is successful. Thank you!", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){
            action in
            self.dismiss(animated: true, completion: nil)
            
        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
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


