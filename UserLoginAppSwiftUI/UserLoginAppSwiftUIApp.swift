//
//  UserLoginAppSwiftUIApp.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 08.01.2022.
//

import SwiftUI

@main
struct UserLoginAppSwiftUIApp: App {
    private let user = DataManager.shared.loadData()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
