//
//  LoginViewmodel.swift
//  IosLearningProject
//
//  Created by Presidio on 10/09/24.
//

import Foundation

class LoginViewmodel:ObservableObject{
    
    @Published var email :String = ""
    @Published var password :String = ""
    @Published var passwordError :String = ""
    @Published var emailError :String = ""
    
    func validate() -> Bool {
        
        let emailRegex = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$"
        let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegex)
       
        // Validate email
        if email.isEmpty {
            emailError = "Please enter email address"
          return false
        }else{
            emailError = ""
        }
        
    if !emailPred.evaluate(with: email) {
            emailError = "Please enter a valid email address"
        return false
        }else{
            emailError = ""
        }
        
       passwordError = "Please enter password"
        // Validate password
       if password.isEmpty {
                    return false
          
       }else{
           passwordError = ""
       }
       return true // No validation errors
    }
}
