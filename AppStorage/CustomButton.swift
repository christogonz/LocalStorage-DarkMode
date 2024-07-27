//
//  CustomButton.swift
//  AppStorage
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI

struct CustomButton: View {
    var text: String = "Text Here"
    var gradient: Array<Color> = [Color(.blue), Color(.purple)]
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
                    .foregroundStyle(.white)
            }
            .frame(width: 335, height: 50)
            .background(LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing))
            .clipShape(.rect(cornerRadius: 12))
        }
    }
}

#Preview {
    CustomButton()
}
