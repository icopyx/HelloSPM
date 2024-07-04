//
//  ContentView.swift
//  HelloSPM
//
//  Created by Langpeu on 7/4/24.
//

import SwiftUI
import KeychainSwift


struct ContentView: View {
    @State private var keyText: String = ""

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(keyText)
        }
        .padding()
        .onAppear() {
            let keychain = KeychainSwift()
            keyText = keychain.get("my key")!
            if keyText != "" {
                keychain.set("Hello ++ world", forKey: "my key")
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
