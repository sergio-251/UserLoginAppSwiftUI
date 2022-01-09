//
//  RegisterButtonView.swift
//  UserLoginAppSwiftUI
//
//  Created by Sergey Efimov on 09.01.2022.
//

import SwiftUI

struct RegisterButtonView: View {
    @Binding var disabled: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("OK")
            }
        }
        .disabled(disabled)
    }
}

struct RegisterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterButtonView(disabled: .constant(true)) {}
    }
}
