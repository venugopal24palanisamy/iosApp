//
//  HomeScreen.swift
//  IosLearningProject
//
//  Created by Presidio on 12/09/24.
//

import SwiftUI


// A wrapper to isolate HomeScreen navigation from the parent stack
struct HomeScreenWrapper: View {
    var body: some View {
        HomeScreen()
            .navigationBarBackButtonHidden(true) // Hide back button to prevent pop to landing
    }
}


struct HomeScreen : View {
    
    @State private var selctedIndex = 0
    
    var body: some View{
        TabView(selection: $selctedIndex) {
            VStack{
                Text("Home").navigationTitle("Home")
            }.tabItem{
               Text("Home")
                Image(systemName: "house.fill").renderingMode(.template)
            }.tag(0)
            
            VStack{
                Text("Profile").navigationTitle("Profile")
            }.tabItem{
                Text("Profile")
                Image(systemName: "person.fill").renderingMode(.template)
            }.tag(1)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
