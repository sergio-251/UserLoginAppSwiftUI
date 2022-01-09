//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 03.06.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

class DataManager {
    
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func saveData(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func loadData() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func uploadData(userManager: UserManager) {
        userManager.user.isLogIn = false
        userManager.user.name = ""
        userData = nil
    }
}
