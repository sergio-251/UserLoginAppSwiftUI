//
//  LogOutButtonView.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 09.01.2022.
//

import SwiftUI

struct LogOutButtonView: View {
    private let title = "Logout"
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("\(title)")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 50)
        .background(.blue)
        .cornerRadius(25)
        .overlay(RoundedRectangle(
            cornerRadius: 25).stroke(Color.gray, lineWidth: 4)
        )
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView() {}
    }
}
