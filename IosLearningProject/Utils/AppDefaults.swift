//
//  AppDefaults.swift
//  IosLearningProject
//
//  Created by Presidio on 17/09/24.
//

import Foundation

struct AppDefaults {
    static let emailKey = "email"
    static let userSessionKey = "com.save.usersession"
    struct UserDetails {
        let email: String
    }
    
    static func save(email: String) {
        UserDefaults.standard.set([emailKey: email], forKey: userSessionKey)
    }

    static func getEmail() -> UserDetails {
        guard let data = UserDefaults.standard.value(forKey: userSessionKey) as? [String: String],
                      let email = data[emailKey] else {
                    return UserDetails(email: "")
                }
                return UserDetails(email: email)
    }

    // Clears the user's data from UserDefaults
    static func clearUserData() {
        UserDefaults.standard.removeObject(forKey: userSessionKey)
    }
}
