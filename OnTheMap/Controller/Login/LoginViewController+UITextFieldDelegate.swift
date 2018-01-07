//
//  LoginViewController+UITextFieldDelegate.swift
//  OnTheMap
//
//  Created by Jase-Omeileo West on 1/7/18.
//  Copyright © 2018 Omeileo. All rights reserved.
//

import UIKit

extension LoginViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField
        {
            nextField.becomeFirstResponder()
        }
        else
        {
            textField.resignFirstResponder()
        }
        
        return false
    }
}
