//
//  IosLearningProjectApp.swift
//  IosLearningProject
//
//  Created by Presidio on 03/09/24.
//

import SwiftUI
import SwiftData

@available(iOS 17, *)
@main
struct IosLearningProjectApp: App {

    var body: some Scene {
        WindowGroup {
            AppNavigationView()
        }
        .modelContainer(for: Places.self)
    }
}
