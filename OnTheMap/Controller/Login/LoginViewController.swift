//
//  LoginViewController.swift
//  OnTheMap
//
//  Created by Jase-Omeileo West on 1/6/18.
//  Copyright © 2018 Omeileo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        hideKeyboardWhenTappedOutside()
        subscribeToKeyboardNotifications()
        
        setupInterface()
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        
        unsubcribeFromKeyboardNotifcations()
    }
    
    override func keyboardWillShow(_ notification: Notification)
    {
        resetView()
        view.frame.origin.y -= (getKeyboardHeight(notification)/4)
    }
    
    @IBAction func login(_ sender: Any)
    {
    }
    
    @IBAction func signUp(_ sender: Any)
    {
    }
}

