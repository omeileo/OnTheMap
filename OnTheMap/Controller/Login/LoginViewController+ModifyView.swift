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
        loginButton.isEnabled = false
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
        usernameTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange (_ textField: UITextField)
    {
        if usernameTextField.hasText && passwordTextField.hasText
        {
            loginButton.isEnabled = true
        }
    }
}
