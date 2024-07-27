//
//  ContentView.swift
//  AppStorage
//
//  Created by Christopher Gonzalez on 2024-07-27.
//

import SwiftUI

struct ContentView: View {
    //MARK: LocalStorage with @AppStorage
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some View {
        VStack(spacing: 16) {
            Spacer()
            
            Image(systemName: isDarkMode ? "moon.fill" :"sun.max.fill")
                .foregroundStyle(isDarkMode ? .yellow : .orange)
                .font(.largeTitle)
            
            Text("Theme is: \( isDarkMode ? "Dark" : "Light")")
                
            Spacer()
            
            CustomButton(text: "Change Theme")
                .onTapGesture {
                    withAnimation(.easeIn) {
                        isDarkMode.toggle()
                    }
                    
                }
        }
        .preferredColorScheme( isDarkMode ? .dark: .light)
        .padding()
    }
}

#Preview {
    ContentView()
}
