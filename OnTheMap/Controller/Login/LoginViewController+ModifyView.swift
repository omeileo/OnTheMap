//
//  LoginViewController+ModifyView.swift
//  OnTheMap
//
//  Created by Jase-Omeileo West on 1/7/18.
//  Copyright © 2018 Omeileo. All rights reserved.
//

import UIKit

extension LoginViewController
{
    func setupInterface ()
    {
        makeFormElementsRound()
        configureFormFields()
        configureLoginButton()
        
        errorMessageLabel.isHidden = true
    }
    
    func makeFormElementsRound ()
    {
        passwordTextField.layer.cornerRadius = passwordTextField.frame.size.height / 2.0
        usernameTextField.clipsToBounds = true
        
        usernameTextField.layer.cornerRadius = usernameTextField.frame.size.height / 2.0
        passwordTextField.clipsToBounds = true
        
        loginButton.layer.cornerRadius = loginButton.frame.size.height / 2.0
        loginButton.clipsToBounds = true
    }
    
    func configureFormFields ()
    {
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        usernameTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingDidEnd)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingDidEnd)
    }
    
    func configureLoginButton ()
    {
        enableLoginButton(bool: false)
        
        loginButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        loginButton.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        loginButton.layer.shadowOpacity = 1.0
        loginButton.layer.shadowRadius = 10.0
        loginButton.layer.masksToBounds = false
    }
    
    func enableLoginButton (bool: Bool)
    {
        loginButton.isEnabled = bool
        loginButton.backgroundColor = bool == true ? UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) : UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.75)
        
    }
    
    @objc func textFieldDidChange (_ textField: UITextField)
    {
        enableLoginButton(bool: (usernameTextField.hasText && passwordTextField.hasText) ? true : false)
    }
}
