//
//  CountTextView.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 09.01.2022.
//

import SwiftUI

struct CountTextView: View {
    @Binding var userName: String
    @Binding var color: Color
    
    var body: some View {
        Text("\(userName.count)")
            .foregroundColor(color)
    }
}

struct CountTextView_Previews: PreviewProvider {
    static var previews: some View {
        CountTextView(userName: .constant("Qwerty"), color: .constant(.green))
    }
}
