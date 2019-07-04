//
//  ViewController.swift
//  BerepProject
//
//  Created by User on 2019-07-04.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet var LogoutButtonTapped: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let isUserloggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedin")
        if(!isUserloggedIn)
        {
        self.performSegue(withIdentifier: "LoginView", sender: self)
    }
}
}/*
    @IBAction func logoutbuttontapped(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isUserLoggedin")
        UserDefaults.standard.synchronize()
       // self.dismiss(animated: true, completion: nil)
         self.performSegue(withIdentifier: "LoginView", sender: self)
    }
}
*/
