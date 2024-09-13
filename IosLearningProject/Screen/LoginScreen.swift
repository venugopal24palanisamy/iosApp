//
//  ContentView.swift
//  IosLearningProject
//
//  Created by Presidio on 03/09/24.
//

import SwiftUI
struct LoginScreen: View {
    
    @State private var isLoading = false
    @FocusState private var emailFieldIsFocused: Bool
    @FocusState private var passwordFieldIsFocused: Bool
    @ObservedObject var loginViewModel = LoginViewmodel()
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25).fill(.white)
            VStack {
                Text("Login").frame(maxWidth: .infinity, alignment: .center).font(.title).bold()
                Spacer(minLength: 20)
                Text("User name (email address)").frame(maxWidth: .infinity, alignment: .leading).font(.body).bold()
                Group{
                    TextField(
                        "User name (email address)",
                        text: $loginViewModel.email
                    ).onSubmit {}
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true).focused($emailFieldIsFocused).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(emailFieldIsFocused ? Color("appGreen") : Color.secondary, lineWidth: 1)
                        ).tint(Color("appGreen"))
                    
                    if (!loginViewModel.emailError.isEmpty){
                        Text(loginViewModel.emailError).frame(maxWidth: .infinity, alignment: .leading).font(.body).bold().foregroundColor(.red)
                    }
                }
                
                Spacer(minLength: 20)
                Text("Password").frame(maxWidth: .infinity, alignment: .leading).font(.body).bold()
                TextField(
                    "Password",
                    text: $loginViewModel.password
                ).tint(Color("appGreen"))
                    .onSubmit {
                    }.focused($passwordFieldIsFocused)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(passwordFieldIsFocused ? Color("appGreen") : Color.secondary, lineWidth: 1)
                    )
                
                if (!loginViewModel.passwordError.isEmpty){
                    Text(loginViewModel.passwordError).frame(maxWidth: .infinity, alignment: .leading).font(.body).bold().foregroundColor(.red)
                }
                Spacer(minLength: 20)
                Group{
                    HStack{
                        Button("Forget Password?"){}.frame(maxWidth: .infinity).font(.body).bold()}.frame(maxWidth: .infinity).tint(Color("appGreen"))
                    ExpandedButton(buttonAction: {buttonAction()},buttonName: "Log In")
                }
            }.padding([.all],35).textFieldStyle(.roundedBorder)
        }.frame(height: 250).padding([.all],15).shadow(radius: 10).navigationBarBackButtonHidden(true)
    }
    
    func buttonAction() {
        if (loginViewModel.validate()){}
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
