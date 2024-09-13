//
//  LoginButton.swift
//  IosLearningProject
//
//  Created by Presidio on 13/09/24.
//

import SwiftUI


struct ExpandedButton:View{
    let buttonAction:()->Void
    let buttonName:String
    var body: some View {
        Button(action: buttonAction, label: {
                        Text(buttonName)
                .frame(maxWidth: .infinity)
        }).buttonStyle(.borderedProminent).tint(Color("appGreen"))
    }
    
}
