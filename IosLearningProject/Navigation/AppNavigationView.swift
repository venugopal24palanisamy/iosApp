//
//  AppNavigationView.swift
//  IosLearningProject
//
//  Created by Presidio on 12/09/24.
//

import SwiftUI

struct AppNavigationView : View {
    @State private var path = [Screen]()
    var body: some View {
        NavigationStack(path: $path){
            if path.isEmpty {
                            // Check if email is available, navigate accordingly
                            let email = AppDefaults.getEmail().email
                            if email.isEmpty {
                                LandingPage(onNavigate: { screen in
                                    // Ensure only one instance of LandingPage is pushed
                                    if !path.contains(.landing) {
                                        path.append(screen)
                                    }
                                })
                            } else {
                                HomeScreenWrapper()
                            }
                        } else {
                            // Handle navigation based on existing path
                            LandingPage(onNavigate: { screen in path.append(screen) })
                                .navigationDestination(for: Screen.self) { screen in
                                    switch screen {
                                    case .login:
                                        LoginScreen(onLoginButtonClick: { screen in path.append(screen) })
                                    case .landing:
                                        LandingPage(onNavigate: { screen in path.append(screen) })
                                    case .homeScreen:
                                        HomeScreenWrapper()
                                    }
                                }
                        }
        }
    }
}
