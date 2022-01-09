//
//  ContentView.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 08.01.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
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
        user.isLogIn = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
