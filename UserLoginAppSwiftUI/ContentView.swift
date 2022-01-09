//
//  ContentView.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 08.01.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.system(size: 40))
                .bold()
            Spacer()
            Text("\(timer.counter)")
                .font(.largeTitle)
                .bold()
            Spacer()
            StartButtonView(timer: timer) {
                timer.startTimer()
            }
            Spacer()
            LogOutButtonView() {
                logOut()
            }
        }
        .padding()
    }
    
    private func logOut() {
        userManager.user.isLogIn = false
        DataManager.shared.uploadData(userManager: userManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
