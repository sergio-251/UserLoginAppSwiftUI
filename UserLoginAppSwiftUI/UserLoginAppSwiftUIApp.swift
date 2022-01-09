//
//  UserLoginAppSwiftUIApp.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 08.01.2022.
//

import SwiftUI

@main
struct UserLoginAppSwiftUIApp: App {
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}
