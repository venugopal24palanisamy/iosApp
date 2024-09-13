//
//  LandingPage.swift
//  IosLearningProject
//
//  Created by Presidio on 12/09/24.
//

import SwiftUI

struct LandingPage:View{
    let onNavigate:(Screen)->Void
    var body: some View{
        VStack{
            Image("Image").resizable()
                .frame(width: 350, height: 350)
            VStack {
                Text("Hello").frame(maxWidth: .infinity, alignment: .center).font(.title).bold()
                Text("Welcome to the app where helping humans become happier & healthier!").frame(maxWidth: .infinity).multilineTextAlignment(.center).font(.system(size: 18))
                Spacer()
                ExpandedButton(buttonAction: {onNavigate(.login)},buttonName: "Log In")
            }.padding([.all],35)
            Spacer()
        }
    }
}


struct landingPage_Preview: PreviewProvider {
    static var previews: some View {
        LandingPage { Screen in
        
        }
    }
}
