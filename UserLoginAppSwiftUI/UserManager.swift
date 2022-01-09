//
//  User.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 08.01.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var user = User()
    
    var isLogIn: Bool {
        user.isLogIn
    }
    
    var name: String {
        user.name
    }
    
    private init() {}
    
    init(user: User) {
        self.user = user
    }

    func logOut() {
        user.isLogIn = false
    }
    
    func logIn() {
        user.isLogIn = true
    }
}

struct User: Codable {
    var name = ""
    var isLogIn = false
}
