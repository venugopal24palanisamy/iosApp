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
            LandingPage(onNavigate: {screen in path.append(screen)}).navigationDestination(for: Screen.self){ screen in
                switch screen {
                case .home: HomeScreen()
                case .login: LoginScreen()
                case .landing: LandingPage(onNavigate: {screen in path.append(screen)})
                }
            }
        }
        
    }
}
