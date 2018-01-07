//
//  ErrorMessage.swift
//  OnTheMap
//
//  Created by Jase-Omeileo West on 1/7/18.
//  Copyright © 2018 Omeileo. All rights reserved.
//

import Foundation

enum ErrorMessage: String
{
    // Login Errors
    case loginFailure = "Could not connect to Udacity"
    case incorrectCredentials = "Username or Password Invalid"
    
    case locationDownloadFailure = "Student locations could not be downloaded at this time. Please try again."
    case locationUploadFailure = "Your post could not be posted at this time. Please try again."
}
