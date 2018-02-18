//
//  LoginViewController.swift
//  Swiper_iOS
//
//  Created by Yuanping Song on 2/17/18.
//  Copyright © 2018 Yuanping Song. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuthUI
import FBSDKCoreKit
import FBSDKLoginKit

class LoginViewController: UIViewController, FBSDKLoginButtonDelegate {
    //@IBOutlet weak var loginButton: FBSDKButton!
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func viewWillDisappear(_ animated: Bool) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let loginButton = FBSDKLoginButton()
        loginButton.delegate = self
        loginButton.center = view.center
        
        self.view.addSubview(loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
        let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)

        Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                // ...
                return
            }
            // User is signed in
            let newViewController = ListingTableViewCell()
            self.navigationController?.pushViewController(newViewController, animated: true)
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
}
