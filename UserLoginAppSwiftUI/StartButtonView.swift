//
//  ButtonView.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 08.01.2022.
//

import SwiftUI

struct StartButtonView: View {
    @ObservedObject var timer: TimeCounter
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("\(timer.buttonTitle)")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 50)
        .background(.red)
        .cornerRadius(25)
        .overlay(RoundedRectangle(
            cornerRadius: 25).stroke(Color.gray, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(timer: TimeCounter()) {
            
        }
    }
}

