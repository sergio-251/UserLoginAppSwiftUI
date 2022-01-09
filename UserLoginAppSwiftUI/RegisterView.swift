//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @State private var buttonDisabled = true
    @State private var countColor = Color.red
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                    .onChange(of: userName) {currentName in
                        if isValidName(currentName) {
                            buttonDisabled = false
                            countColor = Color.green
                        } else {
                            buttonDisabled = true
                            countColor = Color.red
                        }
                    }
                CountTextView(
                    userName: $userName,
                    color: $countColor
                )
               
            }
            RegisterButtonView(disabled: $buttonDisabled) {
                registerUser()
            }
        }
        .padding()
    }
    
    private func registerUser() {
        if isValidName(userName) {
            userManager.user.name = userName
            userManager.user.isLogIn = true
            DataManager.shared.saveData(user: userManager.user)
        }
    }
    
    private func isValidName(_ name: String) -> Bool {
        name.count > 2
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
