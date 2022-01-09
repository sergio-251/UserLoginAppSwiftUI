//
//  User.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 08.01.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isLogIn = false
    var name: String = ""

    func logOut() {
        isLogIn = false
    }
    
    func logIn() {
        isLogIn = true
    }
}
